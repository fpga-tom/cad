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
vlib C5G_iputf_libs/cic_ii_0
vmap cic_ii_0 ./C5G_iputf_libs/cic_ii_0
vlib C5G_iputf_libs/nco_ii_0
vmap nco_ii_0 ./C5G_iputf_libs/nco_ii_0
vlib C5G_iputf_libs/refgen_tx
vmap refgen_tx ./C5G_iputf_libs/refgen_tx
vlib C5G_iputf_libs/refgen_reset
vmap refgen_reset ./C5G_iputf_libs/refgen_reset
vlib C5G_iputf_libs/refgen_reconfig
vmap refgen_reconfig ./C5G_iputf_libs/refgen_reconfig
vlib C5G_iputf_libs/recv_rx
vmap recv_rx ./C5G_iputf_libs/recv_rx
vlib C5G_iputf_libs/recv_reset
vmap recv_reset ./C5G_iputf_libs/recv_reset
vlib C5G_iputf_libs/recv_reconfig
vmap recv_reconfig ./C5G_iputf_libs/recv_reconfig
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vlog     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_cic/simulation/submodules/channelizer_cic_cic_ii_0.vo"                        -work cic_ii_0       
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_cic/simulation/channelizer_cic.vhd"                                                                
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/dspba_library_package.vhd"                                                                 
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/dspba_library.vhd"                                                                         
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/auk_dspip_math_pkg_hpfir.vhd"                                                              
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/auk_dspip_lib_pkg_hpfir.vhd"                                                               
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/auk_dspip_avalon_streaming_controller_hpfir.vhd"                                           
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/auk_dspip_avalon_streaming_sink_hpfir.vhd"                                                 
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/auk_dspip_avalon_streaming_source_hpfir.vhd"                                               
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/auk_dspip_roundsat_hpfir.vhd"                                                              
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/altera_avalon_sc_fifo.v"                                                                   
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/channelizer_fir_rtl.vhd"                                                                   
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/channelizer_fir_ast.vhd"                                                                   
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/channelizer_fir.vhd"                                                                       
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_fir_sim/channelizer_fir_tb.vhd"                                                                    
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_nco/simulation/submodules/channelizer_nco_nco_ii_0.vo"                        -work nco_ii_0       
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/channelizer_nco/simulation/channelizer_nco.vhd"                                                                
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/altera_xcvr_functions.sv"                             -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/altera_xcvr_functions.sv"                      -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/sv_reconfig_bundle_to_xcvr.sv"                        -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/sv_reconfig_bundle_to_ip.sv"                          -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/sv_reconfig_bundle_merger.sv"                         -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/sv_reconfig_bundle_to_xcvr.sv"                 -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/sv_reconfig_bundle_to_ip.sv"                   -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/sv_reconfig_bundle_merger.sv"                  -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_xcvr_h.sv"                                         -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_xcvr_avmm_csr.sv"                                  -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_tx_pma_ch.sv"                                      -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_tx_pma.sv"                                         -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_rx_pma.sv"                                         -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_pma.sv"                                            -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_pcs_ch.sv"                                         -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_pcs.sv"                                            -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_xcvr_avmm.sv"                                      -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_xcvr_native.sv"                                    -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_xcvr_plls.sv"                                      -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_xcvr_data_adapter.sv"                              -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_reconfig_bundle_to_basic.sv"                       -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_reconfig_bundle_to_xcvr.sv"                        -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_xcvr_h.sv"                                  -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_xcvr_avmm_csr.sv"                           -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_tx_pma_ch.sv"                               -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_tx_pma.sv"                                  -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_rx_pma.sv"                                  -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_pma.sv"                                     -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_pcs_ch.sv"                                  -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_pcs.sv"                                     -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_xcvr_avmm.sv"                               -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_xcvr_native.sv"                             -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_xcvr_plls.sv"                               -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_xcvr_data_adapter.sv"                       -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_reconfig_bundle_to_basic.sv"                -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_reconfig_bundle_to_xcvr.sv"                 -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_hssi_8g_rx_pcs_rbc.sv"                             -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_hssi_8g_tx_pcs_rbc.sv"                             -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_hssi_common_pcs_pma_interface_rbc.sv"              -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_hssi_common_pld_pcs_interface_rbc.sv"              -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_hssi_pipe_gen1_2_rbc.sv"                           -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_hssi_rx_pcs_pma_interface_rbc.sv"                  -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_hssi_rx_pld_pcs_interface_rbc.sv"                  -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_hssi_tx_pcs_pma_interface_rbc.sv"                  -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/av_hssi_tx_pld_pcs_interface_rbc.sv"                  -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_hssi_8g_rx_pcs_rbc.sv"                      -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_hssi_8g_tx_pcs_rbc.sv"                      -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_hssi_common_pcs_pma_interface_rbc.sv"       -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_hssi_common_pld_pcs_interface_rbc.sv"       -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_hssi_pipe_gen1_2_rbc.sv"                    -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_hssi_rx_pcs_pma_interface_rbc.sv"           -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_hssi_rx_pld_pcs_interface_rbc.sv"           -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_hssi_tx_pcs_pma_interface_rbc.sv"           -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/av_hssi_tx_pld_pcs_interface_rbc.sv"           -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/alt_reset_ctrl_lego.sv"                               -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/alt_reset_ctrl_tgx_cdrauto.sv"                        -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/alt_xcvr_resync.sv"                                   -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/alt_reset_ctrl_lego.sv"                        -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/alt_reset_ctrl_tgx_cdrauto.sv"                 -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_resync.sv"                            -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/alt_xcvr_csr_common_h.sv"                             -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/alt_xcvr_csr_common.sv"                               -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/alt_xcvr_csr_pcs8g_h.sv"                              -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/alt_xcvr_csr_pcs8g.sv"                                -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/alt_xcvr_csr_selector.sv"                             -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/alt_xcvr_mgmt2dec.sv"                                 -work refgen_tx      
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/altera_wait_generate.v"                               -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_common_h.sv"                      -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_common.sv"                        -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_pcs8g_h.sv"                       -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_pcs8g.sv"                         -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_selector.sv"                      -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_mgmt2dec.sv"                          -work refgen_tx      
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/altera_wait_generate.v"                        -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/altera_xcvr_native_av_functions_h.sv"                 -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/altera_xcvr_native_av.sv"                             -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/altera_xcvr_data_adapter_av.sv"                       -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/altera_xcvr_native_av_functions_h.sv"          -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/altera_xcvr_native_av.sv"                      -work refgen_tx      
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/altera_xcvr_native_cv/mentor/altera_xcvr_data_adapter_av.sv"                -work refgen_tx      
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/refgen_tx_sim/refgen_tx.vhd"                                                                                   
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reset_sim/altera_xcvr_reset_control/altera_xcvr_functions.sv"                      -work refgen_reset   
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reset_sim/altera_xcvr_reset_control/mentor/altera_xcvr_functions.sv"               -work refgen_reset   
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reset_sim/altera_xcvr_reset_control/alt_xcvr_resync.sv"                            -work refgen_reset   
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reset_sim/altera_xcvr_reset_control/mentor/alt_xcvr_resync.sv"                     -work refgen_reset   
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reset_sim/altera_xcvr_reset_control/altera_xcvr_reset_control.sv"                  -work refgen_reset   
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reset_sim/altera_xcvr_reset_control/alt_xcvr_reset_counter.sv"                     -work refgen_reset   
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reset_sim/altera_xcvr_reset_control/mentor/altera_xcvr_reset_control.sv"           -work refgen_reset   
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reset_sim/altera_xcvr_reset_control/mentor/alt_xcvr_reset_counter.sv"              -work refgen_reset   
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reset_sim/refgen_reset.vhd"                                                                             
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/altera_xcvr_functions.sv"                           -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/altera_xcvr_functions.sv"                    -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_xcvr_h.sv"                                       -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_h.sv"                                -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_resync.sv"                                 -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_resync.sv"                          -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_h.sv"                             -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_h.sv"                      -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig.sv"                               -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig.sv"                        -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cal_seq.sv"                       -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_cal_seq.sv"                -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_cif.sv"                                 -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_cif.sv"                          -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_uif.sv"                                 -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_uif.sv"                          -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_basic_acq.sv"                           -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_basic_acq.sv"                    -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_analog.sv"                        -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_analog.sv"                 -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_analog_av.sv"                     -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_analog_av.sv"              -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_datactrl_av.sv"                  -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_analog_datactrl_av.sv"           -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_rmw_av.sv"                       -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_analog_rmw_av.sv"                -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_ctrlsm.sv"                       -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_analog_ctrlsm.sv"                -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation.sv"           -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_offset_cancellation.sv"    -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation_av.sv"        -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_offset_cancellation_av.sv" -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_eyemon.sv"                        -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_eyemon.sv"                 -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe.sv"                           -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe.sv"                    -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_adce.sv"                          -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_adce.sv"                   -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd.sv"                           -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd.sv"                    -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_av.sv"                        -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_cal_av.sv"                    -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_control_av.sv"                -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_av.sv"                 -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_cal_av.sv"             -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_control_av.sv"         -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_mif.sv"                           -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_mif.sv"                    -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_mif.sv"                            -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_mif_ctrl.sv"                       -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_mif_avmm.sv"                       -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_mif.sv"                     -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_mif_ctrl.sv"                -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_mif_avmm.sv"                -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_pll.sv"                           -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_pll.sv"                    -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_pll.sv"                            -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_pll_ctrl.sv"                       -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_pll.sv"                     -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_pll_ctrl.sv"                -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_soc.sv"                           -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_ram.sv"                       -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_direct.sv"                        -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_arbiter_acq.sv"                                 -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_basic.sv"                         -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_arbiter_acq.sv"                          -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_basic.sv"                  -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_l2p_addr.sv"                             -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_l2p_ch.sv"                               -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_l2p_rom.sv"                              -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_lif_csr.sv"                              -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_lif.sv"                                  -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_basic.sv"                          -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_l2p_addr.sv"                      -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_l2p_ch.sv"                        -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_l2p_rom.sv"                       -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_lif_csr.sv"                       -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_lif.sv"                           -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_basic.sv"                   -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_arbiter.sv"                                -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_m2s.sv"                                    -work refgen_reconfig
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/altera_wait_generate.v"                             -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_csr_selector.sv"                           -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_arbiter.sv"                         -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_m2s.sv"                             -work refgen_reconfig
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/altera_wait_generate.v"                      -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_csr_selector.sv"                    -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/sv_reconfig_bundle_to_basic.sv"                     -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/sv_reconfig_bundle_to_basic.sv"              -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_reconfig_bundle_to_basic.sv"                     -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/av_reconfig_bundle_to_xcvr.sv"                      -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_reconfig_bundle_to_basic.sv"              -work refgen_reconfig
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/alt_xcvr_reconfig/mentor/av_reconfig_bundle_to_xcvr.sv"               -work refgen_reconfig
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/refgen_reconfig_sim/refgen_reconfig.vhd"                                                                       
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/altera_xcvr_functions.sv"                               -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/altera_xcvr_functions.sv"                        -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/sv_reconfig_bundle_to_xcvr.sv"                          -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/sv_reconfig_bundle_to_ip.sv"                            -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/sv_reconfig_bundle_merger.sv"                           -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/sv_reconfig_bundle_to_xcvr.sv"                   -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/sv_reconfig_bundle_to_ip.sv"                     -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/sv_reconfig_bundle_merger.sv"                    -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_xcvr_h.sv"                                           -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_xcvr_avmm_csr.sv"                                    -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_tx_pma_ch.sv"                                        -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_tx_pma.sv"                                           -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_rx_pma.sv"                                           -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_pma.sv"                                              -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_pcs_ch.sv"                                           -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_pcs.sv"                                              -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_xcvr_avmm.sv"                                        -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_xcvr_native.sv"                                      -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_xcvr_plls.sv"                                        -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_xcvr_data_adapter.sv"                                -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_reconfig_bundle_to_basic.sv"                         -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_reconfig_bundle_to_xcvr.sv"                          -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_xcvr_h.sv"                                    -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_xcvr_avmm_csr.sv"                             -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_tx_pma_ch.sv"                                 -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_tx_pma.sv"                                    -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_rx_pma.sv"                                    -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_pma.sv"                                       -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_pcs_ch.sv"                                    -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_pcs.sv"                                       -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_xcvr_avmm.sv"                                 -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_xcvr_native.sv"                               -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_xcvr_plls.sv"                                 -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_xcvr_data_adapter.sv"                         -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_reconfig_bundle_to_basic.sv"                  -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_reconfig_bundle_to_xcvr.sv"                   -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_hssi_8g_rx_pcs_rbc.sv"                               -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_hssi_8g_tx_pcs_rbc.sv"                               -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_hssi_common_pcs_pma_interface_rbc.sv"                -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_hssi_common_pld_pcs_interface_rbc.sv"                -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_hssi_pipe_gen1_2_rbc.sv"                             -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_hssi_rx_pcs_pma_interface_rbc.sv"                    -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_hssi_rx_pld_pcs_interface_rbc.sv"                    -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_hssi_tx_pcs_pma_interface_rbc.sv"                    -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/av_hssi_tx_pld_pcs_interface_rbc.sv"                    -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_hssi_8g_rx_pcs_rbc.sv"                        -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_hssi_8g_tx_pcs_rbc.sv"                        -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_hssi_common_pcs_pma_interface_rbc.sv"         -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_hssi_common_pld_pcs_interface_rbc.sv"         -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_hssi_pipe_gen1_2_rbc.sv"                      -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_hssi_rx_pcs_pma_interface_rbc.sv"             -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_hssi_rx_pld_pcs_interface_rbc.sv"             -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_hssi_tx_pcs_pma_interface_rbc.sv"             -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/av_hssi_tx_pld_pcs_interface_rbc.sv"             -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/alt_reset_ctrl_lego.sv"                                 -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/alt_reset_ctrl_tgx_cdrauto.sv"                          -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/alt_xcvr_resync.sv"                                     -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/alt_reset_ctrl_lego.sv"                          -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/alt_reset_ctrl_tgx_cdrauto.sv"                   -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_resync.sv"                              -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/alt_xcvr_csr_common_h.sv"                               -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/alt_xcvr_csr_common.sv"                                 -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/alt_xcvr_csr_pcs8g_h.sv"                                -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/alt_xcvr_csr_pcs8g.sv"                                  -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/alt_xcvr_csr_selector.sv"                               -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/alt_xcvr_mgmt2dec.sv"                                   -work recv_rx        
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/altera_wait_generate.v"                                 -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_common_h.sv"                        -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_common.sv"                          -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_pcs8g_h.sv"                         -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_pcs8g.sv"                           -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_csr_selector.sv"                        -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/alt_xcvr_mgmt2dec.sv"                            -work recv_rx        
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/altera_wait_generate.v"                          -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/altera_xcvr_native_av_functions_h.sv"                   -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/altera_xcvr_native_av.sv"                               -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/altera_xcvr_data_adapter_av.sv"                         -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/altera_xcvr_native_av_functions_h.sv"            -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/altera_xcvr_native_av.sv"                        -work recv_rx        
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/altera_xcvr_native_cv/mentor/altera_xcvr_data_adapter_av.sv"                  -work recv_rx        
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/recv_rx_sim/recv_rx.vhd"                                                                                       
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reset_sim/altera_xcvr_reset_control/altera_xcvr_functions.sv"                        -work recv_reset     
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reset_sim/altera_xcvr_reset_control/mentor/altera_xcvr_functions.sv"                 -work recv_reset     
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reset_sim/altera_xcvr_reset_control/alt_xcvr_resync.sv"                              -work recv_reset     
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reset_sim/altera_xcvr_reset_control/mentor/alt_xcvr_resync.sv"                       -work recv_reset     
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reset_sim/altera_xcvr_reset_control/altera_xcvr_reset_control.sv"                    -work recv_reset     
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reset_sim/altera_xcvr_reset_control/alt_xcvr_reset_counter.sv"                       -work recv_reset     
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reset_sim/altera_xcvr_reset_control/mentor/altera_xcvr_reset_control.sv"             -work recv_reset     
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reset_sim/altera_xcvr_reset_control/mentor/alt_xcvr_reset_counter.sv"                -work recv_reset     
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/recv_reset_sim/recv_reset.vhd"                                                                                 
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/altera_xcvr_functions.sv"                             -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/altera_xcvr_functions.sv"                      -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_xcvr_h.sv"                                         -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_h.sv"                                  -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_resync.sv"                                   -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_resync.sv"                            -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_h.sv"                               -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_h.sv"                        -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig.sv"                                 -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig.sv"                          -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cal_seq.sv"                         -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_cal_seq.sv"                  -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_cif.sv"                                   -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_cif.sv"                            -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_uif.sv"                                   -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_uif.sv"                            -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_basic_acq.sv"                             -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_basic_acq.sv"                      -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_analog.sv"                          -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_analog.sv"                   -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_analog_av.sv"                       -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_analog_av.sv"                -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_datactrl_av.sv"                    -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_analog_datactrl_av.sv"             -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_rmw_av.sv"                         -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_analog_rmw_av.sv"                  -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_ctrlsm.sv"                         -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xreconf_analog_ctrlsm.sv"                  -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation.sv"             -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_offset_cancellation.sv"      -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation_av.sv"          -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_offset_cancellation_av.sv"   -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_eyemon.sv"                          -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_eyemon.sv"                   -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe.sv"                             -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dfe.sv"                      -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_adce.sv"                            -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_adce.sv"                     -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd.sv"                             -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd.sv"                      -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_av.sv"                          -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_cal_av.sv"                      -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_control_av.sv"                  -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_av.sv"                   -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_cal_av.sv"               -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_dcd_control_av.sv"           -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_mif.sv"                             -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_mif.sv"                      -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_mif.sv"                              -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_mif_ctrl.sv"                         -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_mif_avmm.sv"                         -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_mif.sv"                       -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_mif_ctrl.sv"                  -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_mif_avmm.sv"                  -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_pll.sv"                             -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_pll.sv"                      -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_pll.sv"                              -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_pll_ctrl.sv"                         -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_pll.sv"                       -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_pll_ctrl.sv"                  -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_soc.sv"                             -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_ram.sv"                         -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_direct.sv"                          -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_arbiter_acq.sv"                                   -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_basic.sv"                           -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_arbiter_acq.sv"                            -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_reconfig_basic.sv"                    -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_l2p_addr.sv"                               -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_l2p_ch.sv"                                 -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_l2p_rom.sv"                                -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_lif_csr.sv"                                -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_lif.sv"                                    -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_basic.sv"                            -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_l2p_addr.sv"                        -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_l2p_ch.sv"                          -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_l2p_rom.sv"                         -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_lif_csr.sv"                         -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_xrbasic_lif.sv"                             -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_xcvr_reconfig_basic.sv"                     -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_arbiter.sv"                                  -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_m2s.sv"                                      -work recv_reconfig  
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/altera_wait_generate.v"                               -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_csr_selector.sv"                             -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_arbiter.sv"                           -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_m2s.sv"                               -work recv_reconfig  
vlog     "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/altera_wait_generate.v"                        -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/alt_xcvr_csr_selector.sv"                      -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/sv_reconfig_bundle_to_basic.sv"                       -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/sv_reconfig_bundle_to_basic.sv"                -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_reconfig_bundle_to_basic.sv"                       -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/av_reconfig_bundle_to_xcvr.sv"                        -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_reconfig_bundle_to_basic.sv"                -work recv_reconfig  
vlog -sv "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/alt_xcvr_reconfig/mentor/av_reconfig_bundle_to_xcvr.sv"                 -work recv_reconfig  
vcom     "/home/tomas/ws_cad/sdr.hdl/rx/recv_reconfig_sim/recv_reconfig.vhd"                                                                           

vcom -93 -work work {/home/tomas/ws_cad/sdr.hdl/rx/channelizer.vhd}
vcom -93 -work work {/home/tomas/ws_cad/sdr.hdl/rx/xcvr.vhd}
vcom -93 -work work {/home/tomas/ws_cad/sdr.hdl/rx/C5G.vhd}
vcom -93 -work work {/home/tomas/ws_cad/sdr.hdl/rx/refgen.vhd}
vcom -93 -work work {/home/tomas/ws_cad/sdr.hdl/rx/recv.vhd}

vcom -93 -work work {/home/tomas/ws_cad/sdr.hdl/rx/tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -L cic_ii_0 -L nco_ii_0 -L refgen_tx -L refgen_reset -L refgen_reconfig -L recv_rx -L recv_reset -L recv_reconfig -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
