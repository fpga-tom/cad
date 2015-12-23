-------------------------------------------------------------------------------
-- Title      : all digital receiver
-- Project    : 
-------------------------------------------------------------------------------
-- File       : recv.vhd
-- Author     : tomas  <tomas@fedora>
-- Company    : 
-- Created    : 2015-12-22
-- Last update: 2015-12-22
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: pwm sampler
-------------------------------------------------------------------------------
-- Copyright (c) 2015 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2015-12-22  1.0      tomas   Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity recv is
  port (

    -- ports to "recv_rx_1"
    rx_cdr_refclk     : in  std_logic_vector(0 downto 0) := (others => '0');
    rx_pma_clkout     : out std_logic_vector(0 downto 0);
    rx_serial_data    : in  std_logic_vector(0 downto 0) := (others => '0');
    rx_set_locktodata : in  std_logic_vector(0 downto 0) := (others => '0');
    rx_set_locktoref  : in  std_logic_vector(0 downto 0) := (others => '0');
    rx_is_lockedtoref : out std_logic_vector(0 downto 0);
    rx_parallel_data  : out std_logic_vector(63 downto 0);
    rx_std_coreclkin  : in  std_logic_vector(0 downto 0) := (others => '0');
    rx_std_clkout     : out std_logic_vector(0 downto 0);

    -- ports to "recv_reconfig_1"
    reconfig_busy             : out std_logic;
    mgmt_clk_clk              : in  std_logic                     := '0';
    mgmt_rst_reset            : in  std_logic                     := '0';
    reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)  := (others => '0');
    reconfig_mgmt_read        : in  std_logic                     := '0';
    reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);
    reconfig_mgmt_waitrequest : out std_logic;
    reconfig_mgmt_write       : in  std_logic                     := '0';
    reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');

    -- ports to "recv_reset_1"
    clock    : in  std_logic := '0';
    reset    : in  std_logic := '0';
    rx_ready : out std_logic_vector(0 downto 0));

end;

architecture structural of recv is

  -- outputs of "recv_rx_1"
  signal rx_is_lockedtodata : std_logic_vector(0 downto 0);
  signal rx_cal_busy        : std_logic_vector(0 downto 0);
  signal reconfig_from_xcvr : std_logic_vector(45 downto 0);

  -- outputs of "recv_reconfig_1"
  signal reconfig_to_xcvr : std_logic_vector(69 downto 0);

  -- outputs of "recv_reset_1"
  signal rx_analogreset  : std_logic_vector(0 downto 0);
  signal rx_digitalreset : std_logic_vector(0 downto 0);
  component recv_rx is
    port (
      rx_analogreset     : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_digitalreset    : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_cdr_refclk      : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_pma_clkout      : out std_logic_vector(0 downto 0);
      rx_serial_data     : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_set_locktodata  : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_set_locktoref   : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_is_lockedtoref  : out std_logic_vector(0 downto 0);
      rx_is_lockedtodata : out std_logic_vector(0 downto 0);
      rx_parallel_data   : out std_logic_vector(63 downto 0);
      rx_std_coreclkin   : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_std_clkout      : out std_logic_vector(0 downto 0);
      rx_cal_busy        : out std_logic_vector(0 downto 0);
      reconfig_to_xcvr   : in  std_logic_vector(69 downto 0) := (others => '0');
      reconfig_from_xcvr : out std_logic_vector(45 downto 0));
  end component recv_rx;

  component recv_reconfig is
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
      reconfig_to_xcvr          : out std_logic_vector(69 downto 0);
      reconfig_from_xcvr        : in  std_logic_vector(45 downto 0) := (others => '0'));
  end component recv_reconfig;

  component recv_reset is
    port (
      clock              : in  std_logic                    := '0';
      reset              : in  std_logic                    := '0';
      rx_analogreset     : out std_logic_vector(0 downto 0);
      rx_digitalreset    : out std_logic_vector(0 downto 0);
      rx_ready           : out std_logic_vector(0 downto 0);
      rx_is_lockedtodata : in  std_logic_vector(0 downto 0) := (others => '0');
      rx_cal_busy        : in  std_logic_vector(0 downto 0) := (others => '0'));
  end component recv_reset;
  
begin
  recv_rx_1: component recv_rx
    port map (
      rx_analogreset     => rx_analogreset,
      rx_digitalreset    => rx_digitalreset,
      rx_cdr_refclk      => rx_cdr_refclk,
      rx_pma_clkout      => rx_pma_clkout,
      rx_serial_data     => rx_serial_data,
      rx_set_locktodata  => rx_set_locktodata,
      rx_set_locktoref   => rx_set_locktoref,
      rx_is_lockedtoref  => rx_is_lockedtoref,
      rx_is_lockedtodata => rx_is_lockedtodata,
      rx_parallel_data   => rx_parallel_data,
      rx_std_coreclkin   => rx_std_coreclkin,
      rx_std_clkout      => rx_std_clkout,
      rx_cal_busy        => rx_cal_busy,
      reconfig_to_xcvr   => reconfig_to_xcvr,
      reconfig_from_xcvr => reconfig_from_xcvr);

  recv_reconfig_1: component recv_reconfig
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

  recv_reset_1: component recv_reset
    port map (
      clock              => clock,
      reset              => reset,
      rx_analogreset     => rx_analogreset,
      rx_digitalreset    => rx_digitalreset,
      rx_ready           => rx_ready,
      rx_is_lockedtodata => rx_is_lockedtodata,
      rx_cal_busy        => rx_cal_busy);
end;
