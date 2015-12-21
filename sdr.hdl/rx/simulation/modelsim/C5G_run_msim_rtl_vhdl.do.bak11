transcript on
if ![file isdirectory C5G_iputf_libs] {
	file mkdir C5G_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
vlib C5G_iputf_libs/rx
vmap rx ./C5G_iputf_libs/rx
vlib C5G_iputf_libs/reconfig
vmap reconfig ./C5G_iputf_libs/reconfig
vlib C5G_iputf_libs/rx_reset
vmap rx_reset ./C5G_iputf_libs/rx_reset
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/altera_xcvr_functions.sv"                             -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/altera_xcvr_functions.sv"                      -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/sv_reconfig_bundle_to_xcvr.sv"                        -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/sv_reconfig_bundle_to_ip.sv"                          -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/sv_reconfig_bundle_merger.sv"                         -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/sv_reconfig_bundle_to_xcvr.sv"                 -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/sv_reconfig_bundle_to_ip.sv"                   -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/sv_reconfig_bundle_merger.sv"                  -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_xcvr_h.sv"                                         -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_xcvr_avmm_csr.sv"                                  -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_tx_pma_ch.sv"                                      -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_tx_pma.sv"                                         -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_rx_pma.sv"                                         -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_pma.sv"                                            -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_pcs_ch.sv"                                         -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_pcs.sv"                                            -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_xcvr_avmm.sv"                                      -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_xcvr_native.sv"                                    -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_xcvr_plls.sv"                                      -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_xcvr_data_adapter.sv"                              -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_reconfig_bundle_to_basic.sv"                       -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_reconfig_bundle_to_xcvr.sv"                        -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_xcvr_h.sv"                                  -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_xcvr_avmm_csr.sv"                           -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_tx_pma_ch.sv"                               -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_tx_pma.sv"                                  -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_rx_pma.sv"                                  -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_pma.sv"                                     -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_pcs_ch.sv"                                  -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_pcs.sv"                                     -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_xcvr_avmm.sv"                               -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_xcvr_native.sv"                             -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_xcvr_plls.sv"                               -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_xcvr_data_adapter.sv"                       -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_reconfig_bundle_to_basic.sv"                -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_reconfig_bundle_to_xcvr.sv"                 -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_hssi_8g_rx_pcs_rbc.sv"                             -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_hssi_8g_tx_pcs_rbc.sv"                             -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_hssi_common_pcs_pma_interface_rbc.sv"              -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_hssi_common_pld_pcs_interface_rbc.sv"              -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_hssi_pipe_gen1_2_rbc.sv"                           -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_hssi_rx_pcs_pma_interface_rbc.sv"                  -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_hssi_rx_pld_pcs_interface_rbc.sv"                  -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_hssi_tx_pcs_pma_interface_rbc.sv"                  -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/av_hssi_tx_pld_pcs_interface_rbc.sv"                  -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_hssi_8g_rx_pcs_rbc.sv"                      -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_hssi_8g_tx_pcs_rbc.sv"                      -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_hssi_common_pcs_pma_interface_rbc.sv"       -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_hssi_common_pld_pcs_interface_rbc.sv"       -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_hssi_pipe_gen1_2_rbc.sv"                    -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_hssi_rx_pcs_pma_interface_rbc.sv"           -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_hssi_rx_pld_pcs_interface_rbc.sv"           -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_hssi_tx_pcs_pma_interface_rbc.sv"           -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/av_hssi_tx_pld_pcs_interface_rbc.sv"           -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/alt_reset_ctrl_lego.sv"                               -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/alt_reset_ctrl_tgx_cdrauto.sv"                        -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/alt_xcvr_resync.sv"                                   -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/alt_reset_ctrl_lego.sv"                        -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/alt_reset_ctrl_tgx_cdrauto.sv"                 -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_resync.sv"                            -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/alt_xcvr_csr_common_h.sv"                             -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/alt_xcvr_csr_common.sv"                               -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/alt_xcvr_csr_pcs8g_h.sv"                              -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/alt_xcvr_csr_pcs8g.sv"                                -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/alt_xcvr_csr_selector.sv"                             -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/alt_xcvr_mgmt2dec.sv"                                 -work rx      
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/altera_wait_generate.v"                               -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_common_h.sv"                      -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_common.sv"                        -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_pcs8g_h.sv"                       -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_pcs8g.sv"                         -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_selector.sv"                      -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_mgmt2dec.sv"                          -work rx      
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/altera_wait_generate.v"                        -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/altera_xcvr_native_av_functions_h.sv"                 -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/altera_xcvr_native_av.sv"                             -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/altera_xcvr_data_adapter_av.sv"                       -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/altera_xcvr_native_av_functions_h.sv"          -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/altera_xcvr_native_av.sv"                      -work rx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/altera_xcvr_native_cv/mentor/altera_xcvr_data_adapter_av.sv"                -work rx      
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/rx_sim/rx.vhd"                                                                                   
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/altera_xcvr_functions.sv"                           -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/altera_xcvr_functions.sv"                    -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_xcvr_h.sv"                                       -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_h.sv"                                -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_resync.sv"                                 -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_resync.sv"                          -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_h.sv"                             -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_h.sv"                      -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig.sv"                               -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig.sv"                        -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cal_seq.sv"                       -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_cal_seq.sv"                -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xreconf_cif.sv"                                 -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_cif.sv"                          -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xreconf_uif.sv"                                 -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_uif.sv"                          -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xreconf_basic_acq.sv"                           -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_basic_acq.sv"                    -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_analog.sv"                        -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_analog.sv"                 -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_analog_av.sv"                     -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_analog_av.sv"              -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_datactrl_av.sv"                  -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_analog_datactrl_av.sv"           -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_rmw_av.sv"                       -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_analog_rmw_av.sv"                -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_ctrlsm.sv"                       -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_analog_ctrlsm.sv"                -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation.sv"           -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_offset_cancellation.sv"    -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation_av.sv"        -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_offset_cancellation_av.sv" -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_eyemon.sv"                        -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_eyemon.sv"                 -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe.sv"                           -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe.sv"                    -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_adce.sv"                          -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_adce.sv"                   -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd.sv"                           -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd.sv"                    -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_av.sv"                        -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_cal_av.sv"                    -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_control_av.sv"                -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_av.sv"                 -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_cal_av.sv"             -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_control_av.sv"         -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_mif.sv"                           -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_mif.sv"                    -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_mif.sv"                            -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_mif_ctrl.sv"                       -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_mif_avmm.sv"                       -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_mif.sv"                     -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_mif_ctrl.sv"                -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_mif_avmm.sv"                -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_pll.sv"                           -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_pll.sv"                    -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_pll.sv"                            -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_pll_ctrl.sv"                       -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_pll.sv"                     -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_pll_ctrl.sv"                -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_soc.sv"                           -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_ram.sv"                       -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_direct.sv"                        -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_arbiter_acq.sv"                                 -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_basic.sv"                         -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_arbiter_acq.sv"                          -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_basic.sv"                  -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_xrbasic_l2p_addr.sv"                             -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_xrbasic_l2p_ch.sv"                               -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_xrbasic_l2p_rom.sv"                              -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_xrbasic_lif_csr.sv"                              -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_xrbasic_lif.sv"                                  -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_basic.sv"                          -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_l2p_addr.sv"                      -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_l2p_ch.sv"                        -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_l2p_rom.sv"                       -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_lif_csr.sv"                       -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_lif.sv"                           -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_basic.sv"                   -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_arbiter.sv"                                -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_m2s.sv"                                    -work reconfig
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/altera_wait_generate.v"                             -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/alt_xcvr_csr_selector.sv"                           -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_arbiter.sv"                         -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_m2s.sv"                             -work reconfig
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/altera_wait_generate.v"                      -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_csr_selector.sv"                    -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/sv_reconfig_bundle_to_basic.sv"                     -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/sv_reconfig_bundle_to_basic.sv"              -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_reconfig_bundle_to_basic.sv"                     -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/av_reconfig_bundle_to_xcvr.sv"                      -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_reconfig_bundle_to_basic.sv"              -work reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/alt_xcvr_reconfig/mentor/av_reconfig_bundle_to_xcvr.sv"               -work reconfig
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/reconfig_sim/reconfig.vhd"                                                                       
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_reset_sim/altera_xcvr_reset_control/altera_xcvr_functions.sv"                   -work rx_reset
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_reset_sim/altera_xcvr_reset_control/mentor/altera_xcvr_functions.sv"            -work rx_reset
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_reset_sim/altera_xcvr_reset_control/alt_xcvr_resync.sv"                         -work rx_reset
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_reset_sim/altera_xcvr_reset_control/mentor/alt_xcvr_resync.sv"                  -work rx_reset
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_reset_sim/altera_xcvr_reset_control/altera_xcvr_reset_control.sv"               -work rx_reset
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_reset_sim/altera_xcvr_reset_control/alt_xcvr_reset_counter.sv"                  -work rx_reset
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_reset_sim/altera_xcvr_reset_control/mentor/altera_xcvr_reset_control.sv"        -work rx_reset
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/rx_reset_sim/altera_xcvr_reset_control/mentor/alt_xcvr_reset_counter.sv"           -work rx_reset
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/rx_reset_sim/rx_reset.vhd"                                                                       

vcom -93 -work work {/home/tomas/ws_cad/sdr.hdl/rx/xcvr.vhd}
vcom -93 -work work {/home/tomas/ws_cad/sdr.hdl/rx/C5G.vhd}

vcom -93 -work work {/home/tomas/ws_cad/sdr.hdl/rx/tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -L rx -L reconfig -L rx_reset -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
