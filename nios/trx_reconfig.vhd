-- megafunction wizard: %Transceiver Reconfiguration Controller v15.1%
-- GENERATION: XML
-- trx_reconfig.vhd

-- Generated using ACDS version 15.1 185

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity trx_reconfig is
	port (
		reconfig_busy             : out std_logic;                                         --   reconfig_busy.reconfig_busy
		mgmt_clk_clk              : in  std_logic                      := '0';             --    mgmt_clk_clk.clk
		mgmt_rst_reset            : in  std_logic                      := '0';             --  mgmt_rst_reset.reset
		reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)   := (others => '0'); --   reconfig_mgmt.address
		reconfig_mgmt_read        : in  std_logic                      := '0';             --                .read
		reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);                     --                .readdata
		reconfig_mgmt_waitrequest : out std_logic;                                         --                .waitrequest
		reconfig_mgmt_write       : in  std_logic                      := '0';             --                .write
		reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0)  := (others => '0'); --                .writedata
		ch0_0_to_xcvr             : out std_logic_vector(69 downto 0);                     --   ch0_0_to_xcvr.reconfig_to_xcvr
		ch0_0_from_xcvr           : in  std_logic_vector(45 downto 0)  := (others => '0'); -- ch0_0_from_xcvr.reconfig_from_xcvr
		ch1_2_to_xcvr             : out std_logic_vector(139 downto 0);                    --   ch1_2_to_xcvr.reconfig_to_xcvr
		ch1_2_from_xcvr           : in  std_logic_vector(91 downto 0)  := (others => '0')  -- ch1_2_from_xcvr.reconfig_from_xcvr
	);
end entity trx_reconfig;

architecture rtl of trx_reconfig is
	component alt_xcvr_reconfig is
		generic (
			device_family                 : string  := "Stratix V";
			number_of_reconfig_interfaces : integer := 2;
			enable_offset                 : integer := 1;
			enable_lc                     : integer := 1;
			enable_dcd                    : integer := 0;
			enable_dcd_power_up           : integer := 1;
			enable_analog                 : integer := 1;
			enable_eyemon                 : integer := 0;
			enable_ber                    : integer := 0;
			enable_dfe                    : integer := 0;
			enable_adce                   : integer := 0;
			enable_mif                    : integer := 0;
			enable_pll                    : integer := 0
		);
		port (
			reconfig_busy             : out std_logic;                                         -- reconfig_busy
			mgmt_clk_clk              : in  std_logic                      := 'X';             -- clk
			mgmt_rst_reset            : in  std_logic                      := 'X';             -- reset
			reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)   := (others => 'X'); -- address
			reconfig_mgmt_read        : in  std_logic                      := 'X';             -- read
			reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);                     -- readdata
			reconfig_mgmt_waitrequest : out std_logic;                                         -- waitrequest
			reconfig_mgmt_write       : in  std_logic                      := 'X';             -- write
			reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- writedata
			reconfig_to_xcvr          : out std_logic_vector(209 downto 0);                    -- reconfig_to_xcvr
			reconfig_from_xcvr        : in  std_logic_vector(137 downto 0) := (others => 'X'); -- reconfig_from_xcvr
			tx_cal_busy               : out std_logic;                                         -- tx_cal_busy
			rx_cal_busy               : out std_logic;                                         -- tx_cal_busy
			cal_busy_in               : in  std_logic                      := 'X';             -- cal_busy_in
			reconfig_mif_address      : out std_logic_vector(31 downto 0);                     -- address
			reconfig_mif_read         : out std_logic;                                         -- read
			reconfig_mif_readdata     : in  std_logic_vector(15 downto 0)  := (others => 'X'); -- readdata
			reconfig_mif_waitrequest  : in  std_logic                      := 'X'              -- waitrequest
		);
	end component alt_xcvr_reconfig;

	signal trx_reconfig_inst_reconfig_to_xcvr : std_logic_vector(209 downto 0); -- port fragment

