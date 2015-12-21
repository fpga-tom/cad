-------------------------------------------------------------------------------
-- Title      : all digital receiver
-- Project    : 
-------------------------------------------------------------------------------
-- File       : C5G.vhd
-- Author     : tomas  <tomas@fedora>
-- Company    : 
-- Created    : 2015-12-19
-- Last update: 2015-12-20
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: all digital receiver top module
-------------------------------------------------------------------------------
-- Copyright (c) 2015 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2015-12-19  1.0      tomas   Created
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity C5G is
  port(
    -- //////////// CLOCK //////////
    CLOCK_125_p  : in std_logic;
    CLOCK_50_B5B : in std_logic;
    CLOCK_50_B6A : in std_logic;
    CLOCK_50_B7A : in std_logic;
    CLOCK_50_B8A : in std_logic;

    -- //////////// LED //////////
    LEDG : out std_logic_vector(7 downto 0);
    LEDR : out std_logic_vector(9 downto 0);

    -- //////////// KEY //////////
    CPU_RESET_n : in std_logic;
    KEY         : in std_logic_vector(3 downto 0);

    -- //////////// I2C for Audio/HDMI-TX/Si5338/HSMC //////////
    I2C_SCL : out   std_logic;
    I2C_SDA : inout std_logic;

    -- //////////// Uart to USB //////////
    UART_RX : in  std_logic;
    UART_TX : out std_logic;

    -- //////////// HSMC; HSMC connect to XTS - Transceiver to SMA //////////
    CLKIN_P  : in  std_logic_vector(2 downto 1);
    CLKIN0   : in  std_logic;
    CLKOUT_P : out std_logic_vector(2 downto 1);
    CLKOUT0  : out std_logic;
    RX_P     : in  std_logic_vector(3 downto 0);
    TX_P     : out std_logic_vector(3 downto 0)
    );



end;

architecture structural of C5G is

  component xcvr is
    port (
      clock                     : in  std_logic                     := '0';
      reset                     : in  std_logic                     := '0';
      tx_ready                  : out std_logic_vector(0 downto 0);
      pll_select                : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_ready                  : out std_logic_vector(0 downto 0);
      reconfig_busy             : out std_logic;
      mgmt_clk_clk              : in  std_logic                     := '0';
      mgmt_rst_reset            : in  std_logic                     := '0';
      reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)  := (others => '0');
      reconfig_mgmt_read        : in  std_logic                     := '0';
      reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);
      reconfig_mgmt_waitrequest : out std_logic;
      reconfig_mgmt_write       : in  std_logic                     := '0';
      reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');
      tx_pll_refclk             : in  std_logic_vector(0 downto 0)  := (others => '0');
      tx_serial_data            : out std_logic_vector(0 downto 0);
      rx_cdr_refclk             : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_pma_clkout             : out std_logic_vector(0 downto 0);
      rx_serial_data            : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_set_locktodata         : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_set_locktoref          : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_is_lockedtoref         : out std_logic_vector(0 downto 0);
      tx_parallel_data          : in  std_logic_vector(43 downto 0) := (others => '0');
      rx_parallel_data          : out std_logic_vector(63 downto 0);
      tx_std_coreclkin          : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_std_coreclkin          : in  std_logic_vector(0 downto 0)  := (others => '0');
      tx_std_clkout             : out std_logic_vector(0 downto 0);
      rx_std_clkout             : out std_logic_vector(0 downto 0));
  end component xcvr;
  signal clock                     : std_logic                     := '0';
  signal reset                     : std_logic                     := '0';
  signal tx_ready                  : std_logic_vector(0 downto 0);
  signal pll_select                : std_logic_vector(0 downto 0)  := (others => '0');
  signal rx_ready                  : std_logic_vector(0 downto 0);
  signal reconfig_busy             : std_logic;
  signal mgmt_clk_clk              : std_logic                     := '0';
  signal mgmt_rst_reset            : std_logic                     := '0';
  signal reconfig_mgmt_address     : std_logic_vector(6 downto 0)  := (others => '0');
  signal reconfig_mgmt_read        : std_logic                     := '0';
  signal reconfig_mgmt_readdata    : std_logic_vector(31 downto 0);
  signal reconfig_mgmt_waitrequest : std_logic;
  signal reconfig_mgmt_write       : std_logic                     := '0';
  signal reconfig_mgmt_writedata   : std_logic_vector(31 downto 0) := (others => '0');
  signal tx_pll_refclk             : std_logic_vector(0 downto 0)  := (others => '0');
  signal tx_serial_data            : std_logic_vector(0 downto 0);
  signal rx_cdr_refclk             : std_logic_vector(0 downto 0)  := (others => '0');
  signal rx_pma_clkout             : std_logic_vector(0 downto 0);
  signal rx_serial_data            : std_logic_vector(0 downto 0)  := (others => '0');
  signal rx_set_locktodata         : std_logic_vector(0 downto 0)  := (others => '0');
  signal rx_set_locktoref          : std_logic_vector(0 downto 0)  := (others => '0');
  signal rx_is_lockedtoref         : std_logic_vector(0 downto 0);
  signal tx_parallel_data          : std_logic_vector(43 downto 0) := (others => '0');
  signal rx_parallel_data          : std_logic_vector(63 downto 0);
  signal tx_std_coreclkin          : std_logic_vector(0 downto 0)  := (others => '0');
  signal rx_std_coreclkin          : std_logic_vector(0 downto 0)  := (others => '0');
  signal tx_std_clkout             : std_logic_vector(0 downto 0);
  signal rx_std_clkout             : std_logic_vector(0 downto 0);
