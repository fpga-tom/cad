-------------------------------------------------------------------------------
-- Title      : all digital receiver
-- Project    : 
-------------------------------------------------------------------------------
-- File       : xcvr.vhd
-- Author     : tomas  <tomas@fedora>
-- Company    : 
-- Created    : 2015-12-19
-- Last update: 2015-12-19
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: sdr receiver
-------------------------------------------------------------------------------
-- Copyright (c) 2015 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2015-12-19  1.0      tomas   Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity xcvr is

  port (

    -- ports to "reset_1"
    clock      : in  std_logic                    := '0';
    reset      : in  std_logic                    := '0';
    tx_ready   : out std_logic_vector(0 downto 0);
    pll_select : in  std_logic_vector(0 downto 0) := (others => '0');
    rx_ready   : out std_logic_vector(0 downto 0);

    -- ports to "reconfig_1"
    reconfig_busy             : out std_logic;
    mgmt_clk_clk              : in  std_logic                     := '0';
    mgmt_rst_reset            : in  std_logic                     := '0';
    reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)  := (others => '0');
    reconfig_mgmt_read        : in  std_logic                     := '0';
    reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);
    reconfig_mgmt_waitrequest : out std_logic;
    reconfig_mgmt_write       : in  std_logic                     := '0';
    reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');

    -- ports to "rx_1"
    tx_pll_refclk     : in  std_logic_vector(0 downto 0)  := (others => '0');
    tx_serial_data    : out std_logic_vector(0 downto 0);
    rx_cdr_refclk     : in  std_logic_vector(0 downto 0)  := (others => '0');
    rx_pma_clkout     : out std_logic_vector(0 downto 0);
    rx_serial_data    : in  std_logic_vector(0 downto 0)  := (others => '0');
    rx_set_locktodata : in  std_logic_vector(0 downto 0)  := (others => '0');
    rx_set_locktoref  : in  std_logic_vector(0 downto 0)  := (others => '0');
    rx_is_lockedtoref : out std_logic_vector(0 downto 0);
    tx_parallel_data  : in  std_logic_vector(43 downto 0) := (others => '0');
    rx_parallel_data  : out std_logic_vector(63 downto 0);
    tx_std_coreclkin  : in  std_logic_vector(0 downto 0)  := (others => '0');
    rx_std_coreclkin  : in  std_logic_vector(0 downto 0)  := (others => '0');
    tx_std_clkout     : out std_logic_vector(0 downto 0);
    rx_std_clkout     : out std_logic_vector(0 downto 0));

end;


