
module system (
	clk_clk,
	clk_hsmc_clk,
	led_pio_external_connection_export,
	mem_if_lpddr2_emif_0_pll_ref_clk_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_mem_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_locked,
	mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk_pre_phy_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_addr_cmd_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_avl_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_config_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_mem_phy_clk,
	mem_if_lpddr2_emif_0_pll_sharing_afi_phy_clk,
	mem_if_lpddr2_emif_0_pll_sharing_pll_avl_phy_clk,
	mem_if_lpddr2_emif_0_status_local_init_done,
	mem_if_lpddr2_emif_0_status_local_cal_success,
	mem_if_lpddr2_emif_0_status_local_cal_fail,
	memory_mem_ca,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_dm,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	oct_rzqin,
	radio_0_led_led,
	radio_0_rx_serial_data_serial_data,
	radio_0_tx_serial_data_serial_data,
	reset_reset_n,
	uart_external_connection_rxd,
	uart_external_connection_txd);	

	input		clk_clk;
	input		clk_hsmc_clk;
	output	[7:0]	led_pio_external_connection_export;
	input		mem_if_lpddr2_emif_0_pll_ref_clk_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_mem_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_locked;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk_pre_phy_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_addr_cmd_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_avl_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_config_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_mem_phy_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_afi_phy_clk;
	output		mem_if_lpddr2_emif_0_pll_sharing_pll_avl_phy_clk;
	output		mem_if_lpddr2_emif_0_status_local_init_done;
	output		mem_if_lpddr2_emif_0_status_local_cal_success;
	output		mem_if_lpddr2_emif_0_status_local_cal_fail;
	output	[9:0]	memory_mem_ca;
	output	[0:0]	memory_mem_ck;
	output	[0:0]	memory_mem_ck_n;
	output	[0:0]	memory_mem_cke;
	output	[0:0]	memory_mem_cs_n;
	output	[3:0]	memory_mem_dm;
	inout	[31:0]	memory_mem_dq;
	inout	[3:0]	memory_mem_dqs;
	inout	[3:0]	memory_mem_dqs_n;
	input		oct_rzqin;
	output	[7:0]	radio_0_led_led;
	input		radio_0_rx_serial_data_serial_data;
	output		radio_0_tx_serial_data_serial_data;
	input		reset_reset_n;
	input		uart_external_connection_rxd;
	output		uart_external_connection_txd;
endmodule