begin

  clock                         <= CLKIN_P(1);
  mgmt_clk_clk                  <= CLKIN_P(1);
  reset                         <= not CPU_RESET_n;
  mgmt_rst_reset                <= not CPU_RESET_n;
  pll_select(0)                 <= '0';
  tx_pll_refclk(0)              <= CLKIN_P(1);
  rx_cdr_refclk(0)              <= CLKIN_P(1);
  tx_parallel_data(20 downto 0) <= "101010101001010101010";
  rx_serial_data(0)             <= RX_P(0);
  TX_P(0)                       <= tx_serial_data(0);
  tx_std_coreclkin              <= tx_std_clkout;
  rx_std_coreclkin              <= rx_std_clkout;

  xcvr_1 : component xcvr
    port map (
      clock                     => clock,
      reset                     => reset,
      tx_ready                  => tx_ready,
      pll_select                => pll_select,
      rx_ready                  => rx_ready,
      reconfig_busy             => reconfig_busy,
      mgmt_clk_clk              => mgmt_clk_clk,
      mgmt_rst_reset            => mgmt_rst_reset,
      reconfig_mgmt_address     => reconfig_mgmt_address,
      reconfig_mgmt_read        => reconfig_mgmt_read,
      reconfig_mgmt_readdata    => reconfig_mgmt_readdata,
      reconfig_mgmt_waitrequest => reconfig_mgmt_waitrequest,
      reconfig_mgmt_write       => reconfig_mgmt_write,
      reconfig_mgmt_writedata   => reconfig_mgmt_writedata,
      tx_pll_refclk             => tx_pll_refclk,
      tx_serial_data            => tx_serial_data,
      rx_cdr_refclk             => rx_cdr_refclk,
      rx_pma_clkout             => rx_pma_clkout,
      rx_serial_data            => rx_serial_data,
      rx_set_locktodata         => rx_set_locktodata,
      rx_set_locktoref          => rx_set_locktoref,
      rx_is_lockedtoref         => rx_is_lockedtoref,
      tx_parallel_data          => tx_parallel_data,
      rx_parallel_data          => rx_parallel_data,
      tx_std_coreclkin          => tx_std_coreclkin,
      rx_std_coreclkin          => rx_std_coreclkin,
      tx_std_clkout             => tx_std_clkout,
      rx_std_clkout             => rx_std_clkout);

end structural;