architecture structural of xcvr is

  -- outputs of "reset_1"
  signal pll_powerdown   : std_logic_vector(0 downto 0);
  signal tx_analogreset  : std_logic_vector(0 downto 0);
  signal tx_digitalreset : std_logic_vector(0 downto 0);
  signal rx_analogreset  : std_logic_vector(0 downto 0);
  signal rx_digitalreset : std_logic_vector(0 downto 0);

  -- outputs of "reconfig_1"
  signal reconfig_to_xcvr : std_logic_vector(139 downto 0);

  -- outputs of "rx_1"
  signal pll_locked         : std_logic_vector(0 downto 0);
  signal rx_is_lockedtodata : std_logic_vector(0 downto 0);
  signal tx_cal_busy        : std_logic_vector(0 downto 0);
  signal rx_cal_busy        : std_logic_vector(0 downto 0);
  signal reconfig_from_xcvr : std_logic_vector(91 downto 0);
  component rx_reset is
    port (
      clock              : in  std_logic                    := 'X';
      reset              : in  std_logic                    := 'X';
      pll_powerdown      : out std_logic_vector(0 downto 0);
      tx_analogreset     : out std_logic_vector(0 downto 0);
      tx_digitalreset    : out std_logic_vector(0 downto 0);
      tx_ready           : out std_logic_vector(0 downto 0);
      pll_locked         : in  std_logic_vector(0 downto 0) := (others => 'X');
      pll_select         : in  std_logic_vector(0 downto 0) := (others => 'X');
      tx_cal_busy        : in  std_logic_vector(0 downto 0) := (others => 'X');
      rx_analogreset     : out std_logic_vector(0 downto 0);
      rx_digitalreset    : out std_logic_vector(0 downto 0);
      rx_ready           : out std_logic_vector(0 downto 0);
      rx_is_lockedtodata : in  std_logic_vector(0 downto 0) := (others => 'X');
      rx_cal_busy        : in  std_logic_vector(0 downto 0) := (others => 'X'));
  end component rx_reset;

  component reconfig is
    port (
      reconfig_busy             : out std_logic;
      mgmt_clk_clk              : in  std_logic                     := 'X';
      mgmt_rst_reset            : in  std_logic                     := 'X';
      reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)  := (others => 'X');
      reconfig_mgmt_read        : in  std_logic                     := 'X';
      reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);
      reconfig_mgmt_waitrequest : out std_logic;
      reconfig_mgmt_write       : in  std_logic                     := 'X';
      reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0) := (others => 'X');
      reconfig_to_xcvr          : out std_logic_vector(139 downto 0);
      reconfig_from_xcvr        : in  std_logic_vector(91 downto 0) := (others => 'X'));
  end component reconfig;

  component rx is
    port (
      pll_powerdown      : in  std_logic_vector(0 downto 0)   := (others => 'X');
      tx_analogreset     : in  std_logic_vector(0 downto 0)   := (others => 'X');
      tx_digitalreset    : in  std_logic_vector(0 downto 0)   := (others => 'X');
      tx_pll_refclk      : in  std_logic_vector(0 downto 0)   := (others => 'X');
      tx_serial_data     : out std_logic_vector(0 downto 0);
      pll_locked         : out std_logic_vector(0 downto 0);
      rx_analogreset     : in  std_logic_vector(0 downto 0)   := (others => 'X');
      rx_digitalreset    : in  std_logic_vector(0 downto 0)   := (others => 'X');
      rx_cdr_refclk      : in  std_logic_vector(0 downto 0)   := (others => 'X');
      rx_pma_clkout      : out std_logic_vector(0 downto 0);
      rx_serial_data     : in  std_logic_vector(0 downto 0)   := (others => 'X');
      rx_set_locktodata  : in  std_logic_vector(0 downto 0)   := (others => 'X');
      rx_set_locktoref   : in  std_logic_vector(0 downto 0)   := (others => 'X');
      rx_is_lockedtoref  : out std_logic_vector(0 downto 0);
      rx_is_lockedtodata : out std_logic_vector(0 downto 0);
      tx_parallel_data   : in  std_logic_vector(43 downto 0)  := (others => 'X');
      rx_parallel_data   : out std_logic_vector(63 downto 0);
      tx_std_coreclkin   : in  std_logic_vector(0 downto 0)   := (others => 'X');
      rx_std_coreclkin   : in  std_logic_vector(0 downto 0)   := (others => 'X');
      tx_std_clkout      : out std_logic_vector(0 downto 0);
      rx_std_clkout      : out std_logic_vector(0 downto 0);
      tx_cal_busy        : out std_logic_vector(0 downto 0);
      rx_cal_busy        : out std_logic_vector(0 downto 0);
      reconfig_to_xcvr   : in  std_logic_vector(139 downto 0) := (others => 'X');
      reconfig_from_xcvr : out std_logic_vector(91 downto 0));
  end component rx;
begin
  rx_reset_1 : component rx_reset
    port map (
      clock              => clock,
      reset              => reset,
      pll_powerdown      => pll_powerdown,
      tx_analogreset     => tx_analogreset,
      tx_digitalreset    => tx_digitalreset,
      tx_ready           => tx_ready,
      pll_locked         => pll_locked,
      pll_select         => pll_select,
      tx_cal_busy        => tx_cal_busy,
      rx_analogreset     => rx_analogreset,
      rx_digitalreset    => rx_digitalreset,
      rx_ready           => rx_ready,
      rx_is_lockedtodata => rx_is_lockedtodata,
      rx_cal_busy        => rx_cal_busy);

  reconfig_1 : component reconfig
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

  rx_1 : component rx
    port map (
      pll_powerdown      => pll_powerdown,
      tx_analogreset     => tx_analogreset,
      tx_digitalreset    => tx_digitalreset,
      tx_pll_refclk      => tx_pll_refclk,
      tx_serial_data     => tx_serial_data,
      pll_locked         => pll_locked,
      rx_analogreset     => rx_analogreset,
      rx_digitalreset    => rx_digitalreset,
      rx_cdr_refclk      => rx_cdr_refclk,
      rx_pma_clkout      => rx_pma_clkout,
      rx_serial_data     => rx_serial_data,
      rx_set_locktodata  => rx_set_locktodata,
      rx_set_locktoref   => rx_set_locktoref,
      rx_is_lockedtoref  => rx_is_lockedtoref,
      rx_is_lockedtodata => rx_is_lockedtodata,
      tx_parallel_data   => tx_parallel_data,
      rx_parallel_data   => rx_parallel_data,
      tx_std_coreclkin   => tx_std_coreclkin,
      rx_std_coreclkin   => rx_std_coreclkin,
      tx_std_clkout      => tx_std_clkout,
      rx_std_clkout      => rx_std_clkout,
      tx_cal_busy        => tx_cal_busy,
      rx_cal_busy        => rx_cal_busy,
      reconfig_to_xcvr   => reconfig_to_xcvr,
      reconfig_from_xcvr => reconfig_from_xcvr);
end;