begin

	trx_reconfig_inst : component alt_xcvr_reconfig
		generic map (
			device_family                 => "Cyclone V",
			number_of_reconfig_interfaces => 3,
			enable_offset                 => 1,
			enable_lc                     => 0,
			enable_dcd                    => 0,
			enable_dcd_power_up           => 1,
			enable_analog                 => 1,
			enable_eyemon                 => 0,
			enable_ber                    => 0,
			enable_dfe                    => 0,
			enable_adce                   => 0,
			enable_mif                    => 0,
			enable_pll                    => 0
		)
		port map (
			reconfig_busy                     => reconfig_busy,                      --   reconfig_busy.reconfig_busy
			mgmt_clk_clk                      => mgmt_clk_clk,                       --    mgmt_clk_clk.clk
			mgmt_rst_reset                    => mgmt_rst_reset,                     --  mgmt_rst_reset.reset
			reconfig_mgmt_address             => reconfig_mgmt_address,              --   reconfig_mgmt.address
			reconfig_mgmt_read                => reconfig_mgmt_read,                 --                .read
			reconfig_mgmt_readdata            => reconfig_mgmt_readdata,             --                .readdata
			reconfig_mgmt_waitrequest         => reconfig_mgmt_waitrequest,          --                .waitrequest
			reconfig_mgmt_write               => reconfig_mgmt_write,                --                .write
			reconfig_mgmt_writedata           => reconfig_mgmt_writedata,            --                .writedata
			reconfig_to_xcvr                  => trx_reconfig_inst_reconfig_to_xcvr, --   ch0_0_to_xcvr.reconfig_to_xcvr
			reconfig_from_xcvr(45 downto 0)   => ch0_0_from_xcvr(45 downto 0),       -- ch0_0_from_xcvr.reconfig_from_xcvr
			reconfig_from_xcvr(137 downto 46) => ch1_2_from_xcvr(91 downto 0),       -- ch0_0_from_xcvr.reconfig_from_xcvr
			tx_cal_busy                       => open,                               --     (terminated)
			rx_cal_busy                       => open,                               --     (terminated)
			cal_busy_in                       => '0',                                --     (terminated)
			reconfig_mif_address              => open,                               --     (terminated)
			reconfig_mif_read                 => open,                               --     (terminated)
			reconfig_mif_readdata             => "0000000000000000",                 --     (terminated)
			reconfig_mif_waitrequest          => '0'                                 --     (terminated)
		);

	ch0_0_to_xcvr <= trx_reconfig_inst_reconfig_to_xcvr(69 downto 0);

	ch1_2_to_xcvr <= trx_reconfig_inst_reconfig_to_xcvr(209 downto 70);

