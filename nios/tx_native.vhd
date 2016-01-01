-- megafunction wizard: %Cyclone V Transceiver Native PHY v15.1%
-- GENERATION: XML
-- tx_native.vhd

-- Generated using ACDS version 15.1 185

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tx_native is
	port (
		pll_powerdown      : in  std_logic_vector(0 downto 0)   := (others => '0'); --      pll_powerdown.pll_powerdown
		tx_analogreset     : in  std_logic_vector(0 downto 0)   := (others => '0'); --     tx_analogreset.tx_analogreset
		tx_digitalreset    : in  std_logic_vector(0 downto 0)   := (others => '0'); --    tx_digitalreset.tx_digitalreset
		tx_pll_refclk      : in  std_logic_vector(0 downto 0)   := (others => '0'); --      tx_pll_refclk.tx_pll_refclk
		tx_serial_data     : out std_logic_vector(0 downto 0);                      --     tx_serial_data.tx_serial_data
		pll_locked         : out std_logic_vector(0 downto 0);                      --         pll_locked.pll_locked
		tx_parallel_data   : in  std_logic_vector(43 downto 0)  := (others => '0'); --   tx_parallel_data.tx_parallel_data
		tx_std_coreclkin   : in  std_logic_vector(0 downto 0)   := (others => '0'); --   tx_std_coreclkin.tx_std_coreclkin
		tx_std_clkout      : out std_logic_vector(0 downto 0);                      --      tx_std_clkout.tx_std_clkout
		tx_cal_busy        : out std_logic_vector(0 downto 0);                      --        tx_cal_busy.tx_cal_busy
		reconfig_to_xcvr   : in  std_logic_vector(139 downto 0) := (others => '0'); --   reconfig_to_xcvr.reconfig_to_xcvr
		reconfig_from_xcvr : out std_logic_vector(91 downto 0)                      -- reconfig_from_xcvr.reconfig_from_xcvr
	);
end entity tx_native;

