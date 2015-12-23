-- recv_rx.vhd

-- Generated using ACDS version 15.1 185

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity recv_rx is
	port (
		rx_analogreset     : in  std_logic_vector(0 downto 0)  := (others => '0'); --     rx_analogreset.rx_analogreset
		rx_digitalreset    : in  std_logic_vector(0 downto 0)  := (others => '0'); --    rx_digitalreset.rx_digitalreset
		rx_cdr_refclk      : in  std_logic_vector(0 downto 0)  := (others => '0'); --      rx_cdr_refclk.rx_cdr_refclk
		rx_pma_clkout      : out std_logic_vector(0 downto 0);                     --      rx_pma_clkout.rx_pma_clkout
		rx_serial_data     : in  std_logic_vector(0 downto 0)  := (others => '0'); --     rx_serial_data.rx_serial_data
		rx_set_locktodata  : in  std_logic_vector(0 downto 0)  := (others => '0'); --  rx_set_locktodata.rx_set_locktodata
		rx_set_locktoref   : in  std_logic_vector(0 downto 0)  := (others => '0'); --   rx_set_locktoref.rx_set_locktoref
		rx_is_lockedtoref  : out std_logic_vector(0 downto 0);                     --  rx_is_lockedtoref.rx_is_lockedtoref
		rx_is_lockedtodata : out std_logic_vector(0 downto 0);                     -- rx_is_lockedtodata.rx_is_lockedtodata
		rx_parallel_data   : out std_logic_vector(63 downto 0);                    --   rx_parallel_data.rx_parallel_data
		rx_std_coreclkin   : in  std_logic_vector(0 downto 0)  := (others => '0'); --   rx_std_coreclkin.rx_std_coreclkin
		rx_std_clkout      : out std_logic_vector(0 downto 0);                     --      rx_std_clkout.rx_std_clkout
		rx_cal_busy        : out std_logic_vector(0 downto 0);                     --        rx_cal_busy.rx_cal_busy
		reconfig_to_xcvr   : in  std_logic_vector(69 downto 0) := (others => '0'); --   reconfig_to_xcvr.reconfig_to_xcvr
		reconfig_from_xcvr : out std_logic_vector(45 downto 0)                     -- reconfig_from_xcvr.reconfig_from_xcvr
	);
end entity recv_rx;

architecture rtl of recv_rx is
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
			rx_analogreset            : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_analogreset
			rx_digitalreset           : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_digitalreset
			rx_cdr_refclk             : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_cdr_refclk
			rx_pma_clkout             : out std_logic_vector(0 downto 0);                     -- rx_pma_clkout
			rx_serial_data            : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_serial_data
			rx_set_locktodata         : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_set_locktodata
			rx_set_locktoref          : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_set_locktoref
			rx_is_lockedtoref         : out std_logic_vector(0 downto 0);                     -- rx_is_lockedtoref
			rx_is_lockedtodata        : out std_logic_vector(0 downto 0);                     -- rx_is_lockedtodata
			rx_parallel_data          : out std_logic_vector(63 downto 0);                    -- rx_parallel_data
			rx_std_coreclkin          : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_std_coreclkin
			rx_std_clkout             : out std_logic_vector(0 downto 0);                     -- rx_std_clkout
			rx_cal_busy               : out std_logic_vector(0 downto 0);                     -- rx_cal_busy
			reconfig_to_xcvr          : in  std_logic_vector(69 downto 0) := (others => 'X'); -- reconfig_to_xcvr
			reconfig_from_xcvr        : out std_logic_vector(45 downto 0);                    -- reconfig_from_xcvr
			pll_powerdown             : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- pll_powerdown
			tx_analogreset            : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- tx_analogreset
			tx_digitalreset           : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- tx_digitalreset
			tx_pll_refclk             : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- tx_pll_refclk
			tx_pma_clkout             : out std_logic_vector(0 downto 0);                     -- tx_pma_clkout
			tx_serial_data            : out std_logic_vector(0 downto 0);                     -- tx_serial_data
			tx_pma_parallel_data      : in  std_logic_vector(79 downto 0) := (others => 'X'); -- tx_pma_parallel_data
			pll_locked                : out std_logic_vector(0 downto 0);                     -- pll_locked
			ext_pll_clk               : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- ext_pll_clk
			rx_pma_parallel_data      : out std_logic_vector(79 downto 0);                    -- rx_pma_parallel_data
			rx_clkslip                : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_clkslip
			rx_clklow                 : out std_logic_vector(0 downto 0);                     -- rx_clklow
			rx_fref                   : out std_logic_vector(0 downto 0);                     -- rx_fref
			rx_seriallpbken           : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_seriallpbken
			rx_signaldetect           : out std_logic_vector(0 downto 0);                     -- rx_signaldetect
			tx_parallel_data          : in  std_logic_vector(43 downto 0) := (others => 'X'); -- tx_parallel_data
			tx_std_coreclkin          : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- tx_std_coreclkin
			tx_std_clkout             : out std_logic_vector(0 downto 0);                     -- tx_std_clkout
			rx_std_prbs_done          : out std_logic_vector(0 downto 0);                     -- rx_std_prbs_done
			rx_std_prbs_err           : out std_logic_vector(0 downto 0);                     -- rx_std_prbs_err
			tx_std_pcfifo_full        : out std_logic_vector(0 downto 0);                     -- tx_std_pcfifo_full
			tx_std_pcfifo_empty       : out std_logic_vector(0 downto 0);                     -- tx_std_pcfifo_empty
			rx_std_pcfifo_full        : out std_logic_vector(0 downto 0);                     -- rx_std_pcfifo_full
			rx_std_pcfifo_empty       : out std_logic_vector(0 downto 0);                     -- rx_std_pcfifo_empty
			rx_std_byteorder_ena      : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_std_byteorder_ena
			rx_std_byteorder_flag     : out std_logic_vector(0 downto 0);                     -- rx_std_byteorder_flag
			rx_std_rmfifo_full        : out std_logic_vector(0 downto 0);                     -- rx_std_rmfifo_full
			rx_std_rmfifo_empty       : out std_logic_vector(0 downto 0);                     -- rx_std_rmfifo_empty
			rx_std_wa_patternalign    : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_std_wa_patternalign
			rx_std_wa_a1a2size        : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_std_wa_a1a2size
			tx_std_bitslipboundarysel : in  std_logic_vector(4 downto 0)  := (others => 'X'); -- tx_std_bitslipboundarysel
			rx_std_bitslipboundarysel : out std_logic_vector(4 downto 0);                     -- rx_std_bitslipboundarysel
			rx_std_bitslip            : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_std_bitslip
			rx_std_runlength_err      : out std_logic_vector(0 downto 0);                     -- rx_std_runlength_err
			rx_std_bitrev_ena         : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_std_bitrev_ena
			rx_std_byterev_ena        : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_std_byterev_ena
			tx_std_polinv             : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- tx_std_polinv
			rx_std_polinv             : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- rx_std_polinv
			tx_std_elecidle           : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- tx_std_elecidle
			rx_std_signaldetect       : out std_logic_vector(0 downto 0);                     -- rx_std_signaldetect
			tx_cal_busy               : out std_logic_vector(0 downto 0)                      -- tx_cal_busy
		);
	end component altera_xcvr_native_av;

begin

	recv_rx_inst : component altera_xcvr_native_av
		generic map (
			tx_enable                       => 0,
			rx_enable                       => 1,
			enable_std                      => 1,
			data_path_select                => "standard",
			channels                        => 1,
			bonded_mode                     => "non_bonded",
			data_rate                       => "2500 Mbps",
			pma_width                       => 20,
			tx_pma_clk_div                  => 1,
			pll_reconfig_enable             => 0,
			pll_external_enable             => 0,
			pll_data_rate                   => "2500 Mbps",
			pll_type                        => "CMU",
			pma_bonding_mode                => "x1",
			plls                            => 1,
			pll_select                      => 0,
			pll_refclk_cnt                  => 1,
			pll_refclk_select               => "0",
			pll_refclk_freq                 => "unused",
			pll_feedback_path               => "internal",
			cdr_reconfig_enable             => 0,
			cdr_refclk_cnt                  => 1,
			cdr_refclk_select               => 0,
			cdr_refclk_freq                 => "125.0 MHz",
			rx_ppm_detect_threshold         => "1000",
			rx_clkslip_enable               => 0,
			std_protocol_hint               => "basic",
			std_pcs_pma_width               => 20,
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
			rx_analogreset            => rx_analogreset,                                                                     --     rx_analogreset.rx_analogreset
			rx_digitalreset           => rx_digitalreset,                                                                    --    rx_digitalreset.rx_digitalreset
			rx_cdr_refclk             => rx_cdr_refclk,                                                                      --      rx_cdr_refclk.rx_cdr_refclk
			rx_pma_clkout             => rx_pma_clkout,                                                                      --      rx_pma_clkout.rx_pma_clkout
			rx_serial_data            => rx_serial_data,                                                                     --     rx_serial_data.rx_serial_data
			rx_set_locktodata         => rx_set_locktodata,                                                                  --  rx_set_locktodata.rx_set_locktodata
			rx_set_locktoref          => rx_set_locktoref,                                                                   --   rx_set_locktoref.rx_set_locktoref
			rx_is_lockedtoref         => rx_is_lockedtoref,                                                                  --  rx_is_lockedtoref.rx_is_lockedtoref
			rx_is_lockedtodata        => rx_is_lockedtodata,                                                                 -- rx_is_lockedtodata.rx_is_lockedtodata
			rx_parallel_data          => rx_parallel_data,                                                                   --   rx_parallel_data.rx_parallel_data
			rx_std_coreclkin          => rx_std_coreclkin,                                                                   --   rx_std_coreclkin.rx_std_coreclkin
			rx_std_clkout             => rx_std_clkout,                                                                      --      rx_std_clkout.rx_std_clkout
			rx_cal_busy               => rx_cal_busy,                                                                        --        rx_cal_busy.rx_cal_busy
			reconfig_to_xcvr          => reconfig_to_xcvr,                                                                   --   reconfig_to_xcvr.reconfig_to_xcvr
			reconfig_from_xcvr        => reconfig_from_xcvr,                                                                 -- reconfig_from_xcvr.reconfig_from_xcvr
			pll_powerdown             => "0",                                                                                --        (terminated)
			tx_analogreset            => "0",                                                                                --        (terminated)
			tx_digitalreset           => "0",                                                                                --        (terminated)
			tx_pll_refclk             => "0",                                                                                --        (terminated)
			tx_pma_clkout             => open,                                                                               --        (terminated)
			tx_serial_data            => open,                                                                               --        (terminated)
			tx_pma_parallel_data      => "00000000000000000000000000000000000000000000000000000000000000000000000000000000", --        (terminated)
			pll_locked                => open,                                                                               --        (terminated)
			ext_pll_clk               => "0",                                                                                --        (terminated)
			rx_pma_parallel_data      => open,                                                                               --        (terminated)
			rx_clkslip                => "0",                                                                                --        (terminated)
			rx_clklow                 => open,                                                                               --        (terminated)
			rx_fref                   => open,                                                                               --        (terminated)
			rx_seriallpbken           => "0",                                                                                --        (terminated)
			rx_signaldetect           => open,                                                                               --        (terminated)
			tx_parallel_data          => "00000000000000000000000000000000000000000000",                                     --        (terminated)
			tx_std_coreclkin          => "0",                                                                                --        (terminated)
			tx_std_clkout             => open,                                                                               --        (terminated)
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
			tx_cal_busy               => open                                                                                --        (terminated)
		);

end architecture rtl; -- of recv_rx
