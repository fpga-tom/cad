-------------------------------------------------------------------------------
-- Title      : all digital receiver
-- Project    : 
-------------------------------------------------------------------------------
-- File       : refgen.vhd
-- Author     : tomas  <tomas@fedora>
-- Company    : 
-- Created    : 2015-12-22
-- Last update: 2015-12-22
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: reference signal generator
-------------------------------------------------------------------------------
-- Copyright (c) 2015 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2015-12-22  1.0      tomas   Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity refgen is
  port (

    -- ports to "refgen_tx_1"
    tx_pll_refclk    : in  std_logic_vector(0 downto 0)  := (others => '0');
    tx_serial_data   : out std_logic_vector(0 downto 0);
    tx_parallel_data : in  std_logic_vector(43 downto 0) := (others => '0');
    tx_std_coreclkin : in  std_logic_vector(0 downto 0)  := (others => '0');
    tx_std_clkout    : out std_logic_vector(0 downto 0);

    -- ports to "refgen_reconfig_1"
    reconfig_busy             : out std_logic;
    mgmt_clk_clk              : in  std_logic                     := '0';
    mgmt_rst_reset            : in  std_logic                     := '0';
    reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)  := (others => '0');
    reconfig_mgmt_read        : in  std_logic                     := '0';
    reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);
    reconfig_mgmt_waitrequest : out std_logic;
    reconfig_mgmt_write       : in  std_logic                     := '0';
    reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');

    -- ports to "refgen_reset_1"
    clock      : in  std_logic                    := '0';
    reset      : in  std_logic                    := '0';
    tx_ready   : out std_logic_vector(0 downto 0);
    pll_select : in  std_logic_vector(0 downto 0) := (others => '0'));

end;

architecture structural of refgen is

  -- outputs of "refgen_tx_1"
  signal pll_locked         : std_logic_vector(0 downto 0);
  signal tx_cal_busy        : std_logic_vector(0 downto 0);
  signal reconfig_from_xcvr : std_logic_vector(91 downto 0);

  -- outputs of "refgen_reconfig_1"
  signal reconfig_to_xcvr : std_logic_vector(139 downto 0);

  -- outputs of "refgen_reset_1"
  signal pll_powerdown   : std_logic_vector(0 downto 0);
  signal tx_analogreset  : std_logic_vector(0 downto 0);
  signal tx_digitalreset : std_logic_vector(0 downto 0);
  component refgen_tx is
    port (
      pll_powerdown      : in  std_logic_vector(0 downto 0)   := (others => '0');
      tx_analogreset     : in  std_logic_vector(0 downto 0)   := (others => '0');
      tx_digitalreset    : in  std_logic_vector(0 downto 0)   := (others => '0');
      tx_pll_refclk      : in  std_logic_vector(0 downto 0)   := (others => '0');
      tx_serial_data     : out std_logic_vector(0 downto 0);
      pll_locked         : out std_logic_vector(0 downto 0);
      tx_parallel_data   : in  std_logic_vector(43 downto 0)  := (others => '0');
      tx_std_coreclkin   : in  std_logic_vector(0 downto 0)   := (others => '0');
      tx_std_clkout      : out std_logic_vector(0 downto 0);
      tx_cal_busy        : out std_logic_vector(0 downto 0);
      reconfig_to_xcvr   : in  std_logic_vector(139 downto 0) := (others => '0');
      reconfig_from_xcvr : out std_logic_vector(91 downto 0));
  end component refgen_tx;

  component refgen_reconfig is
    port (
      reconfig_busy             : out std_logic;
      mgmt_clk_clk              : in  std_logic                     := '0';
      mgmt_rst_reset            : in  std_logic                     := '0';
      reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)  := (others => '0');
      reconfig_mgmt_read        : in  std_logic                     := '0';
      reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);
      reconfig_mgmt_waitrequest : out std_logic;
      reconfig_mgmt_write       : in  std_logic                     := '0';
      reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');
      reconfig_to_xcvr          : out std_logic_vector(139 downto 0);
      reconfig_from_xcvr        : in  std_logic_vector(91 downto 0) := (others => '0'));
  end component refgen_reconfig;

  component refgen_reset is
    port (
      clock           : in  std_logic                    := '0';
      reset           : in  std_logic                    := '0';
      pll_powerdown   : out std_logic_vector(0 downto 0);
      tx_analogreset  : out std_logic_vector(0 downto 0);
      tx_digitalreset : out std_logic_vector(0 downto 0);
      tx_ready        : out std_logic_vector(0 downto 0);
      pll_locked      : in  std_logic_vector(0 downto 0) := (others => '0');
      pll_select      : in  std_logic_vector(0 downto 0) := (others => '0');
      tx_cal_busy     : in  std_logic_vector(0 downto 0) := (others => '0'));
  end component refgen_reset;
begin
  refgen_tx_1 : component refgen_tx
    port map (
      pll_powerdown      => pll_powerdown,
      tx_analogreset     => tx_analogreset,
      tx_digitalreset    => tx_digitalreset,
      tx_pll_refclk      => tx_pll_refclk,
      tx_serial_data     => tx_serial_data,
      pll_locked         => pll_locked,
      tx_parallel_data   => tx_parallel_data,
      tx_std_coreclkin   => tx_std_coreclkin,
      tx_std_clkout      => tx_std_clkout,
      tx_cal_busy        => tx_cal_busy,
      reconfig_to_xcvr   => reconfig_to_xcvr,
      reconfig_from_xcvr => reconfig_from_xcvr);

  refgen_reconfig_1 : component refgen_reconfig
    port map (
      reconfig_busy             => reconfig_busy,
      mgmt_clk_clk              => mgmt_clk_clk,
      mgmt_rst_reset            => mgmt_rst_reset,
      reconfig_mgmt_address     => reconfig_mgmt_address,
      reconfig_mgmt_read        => reconfig_mgmt_read,
      reconfig_mgmt_readdata    => reconfig_mgmt_readdata,
      reconfig_mgmt_waitrequest => reconfig_mgmt_waitrequest,
      reconfig_mgmt_write       => reconfig_mgmt_write,
      reconfig_mgmt_writedata   => reconfig_mgmt_writedata,
      reconfig_to_xcvr          => reconfig_to_xcvr,
      reconfig_from_xcvr        => reconfig_from_xcvr);

  refgen_reset_1 : component refgen_reset
    port map (
      clock           => clock,
      reset           => reset,
      pll_powerdown   => pll_powerdown,
      tx_analogreset  => tx_analogreset,
      tx_digitalreset => tx_digitalreset,
      tx_ready        => tx_ready,
      pll_locked      => pll_locked,
      pll_select      => pll_select,
      tx_cal_busy     => tx_cal_busy);
end;