architecture rtl of tx_native is
	component altera_xcvr_native_av is
		generic (
			tx_enable                       : integer := 1;
			rx_enable                       : integer := 1;
			enable_std                      : integer := 1;
			data_path_select                : string  := "standard";
			channels                        : integer := 1;
			bonded_mode                     : string  := "non_bonded";
			data_rate                       : string  := "";
			pma_width                       : integer := 10;
			tx_pma_clk_div                  : integer := 1;
			pll_reconfig_enable             : integer := 0;
			pll_external_enable             : integer := 0;
			pll_data_rate                   : string  := "0 Mbps";
			pll_type                        : string  := "CMU";
			pma_bonding_mode                : string  := "x1";
			plls                            : integer := 1;
			pll_select                      : integer := 0;
			pll_refclk_cnt                  : integer := 1;
			pll_refclk_select               : string  := "0";
			pll_refclk_freq                 : string  := "125.0 MHz";
			pll_feedback_path               : string  := "internal";
			cdr_reconfig_enable             : integer := 0;
			cdr_refclk_cnt                  : integer := 1;
			cdr_refclk_select               : integer := 0;
			cdr_refclk_freq                 : string  := "";
			rx_ppm_detect_threshold         : string  := "1000";
			rx_clkslip_enable               : integer := 0;
			std_protocol_hint               : string  := "basic";
			std_pcs_pma_width               : integer := 10;
			std_low_latency_bypass_enable   : integer := 0;
			std_tx_pcfifo_mode              : string  := "low_latency";
			std_rx_pcfifo_mode              : string  := "low_latency";
			std_rx_byte_order_enable        : integer := 0;
			std_rx_byte_order_mode          : string  := "manual";
			std_rx_byte_order_width         : integer := 10;
			std_rx_byte_order_symbol_count  : integer := 1;
			std_rx_byte_order_pattern       : string  := "0";
			std_rx_byte_order_pad           : string  := "0";
			std_tx_byte_ser_enable          : integer := 0;
			std_rx_byte_deser_enable        : integer := 0;
			std_tx_8b10b_enable             : integer := 0;
			std_tx_8b10b_disp_ctrl_enable   : integer := 0;
			std_rx_8b10b_enable             : integer := 0;
			std_rx_rmfifo_enable            : integer := 0;
			std_rx_rmfifo_pattern_p         : string  := "00000";
			std_rx_rmfifo_pattern_n         : string  := "00000";
			std_tx_bitslip_enable           : integer := 0;
			std_rx_word_aligner_mode        : string  := "bit_slip";
			std_rx_word_aligner_pattern_len : integer := 7;
			std_rx_word_aligner_pattern     : string  := "0000000000";
			std_rx_word_aligner_rknumber    : integer := 3;
			std_rx_word_aligner_renumber    : integer := 3;
			std_rx_word_aligner_rgnumber    : integer := 3;
			std_rx_run_length_val           : integer := 31;
			std_tx_bitrev_enable            : integer := 0;
			std_rx_bitrev_enable            : integer := 0;
			std_tx_byterev_enable           : integer := 0;
			std_rx_byterev_enable           : integer := 0;
			std_tx_polinv_enable            : integer := 0;
			std_rx_polinv_enable            : integer := 0
		);
		port (
			pll_powerdown             : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- pll_powerdown
			tx_analogreset            : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- tx_analogreset
			tx_digitalreset           : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- tx_digitalreset
			tx_pll_refclk             : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- tx_pll_refclk
			tx_serial_data            : out std_logic_vector(0 downto 0);                      -- tx_serial_data
			pll_locked                : out std_logic_vector(0 downto 0);                      -- pll_locked
			tx_parallel_data          : in  std_logic_vector(43 downto 0)  := (others => 'X'); -- tx_parallel_data
			tx_std_coreclkin          : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- tx_std_coreclkin
			tx_std_clkout             : out std_logic_vector(0 downto 0);                      -- tx_std_clkout
			tx_cal_busy               : out std_logic_vector(0 downto 0);                      -- tx_cal_busy
			reconfig_to_xcvr          : in  std_logic_vector(139 downto 0) := (others => 'X'); -- reconfig_to_xcvr
			reconfig_from_xcvr        : out std_logic_vector(91 downto 0);                     -- reconfig_from_xcvr
			tx_pma_clkout             : out std_logic_vector(0 downto 0);                      -- tx_pma_clkout
			tx_pma_parallel_data      : in  std_logic_vector(79 downto 0)  := (others => 'X'); -- tx_pma_parallel_data
			ext_pll_clk               : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- ext_pll_clk
			rx_analogreset            : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_analogreset
			rx_digitalreset           : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_digitalreset
			rx_cdr_refclk             : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_cdr_refclk
			rx_pma_clkout             : out std_logic_vector(0 downto 0);                      -- rx_pma_clkout
			rx_serial_data            : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_serial_data
			rx_pma_parallel_data      : out std_logic_vector(79 downto 0);                     -- rx_pma_parallel_data
			rx_clkslip                : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_clkslip
			rx_clklow                 : out std_logic_vector(0 downto 0);                      -- rx_clklow
			rx_fref                   : out std_logic_vector(0 downto 0);                      -- rx_fref
			rx_set_locktodata         : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_set_locktodata
			rx_set_locktoref          : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_set_locktoref
			rx_is_lockedtoref         : out std_logic_vector(0 downto 0);                      -- rx_is_lockedtoref
			rx_is_lockedtodata        : out std_logic_vector(0 downto 0);                      -- rx_is_lockedtodata
			rx_seriallpbken           : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_seriallpbken
			rx_signaldetect           : out std_logic_vector(0 downto 0);                      -- rx_signaldetect
			rx_parallel_data          : out std_logic_vector(63 downto 0);                     -- rx_parallel_data
			rx_std_coreclkin          : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_std_coreclkin
			rx_std_clkout             : out std_logic_vector(0 downto 0);                      -- rx_std_clkout
			rx_std_prbs_done          : out std_logic_vector(0 downto 0);                      -- rx_std_prbs_done
			rx_std_prbs_err           : out std_logic_vector(0 downto 0);                      -- rx_std_prbs_err
			tx_std_pcfifo_full        : out std_logic_vector(0 downto 0);                      -- tx_std_pcfifo_full
			tx_std_pcfifo_empty       : out std_logic_vector(0 downto 0);                      -- tx_std_pcfifo_empty
			rx_std_pcfifo_full        : out std_logic_vector(0 downto 0);                      -- rx_std_pcfifo_full
			rx_std_pcfifo_empty       : out std_logic_vector(0 downto 0);                      -- rx_std_pcfifo_empty
			rx_std_byteorder_ena      : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_std_byteorder_ena
			rx_std_byteorder_flag     : out std_logic_vector(0 downto 0);                      -- rx_std_byteorder_flag
			rx_std_rmfifo_full        : out std_logic_vector(0 downto 0);                      -- rx_std_rmfifo_full
			rx_std_rmfifo_empty       : out std_logic_vector(0 downto 0);                      -- rx_std_rmfifo_empty
			rx_std_wa_patternalign    : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_std_wa_patternalign
			rx_std_wa_a1a2size        : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_std_wa_a1a2size
			tx_std_bitslipboundarysel : in  std_logic_vector(4 downto 0)   := (others => 'X'); -- tx_std_bitslipboundarysel
			rx_std_bitslipboundarysel : out std_logic_vector(4 downto 0);                      -- rx_std_bitslipboundarysel
			rx_std_bitslip            : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_std_bitslip
			rx_std_runlength_err      : out std_logic_vector(0 downto 0);                      -- rx_std_runlength_err
			rx_std_bitrev_ena         : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_std_bitrev_ena
			rx_std_byterev_ena        : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_std_byterev_ena
			tx_std_polinv             : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- tx_std_polinv
			rx_std_polinv             : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- rx_std_polinv
			tx_std_elecidle           : in  std_logic_vector(0 downto 0)   := (others => 'X'); -- tx_std_elecidle
			rx_std_signaldetect       : out std_logic_vector(0 downto 0);                      -- rx_std_signaldetect
			rx_cal_busy               : out std_logic_vector(0 downto 0)                       -- rx_cal_busy
		);
	end component altera_xcvr_native_av;