end architecture rtl; -- of trx_reconfig
-- Retrieval info: <?xml version="1.0"?>
--<!--
--	Generated by Altera MegaWizard Launcher Utility version 1.0
--	************************************************************
--	THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--	************************************************************
--	Copyright (C) 1991-2016 Altera Corporation
--	Any megafunction design, and related net list (encrypted or decrypted),
--	support information, device programming or simulation file, and any other
--	associated documentation or information provided by Altera or a partner
--	under Altera's Megafunction Partnership Program may be used only to
--	program PLD devices (but not masked PLD devices) from Altera.  Any other
--	use of such megafunction design, net list, support information, device
--	programming or simulation file, or any other related documentation or
--	information is prohibited for any other purpose, including, but not
--	limited to modification, reverse engineering, de-compiling, or use with
--	any other silicon devices, unless such use is explicitly licensed under
--	a separate agreement with Altera or a megafunction partner.  Title to
--	the intellectual property, including patents, copyrights, trademarks,
--	trade secrets, or maskworks, embodied in any such megafunction design,
--	net list, support information, device programming or simulation file, or
--	any other related documentation or information provided by Altera or a
--	megafunction partner, remains with Altera, the megafunction partner, or
--	their respective licensors.  No other licenses, including any licenses
--	needed under any third party's intellectual property, are provided herein.
---->
-- Retrieval info: <instance entity-name="alt_xcvr_reconfig" version="15.1" >
-- Retrieval info: 	<generic name="device_family" value="Cyclone V" />
-- Retrieval info: 	<generic name="number_of_reconfig_interfaces" value="3" />
-- Retrieval info: 	<generic name="gui_split_sizes" value="1,2" />
-- Retrieval info: 	<generic name="enable_offset" value="1" />
-- Retrieval info: 	<generic name="enable_dcd" value="0" />
-- Retrieval info: 	<generic name="enable_dcd_power_up" value="1" />
-- Retrieval info: 	<generic name="enable_analog" value="1" />
-- Retrieval info: 	<generic name="enable_eyemon" value="0" />
-- Retrieval info: 	<generic name="ber_en" value="0" />
-- Retrieval info: 	<generic name="enable_dfe" value="0" />
-- Retrieval info: 	<generic name="enable_adce" value="0" />
-- Retrieval info: 	<generic name="enable_mif" value="0" />
-- Retrieval info: 	<generic name="gui_enable_pll" value="0" />
-- Retrieval info: 	<generic name="gui_cal_status_port" value="false" />
-- Retrieval info: </instance>
-- IPFS_FILES : trx_reconfig.vho
-- RELATED_FILES: trx_reconfig.vhd, altera_xcvr_functions.sv, av_xcvr_h.sv, alt_xcvr_resync.sv, alt_xcvr_reconfig_h.sv, alt_xcvr_reconfig.sv, alt_xcvr_reconfig_cal_seq.sv, alt_xreconf_cif.sv, alt_xreconf_uif.sv, alt_xreconf_basic_acq.sv, alt_xcvr_reconfig_analog.sv, alt_xcvr_reconfig_analog_av.sv, alt_xreconf_analog_datactrl_av.sv, alt_xreconf_analog_rmw_av.sv, alt_xreconf_analog_ctrlsm.sv, alt_xcvr_reconfig_offset_cancellation.sv, alt_xcvr_reconfig_offset_cancellation_av.sv, alt_xcvr_reconfig_eyemon.sv, alt_xcvr_reconfig_dfe.sv, alt_xcvr_reconfig_adce.sv, alt_xcvr_reconfig_dcd.sv, alt_xcvr_reconfig_dcd_av.sv, alt_xcvr_reconfig_dcd_cal_av.sv, alt_xcvr_reconfig_dcd_control_av.sv, alt_xcvr_reconfig_mif.sv, av_xcvr_reconfig_mif.sv, av_xcvr_reconfig_mif_ctrl.sv, av_xcvr_reconfig_mif_avmm.sv, alt_xcvr_reconfig_pll.sv, av_xcvr_reconfig_pll.sv, av_xcvr_reconfig_pll_ctrl.sv, alt_xcvr_reconfig_soc.sv, alt_xcvr_reconfig_cpu_ram.sv, alt_xcvr_reconfig_direct.sv, alt_arbiter_acq.sv, alt_xcvr_reconfig_basic.sv, av_xrbasic_l2p_addr.sv, av_xrbasic_l2p_ch.sv, av_xrbasic_l2p_rom.sv, av_xrbasic_lif_csr.sv, av_xrbasic_lif.sv, av_xcvr_reconfig_basic.sv, alt_xcvr_arbiter.sv, alt_xcvr_m2s.sv, altera_wait_generate.v, alt_xcvr_csr_selector.sv, sv_reconfig_bundle_to_basic.sv, av_reconfig_bundle_to_basic.sv, av_reconfig_bundle_to_xcvr.sv, alt_xcvr_reconfig_cpu.v, alt_xcvr_reconfig_cpu_reconfig_cpu.v, alt_xcvr_reconfig_cpu_reconfig_cpu_test_bench.v, alt_xcvr_reconfig_cpu_mm_interconnect_0.v, alt_xcvr_reconfig_cpu_irq_mapper.sv, altera_reset_controller.v, altera_reset_synchronizer.v, altera_merlin_master_translator.sv, altera_merlin_slave_translator.sv, altera_merlin_master_agent.sv, altera_merlin_slave_agent.sv, altera_merlin_burst_uncompressor.sv, altera_avalon_sc_fifo.v, alt_xcvr_reconfig_cpu_mm_interconnect_0_router.sv, alt_xcvr_reconfig_cpu_mm_interconnect_0_router_001.sv, alt_xcvr_reconfig_cpu_mm_interconnect_0_router_002.sv, alt_xcvr_reconfig_cpu_mm_interconnect_0_router_003.sv, alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_demux.sv, alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_demux_001.sv, altera_merlin_arbitrator.sv, alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_mux.sv, alt_xcvr_reconfig_cpu_mm_interconnect_0_cmd_mux_001.sv, alt_xcvr_reconfig_cpu_mm_interconnect_0_rsp_mux.sv, alt_xcvr_reconfig_cpu_mm_interconnect_0_rsp_mux_001.sv, alt_xcvr_reconfig_cpu_mm_interconnect_0_avalon_st_adapter.v, alt_xcvr_reconfig_cpu_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv
