-------------------------------------------------------------------------------
-- Title      : all digital receiver
-- Project    : 
-------------------------------------------------------------------------------
-- File       : channelizer.vhd
-- Author     : tomas  <tomas@fedora>
-- Company    : 
-- Created    : 2015-12-24
-- Last update: 2015-12-26
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: channelizer
-------------------------------------------------------------------------------
-- Copyright (c) 2015 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2015-12-24  1.0      tomas   Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity channelizer is
  generic (
    num_channels : integer := 20;
    bit_width    : integer := 10
    );
  port (

    -- global ports
    clk     : in std_logic := '0';
    reset_n : in std_logic := '0';

    -- ports to "channelizer_nco_1"
    clken    : in std_logic := '0';
    chn_data : in std_logic_vector(num_channels-1 downto 0);

    -- ports to "channelizer_fir_1"
    out_data         : out std_logic_vector(25 downto 0);
    ast_source_valid : out std_logic
    );

end;

architecture structural of channelizer is
  component channelizer_nco is
    port (
      clk         : in  std_logic                     := '0';
      clken       : in  std_logic                     := '0';
      phi_inc_i   : in  std_logic_vector(31 downto 0) := (others => '0');
      phase_mod_i : in  std_logic_vector(19 downto 0) := (others => '0');
      fsin_o      : out std_logic_vector(9 downto 0);
      out_valid   : out std_logic;
      reset_n     : in  std_logic                     := '0');
  end component channelizer_nco;

  component channelizer_fir is
    port (
      clk              : in  std_logic                      := '0';
      reset_n          : in  std_logic                      := '0';
      ast_sink_data    : in  std_logic_vector(199 downto 0) := (others => '0');
      ast_sink_valid   : in  std_logic                      := '0';
      ast_sink_error   : in  std_logic_vector(1 downto 0)   := (others => '0');
      ast_source_data  : out std_logic_vector(25 downto 0);
      ast_source_valid : out std_logic;
      ast_source_error : out std_logic_vector(1 downto 0));
  end component channelizer_fir;

  component channelizer_cic is
    port (
      in_error  : in  std_logic_vector(1 downto 0)  := (others => '0');
      in_valid  : in  std_logic                     := '0';
      in_ready  : out std_logic;
      in_data   : in  std_logic_vector(25 downto 0) := (others => '0');
      out_data  : out std_logic_vector(25 downto 0);
      out_error : out std_logic_vector(1 downto 0);
      out_valid : out std_logic;
      out_ready : in  std_logic                     := '0';
      clk       : in  std_logic                     := '0';
      reset_n   : in  std_logic);
  end component channelizer_cic;

  type fsin_o_t is array (integer range <>) of std_logic_vector(9 downto 0);
  type out_valid_t is array (integer range <>) of std_logic;
  type phase_mod_i_t is array (integer range 0 to num_channels-1) of std_logic_vector(19 downto 0);
  signal fsin_o                                       : fsin_o_t(num_channels-1 downto 0);
  signal out_valid                                    : out_valid_t(num_channels-1 downto 0);
  signal ast_sink_data                                : std_logic_vector(199 downto 0);
  signal ast_sink_valid, ast_source_valid_i           : std_logic;
  signal ast_sink_error                               : std_logic_vector(1 downto 0);
  signal ast_source_error                             : std_logic_vector(1 downto 0);
  signal ast_source_data, in_data                     : std_logic_vector(25 downto 0);
  signal in_error, out_error                          : std_logic_vector(1 downto 0);
  signal in_valid, out_ready, in_ready, out_valid_cic : std_logic := '0';
  signal phase_mod_i : phase_mod_i_t := (
    "00000000000000000000", "10011110101110000101", "00111101011100001010",
    "11011100001010001111", "01111010111000010100", "00011001100110011001",
    "10111000010100011110", "01010111000010100011", "11110101110000101000",
    "10010100011110101110", "00110011001100110011", "11010001111010111000",
    "01110000101000111101", "00001111010111000010", "10101110000101000111",
    "01001100110011001100", "11101011100001010001", "10001010001111010111",
    "00101000111101011100", "11000111101011100001");

  constant phi_inc_i : std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(1717986918, 32));
begin

  chann_nco : for i in 0 to num_channels-1 generate
    channelizer_nco_1 : component channelizer_nco
      port map (
        clk         => clk,
        clken       => clken,
        phi_inc_i   => phi_inc_i,
        phase_mod_i => phase_mod_i(i),
        fsin_o      => fsin_o(i),
        out_valid   => out_valid(i),
        reset_n     => reset_n);

    --ast_sink_data((i+1)*bit_width-1 downto i*bit_width+10) <= std_logic_vector(to_unsigned(i, 5));
    -- purpose: input multiplexer
    -- type   : combinational
    -- inputs : chn_data
    -- outputs: fsin_o
    mux : process (chn_data) is
    begin  -- process mux
      case chn_data(i) is
        when '0'    => ast_sink_data((19-i+1)*bit_width-1 downto (19-i)*bit_width) <= (not fsin_o(i)) + '1';
        when '1'    => ast_sink_data((19-i+1)*bit_width-1 downto (19-i)*bit_width) <= fsin_o(i);
        when others => ast_sink_data((19-i+1)*bit_width-1 downto (19-i)*bit_width) <= fsin_o(i);
      end case;
    end process mux;

  end generate chann_nco;

  ast_sink_valid   <= clken;
  ast_sink_error   <= "00";
  in_error         <= "00";
  in_valid         <= ast_source_valid_i;
  ast_source_valid <= ast_source_valid_i;
  in_data          <= ast_source_data;
  out_ready        <= '1';

  channelizer_fir_1 : component channelizer_fir
    port map (
      clk              => clk,
      reset_n          => reset_n,
      ast_sink_data    => ast_sink_data,
      ast_sink_valid   => ast_sink_valid,
      ast_sink_error   => ast_sink_error,
      ast_source_data  => ast_source_data,
      ast_source_valid => ast_source_valid_i,
      ast_source_error => ast_source_error);

  channelizer_cic_1 : component channelizer_cic
    port map (
      in_error  => in_error,
      in_valid  => in_valid,
      in_ready  => in_ready,
      in_data   => in_data,
      out_data  => out_data,
      out_error => out_error,
      out_valid => out_valid_cic,
      out_ready => out_ready,
      clk       => clk,
      reset_n   => reset_n);
end;