begin

	tx_native_inst : component altera_xcvr_native_av
		generic map (
			tx_enable                       => 1,
			rx_enable                       => 0,
			enable_std                      => 1,
			data_path_select                => "standard",
			channels                        => 1,
			bonded_mode                     => "non_bonded",
			data_rate                       => "1250 Mbps",
			pma_width                       => 10,
			tx_pma_clk_div                  => 1,
			pll_reconfig_enable             => 0,
			pll_external_enable             => 0,
			pll_data_rate                   => "1250 Mbps",
			pll_type                        => "CMU",
			pma_bonding_mode                => "x1",
			plls                            => 1,
			pll_select                      => 0,
			pll_refclk_cnt                  => 1,
			pll_refclk_select               => "0",
			pll_refclk_freq                 => "125.0 MHz",
			pll_feedback_path               => "internal",
			cdr_reconfig_enable             => 0,
			cdr_refclk_cnt                  => 1,
			cdr_refclk_select               => 0,
			cdr_refclk_freq                 => "125.0 MHz",
			rx_ppm_detect_threshold         => "1000",
			rx_clkslip_enable               => 0,
			std_protocol_hint               => "basic",
			std_pcs_pma_width               => 10,
			std_low_latency_bypass_enable   => 0,
			std_tx_pcfifo_mode              => "low_latency",
			std_rx_pcfifo_mode              => "low_latency",
			std_rx_byte_order_enable        => 0,
			std_rx_byte_order_mode          => "manual",
			std_rx_byte_order_width         => 10,
			std_rx_byte_order_symbol_count  => 1,
			std_rx_byte_order_pattern       => "0",
			std_rx_byte_order_pad           => "0",
			std_tx_byte_ser_enable          => 0,
			std_rx_byte_deser_enable        => 0,
			std_tx_8b10b_enable             => 0,
			std_tx_8b10b_disp_ctrl_enable   => 0,
			std_rx_8b10b_enable             => 0,
			std_rx_rmfifo_enable            => 0,
			std_rx_rmfifo_pattern_p         => "00000",
			std_rx_rmfifo_pattern_n         => "00000",
			std_tx_bitslip_enable           => 0,
			std_rx_word_aligner_mode        => "bit_slip",
			std_rx_word_aligner_pattern_len => 7,
			std_rx_word_aligner_pattern     => "0000000000",
			std_rx_word_aligner_rknumber    => 3,
			std_rx_word_aligner_renumber    => 3,
			std_rx_word_aligner_rgnumber    => 3,
			std_rx_run_length_val           => 31,
			std_tx_bitrev_enable            => 0,
			std_rx_bitrev_enable            => 0,
			std_tx_byterev_enable           => 0,
			std_rx_byterev_enable           => 0,
			std_tx_polinv_enable            => 0,
			std_rx_polinv_enable            => 0
		)
		port map (
			pll_powerdown             => pll_powerdown,                                                                      --      pll_powerdown.pll_powerdown
			tx_analogreset            => tx_analogreset,                                                                     --     tx_analogreset.tx_analogreset
			tx_digitalreset           => tx_digitalreset,                                                                    --    tx_digitalreset.tx_digitalreset
			tx_pll_refclk             => tx_pll_refclk,                                                                      --      tx_pll_refclk.tx_pll_refclk
			tx_serial_data            => tx_serial_data,                                                                     --     tx_serial_data.tx_serial_data
			pll_locked                => pll_locked,                                                                         --         pll_locked.pll_locked
			tx_parallel_data          => tx_parallel_data,                                                                   --   tx_parallel_data.tx_parallel_data
			tx_std_coreclkin          => tx_std_coreclkin,                                                                   --   tx_std_coreclkin.tx_std_coreclkin
			tx_std_clkout             => tx_std_clkout,                                                                      --      tx_std_clkout.tx_std_clkout
			tx_cal_busy               => tx_cal_busy,                                                                        --        tx_cal_busy.tx_cal_busy
			reconfig_to_xcvr          => reconfig_to_xcvr,                                                                   --   reconfig_to_xcvr.reconfig_to_xcvr
			reconfig_from_xcvr        => reconfig_from_xcvr,                                                                 -- reconfig_from_xcvr.reconfig_from_xcvr
			tx_pma_clkout             => open,                                                                               --        (terminated)
			tx_pma_parallel_data      => "00000000000000000000000000000000000000000000000000000000000000000000000000000000", --        (terminated)
			ext_pll_clk               => "0",                                                                                --        (terminated)
			rx_analogreset            => "0",                                                                                --        (terminated)
			rx_digitalreset           => "0",                                                                                --        (terminated)
			rx_cdr_refclk             => "0",                                                                                --        (terminated)
			rx_pma_clkout             => open,                                                                               --        (terminated)
			rx_serial_data            => "0",                                                                                --        (terminated)
			rx_pma_parallel_data      => open,                                                                               --        (terminated)
			rx_clkslip                => "0",                                                                                --        (terminated)
			rx_clklow                 => open,                                                                               --        (terminated)
			rx_fref                   => open,                                                                               --        (terminated)
			rx_set_locktodata         => "0",                                                                                --        (terminated)
			rx_set_locktoref          => "0",                                                                                --        (terminated)
			rx_is_lockedtoref         => open,                                                                               --        (terminated)
			rx_is_lockedtodata        => open,                                                                               --        (terminated)
			rx_seriallpbken           => "0",                                                                                --        (terminated)
			rx_signaldetect           => open,                                                                               --        (terminated)
			rx_parallel_data          => open,                                                                               --        (terminated)
			rx_std_coreclkin          => "0",                                                                                --        (terminated)
			rx_std_clkout             => open,                                                                               --        (terminated)
			rx_std_prbs_done          => open,                                                                               --        (terminated)
			rx_std_prbs_err           => open,                                                                               --        (terminated)
			tx_std_pcfifo_full        => open,                                                                               --        (terminated)
			tx_std_pcfifo_empty       => open,                                                                               --        (terminated)
			rx_std_pcfifo_full        => open,                                                                               --        (terminated)
			rx_std_pcfifo_empty       => open,                                                                               --        (terminated)
			rx_std_byteorder_ena      => "0",                                                                                --        (terminated)
			rx_std_byteorder_flag     => open,                                                                               --        (terminated)
			rx_std_rmfifo_full        => open,                                                                               --        (terminated)
			rx_std_rmfifo_empty       => open,                                                                               --        (terminated)
			rx_std_wa_patternalign    => "0",                                                                                --        (terminated)
			rx_std_wa_a1a2size        => "0",                                                                                --        (terminated)
			tx_std_bitslipboundarysel => "00000",                                                                            --        (terminated)
			rx_std_bitslipboundarysel => open,                                                                               --        (terminated)
			rx_std_bitslip            => "0",                                                                                --        (terminated)
			rx_std_runlength_err      => open,                                                                               --        (terminated)
			rx_std_bitrev_ena         => "0",                                                                                --        (terminated)
			rx_std_byterev_ena        => "0",                                                                                --        (terminated)
			tx_std_polinv             => "0",                                                                                --        (terminated)
			rx_std_polinv             => "0",                                                                                --        (terminated)
			tx_std_elecidle           => "0",                                                                                --        (terminated)
			rx_std_signaldetect       => open,                                                                               --        (terminated)
			rx_cal_busy               => open                                                                                --        (terminated)
		);

