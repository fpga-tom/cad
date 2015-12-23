-------------------------------------------------------------------------------
-- Title      : all digital receiver
-- Project    : 
-------------------------------------------------------------------------------
-- File       : xcvr.vhd
-- Author     : tomas  <tomas@fedora>
-- Company    : 
-- Created    : 2015-12-19
-- Last update: 2015-12-22
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

    -- global ports
    mgmt_clk_clk              : in  std_logic                     := '0';
    mgmt_rst_reset            : in  std_logic                     := '0';
    reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)  := (others => '0');
    reconfig_mgmt_read        : in  std_logic                     := '0';
    reconfig_mgmt_write       : in  std_logic                     := '0';
    reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');
    clock                     : in  std_logic                     := '0';
    reset                     : in  std_logic                     := '0';
    reconfig_busy             : out std_logic;
    reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);
    reconfig_mgmt_waitrequest : out std_logic;

    -- ports to "refgen_1"
    tx_pll_refclk    : in  std_logic_vector(0 downto 0)  := (others => '0');
    tx_serial_data   : out std_logic_vector(0 downto 0);
    tx_parallel_data : in  std_logic_vector(43 downto 0) := (others => '0');
    tx_std_coreclkin : in  std_logic_vector(0 downto 0)  := (others => '0');
    tx_std_clkout    : out std_logic_vector(0 downto 0);
    tx_ready         : out std_logic_vector(0 downto 0);
    pll_select       : in  std_logic_vector(0 downto 0)  := (others => '0');

    -- ports to "recv_1"
    rx_cdr_refclk     : in  std_logic_vector(0 downto 0) := (others => '0');
    rx_pma_clkout     : out std_logic_vector(0 downto 0);
    rx_serial_data    : in  std_logic_vector(0 downto 0) := (others => '0');
    rx_set_locktodata : in  std_logic_vector(0 downto 0) := (others => '0');
    rx_set_locktoref  : in  std_logic_vector(0 downto 0) := (others => '0');
    rx_is_lockedtoref : out std_logic_vector(0 downto 0);
    rx_parallel_data  : out std_logic_vector(63 downto 0);
    rx_std_coreclkin  : in  std_logic_vector(0 downto 0) := (others => '0');
    rx_std_clkout     : out std_logic_vector(0 downto 0);
    rx_ready          : out std_logic_vector(0 downto 0));

end;


architecture structural of xcvr is
  component refgen is
    port (
      tx_pll_refclk             : in  std_logic_vector(0 downto 0)  := (others => '0');
      tx_serial_data            : out std_logic_vector(0 downto 0);
      tx_parallel_data          : in  std_logic_vector(43 downto 0) := (others => '0');
      tx_std_coreclkin          : in  std_logic_vector(0 downto 0)  := (others => '0');
      tx_std_clkout             : out std_logic_vector(0 downto 0);
      reconfig_busy             : out std_logic;
      mgmt_clk_clk              : in  std_logic                     := '0';
      mgmt_rst_reset            : in  std_logic                     := '0';
      reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)  := (others => '0');
      reconfig_mgmt_read        : in  std_logic                     := '0';
      reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);
      reconfig_mgmt_waitrequest : out std_logic;
      reconfig_mgmt_write       : in  std_logic                     := '0';
      reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');
      clock                     : in  std_logic                     := '0';
      reset                     : in  std_logic                     := '0';
      tx_ready                  : out std_logic_vector(0 downto 0);
      pll_select                : in  std_logic_vector(0 downto 0)  := (others => '0'));
  end component refgen;

  component recv is
    port (
      rx_cdr_refclk             : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_pma_clkout             : out std_logic_vector(0 downto 0);
      rx_serial_data            : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_set_locktodata         : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_set_locktoref          : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_is_lockedtoref         : out std_logic_vector(0 downto 0);
      rx_parallel_data          : out std_logic_vector(63 downto 0);
      rx_std_coreclkin          : in  std_logic_vector(0 downto 0)  := (others => '0');
      rx_std_clkout             : out std_logic_vector(0 downto 0);
      reconfig_busy             : out std_logic;
      mgmt_clk_clk              : in  std_logic                     := '0';
      mgmt_rst_reset            : in  std_logic                     := '0';
      reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)  := (others => '0');
      reconfig_mgmt_read        : in  std_logic                     := '0';
      reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);
      reconfig_mgmt_waitrequest : out std_logic;
      reconfig_mgmt_write       : in  std_logic                     := '0';
      reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');
      clock                     : in  std_logic                     := '0';
      reset                     : in  std_logic                     := '0';
      rx_ready                  : out std_logic_vector(0 downto 0));
  end component recv;

begin
  refgen_1: component refgen
    port map (
      tx_pll_refclk             => tx_pll_refclk,
      tx_serial_data            => tx_serial_data,
      tx_parallel_data          => tx_parallel_data,
      tx_std_coreclkin          => tx_std_coreclkin,
      tx_std_clkout             => tx_std_clkout,
      reconfig_busy             => reconfig_busy,
      mgmt_clk_clk              => mgmt_clk_clk,
      mgmt_rst_reset            => mgmt_rst_reset,
      reconfig_mgmt_address     => reconfig_mgmt_address,
      reconfig_mgmt_read        => reconfig_mgmt_read,
      reconfig_mgmt_readdata    => reconfig_mgmt_readdata,
      reconfig_mgmt_waitrequest => reconfig_mgmt_waitrequest,
      reconfig_mgmt_write       => reconfig_mgmt_write,
      reconfig_mgmt_writedata   => reconfig_mgmt_writedata,
      clock                     => clock,
      reset                     => reset,
      tx_ready                  => tx_ready,
      pll_select                => pll_select);

  recv_1: component recv
    port map (
      rx_cdr_refclk             => rx_cdr_refclk,
      rx_pma_clkout             => rx_pma_clkout,
      rx_serial_data            => rx_serial_data,
      rx_set_locktodata         => rx_set_locktodata,
      rx_set_locktoref          => rx_set_locktoref,
      rx_is_lockedtoref         => rx_is_lockedtoref,
      rx_parallel_data          => rx_parallel_data,
      rx_std_coreclkin          => rx_std_coreclkin,
      rx_std_clkout             => rx_std_clkout,
      reconfig_busy             => reconfig_busy,
      mgmt_clk_clk              => mgmt_clk_clk,
      mgmt_rst_reset            => mgmt_rst_reset,
      reconfig_mgmt_address     => reconfig_mgmt_address,
      reconfig_mgmt_read        => reconfig_mgmt_read,
      reconfig_mgmt_readdata    => reconfig_mgmt_readdata,
      reconfig_mgmt_waitrequest => reconfig_mgmt_waitrequest,
      reconfig_mgmt_write       => reconfig_mgmt_write,
      reconfig_mgmt_writedata   => reconfig_mgmt_writedata,
      clock                     => clock,
      reset                     => reset,
      rx_ready                  => rx_ready);
end;