end architecture rtl; -- of tx_native
-- Retrieval info: <?xml version="1.0"?>
--<!--
--	Generated by Altera MegaWizard Launcher Utility version 1.0
--	************************************************************
--	THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--	************************************************************
--	Copyright (C) 1991-2015 Altera Corporation
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
-- Retrieval info: <instance entity-name="altera_xcvr_native_cv" version="15.1" >
-- Retrieval info: 	<generic name="device_family" value="Cyclone V" />
-- Retrieval info: 	<generic name="show_advanced_features" value="0" />
-- Retrieval info: 	<generic name="device_speedgrade" value="fastest" />
-- Retrieval info: 	<generic name="message_level" value="error" />
-- Retrieval info: 	<generic name="tx_enable" value="1" />
-- Retrieval info: 	<generic name="rx_enable" value="0" />
-- Retrieval info: 	<generic name="enable_std" value="1" />
-- Retrieval info: 	<generic name="set_data_path_select" value="standard" />
-- Retrieval info: 	<generic name="channels" value="1" />
-- Retrieval info: 	<generic name="bonded_mode" value="non_bonded" />
-- Retrieval info: 	<generic name="enable_simple_interface" value="0" />
-- Retrieval info: 	<generic name="set_data_rate" value="1250" />
-- Retrieval info: 	<generic name="pma_direct_width" value="80" />
-- Retrieval info: 	<generic name="tx_pma_clk_div" value="1" />
-- Retrieval info: 	<generic name="pll_reconfig_enable" value="0" />
-- Retrieval info: 	<generic name="pll_external_enable" value="0" />
-- Retrieval info: 	<generic name="plls" value="1" />
-- Retrieval info: 	<generic name="pll_select" value="0" />
-- Retrieval info: 	<generic name="pll_refclk_cnt" value="1" />
-- Retrieval info: 	<generic name="cdr_reconfig_enable" value="0" />
-- Retrieval info: 	<generic name="cdr_refclk_cnt" value="1" />
-- Retrieval info: 	<generic name="cdr_refclk_select" value="0" />
-- Retrieval info: 	<generic name="set_cdr_refclk_freq" value="125.0 MHz" />
-- Retrieval info: 	<generic name="rx_ppm_detect_threshold" value="1000" />
-- Retrieval info: 	<generic name="enable_port_rx_pma_clkout" value="1" />
-- Retrieval info: 	<generic name="enable_port_rx_is_lockedtodata" value="1" />
-- Retrieval info: 	<generic name="enable_port_rx_is_lockedtoref" value="1" />
-- Retrieval info: 	<generic name="enable_ports_rx_manual_cdr_mode" value="1" />
-- Retrieval info: 	<generic name="rx_clkslip_enable" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_signaldetect" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_seriallpbken" value="0" />
-- Retrieval info: 	<generic name="std_protocol_hint" value="basic" />
-- Retrieval info: 	<generic name="std_pcs_pma_width" value="10" />
-- Retrieval info: 	<generic name="std_low_latency_bypass_enable" value="0" />
-- Retrieval info: 	<generic name="std_tx_pcfifo_mode" value="low_latency" />
-- Retrieval info: 	<generic name="std_rx_pcfifo_mode" value="low_latency" />
-- Retrieval info: 	<generic name="enable_port_tx_std_pcfifo_full" value="0" />
-- Retrieval info: 	<generic name="enable_port_tx_std_pcfifo_empty" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_pcfifo_full" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_pcfifo_empty" value="0" />
-- Retrieval info: 	<generic name="std_rx_byte_order_enable" value="0" />
-- Retrieval info: 	<generic name="std_rx_byte_order_mode" value="manual" />
-- Retrieval info: 	<generic name="std_rx_byte_order_symbol_count" value="1" />
-- Retrieval info: 	<generic name="std_rx_byte_order_pattern" value="0" />
-- Retrieval info: 	<generic name="std_rx_byte_order_pad" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_byteorder_ena" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_byteorder_flag" value="0" />
-- Retrieval info: 	<generic name="std_tx_byte_ser_enable" value="0" />
-- Retrieval info: 	<generic name="std_rx_byte_deser_enable" value="0" />
-- Retrieval info: 	<generic name="std_tx_8b10b_enable" value="0" />
-- Retrieval info: 	<generic name="std_tx_8b10b_disp_ctrl_enable" value="0" />
-- Retrieval info: 	<generic name="std_rx_8b10b_enable" value="0" />
-- Retrieval info: 	<generic name="std_rx_rmfifo_enable" value="0" />
-- Retrieval info: 	<generic name="std_rx_rmfifo_pattern_p" value="00000" />
-- Retrieval info: 	<generic name="std_rx_rmfifo_pattern_n" value="00000" />
-- Retrieval info: 	<generic name="enable_port_rx_std_rmfifo_full" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_rmfifo_empty" value="0" />
-- Retrieval info: 	<generic name="std_tx_bitslip_enable" value="0" />
-- Retrieval info: 	<generic name="enable_port_tx_std_bitslipboundarysel" value="0" />
-- Retrieval info: 	<generic name="std_rx_word_aligner_mode" value="bit_slip" />
-- Retrieval info: 	<generic name="std_rx_word_aligner_pattern_len" value="7" />
-- Retrieval info: 	<generic name="std_rx_word_aligner_pattern" value="0000000000" />
-- Retrieval info: 	<generic name="std_rx_word_aligner_rknumber" value="3" />
-- Retrieval info: 	<generic name="std_rx_word_aligner_renumber" value="3" />
-- Retrieval info: 	<generic name="std_rx_word_aligner_rgnumber" value="3" />
-- Retrieval info: 	<generic name="std_rx_run_length_val" value="31" />
-- Retrieval info: 	<generic name="enable_port_rx_std_wa_patternalign" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_wa_a1a2size" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_bitslipboundarysel" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_bitslip" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_runlength_err" value="0" />
-- Retrieval info: 	<generic name="std_tx_bitrev_enable" value="0" />
-- Retrieval info: 	<generic name="std_rx_bitrev_enable" value="0" />
-- Retrieval info: 	<generic name="std_tx_byterev_enable" value="0" />
-- Retrieval info: 	<generic name="std_rx_byterev_enable" value="0" />
-- Retrieval info: 	<generic name="std_tx_polinv_enable" value="0" />
-- Retrieval info: 	<generic name="std_rx_polinv_enable" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_bitrev_ena" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_byterev_ena" value="0" />
-- Retrieval info: 	<generic name="enable_port_tx_std_polinv" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_polinv" value="0" />
-- Retrieval info: 	<generic name="enable_port_tx_std_elecidle" value="0" />
-- Retrieval info: 	<generic name="enable_port_rx_std_signaldetect" value="0" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll0_pll_type" value="CMU" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll0_data_rate" value="1250 Mbps" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll0_refclk_freq" value="125.0 MHz" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll0_refclk_sel" value="0" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll0_clk_network" value="x1" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll1_pll_type" value="CMU" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll1_data_rate" value="1250 Mbps" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll1_refclk_freq" value="125.0 MHz" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll1_refclk_sel" value="0" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll1_clk_network" value="x1" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll2_pll_type" value="CMU" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll2_data_rate" value="1250 Mbps" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll2_refclk_freq" value="125.0 MHz" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll2_refclk_sel" value="0" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll2_clk_network" value="x1" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll3_pll_type" value="CMU" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll3_data_rate" value="1250 Mbps" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll3_refclk_freq" value="125.0 MHz" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll3_refclk_sel" value="0" />
-- Retrieval info: 	<generic name="gui_pll_reconfig_pll3_clk_network" value="x1" />
-- Retrieval info: </instance>
-- IPFS_FILES : tx_native.vho
-- RELATED_FILES: tx_native.vhd, altera_xcvr_functions.sv, sv_reconfig_bundle_to_xcvr.sv, sv_reconfig_bundle_to_ip.sv, sv_reconfig_bundle_merger.sv, av_xcvr_h.sv, av_xcvr_avmm_csr.sv, av_tx_pma_ch.sv, av_tx_pma.sv, av_rx_pma.sv, av_pma.sv, av_pcs_ch.sv, av_pcs.sv, av_xcvr_avmm.sv, av_xcvr_native.sv, av_xcvr_plls.sv, av_xcvr_data_adapter.sv, av_reconfig_bundle_to_basic.sv, av_reconfig_bundle_to_xcvr.sv, av_hssi_8g_rx_pcs_rbc.sv, av_hssi_8g_tx_pcs_rbc.sv, av_hssi_common_pcs_pma_interface_rbc.sv, av_hssi_common_pld_pcs_interface_rbc.sv, av_hssi_pipe_gen1_2_rbc.sv, av_hssi_rx_pcs_pma_interface_rbc.sv, av_hssi_rx_pld_pcs_interface_rbc.sv, av_hssi_tx_pcs_pma_interface_rbc.sv, av_hssi_tx_pld_pcs_interface_rbc.sv, alt_reset_ctrl_lego.sv, alt_reset_ctrl_tgx_cdrauto.sv, alt_xcvr_resync.sv, alt_xcvr_csr_common_h.sv, alt_xcvr_csr_common.sv, alt_xcvr_csr_pcs8g_h.sv, alt_xcvr_csr_pcs8g.sv, alt_xcvr_csr_selector.sv, alt_xcvr_mgmt2dec.sv, altera_wait_generate.v, altera_xcvr_native_av_functions_h.sv, altera_xcvr_native_av.sv, altera_xcvr_data_adapter_av.sv
