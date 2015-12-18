
cp -f C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/NCO/simulation/submodules/NCO_nco_ii_0_sin.hex ./
cp -f C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/NCO/simulation/submodules/NCO_nco_ii_0_cos.hex ./

ncvlog      "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/CICU/simulation/submodules/CICU_cic_ii_0.vo"                                   -work cic_ii_0    -cdslib <<cic_ii_0>>   
ncvlog      "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/CICU/simulation/CICU.v"                                                                                                 
ncvlog      "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/NCO/simulation/submodules/NCO_nco_ii_0.vo"                                     -work nco_ii_0    -cdslib <<nco_ii_0>>   
ncvlog      "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/NCO/simulation/NCO.v"                                                                                                   
ncvlog      "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/RS232/simulation/submodules/altera_up_rs232_counters.v"                        -work rs232_0     -cdslib <<rs232_0>>    
ncvlog      "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/RS232/simulation/submodules/altera_up_rs232_in_deserializer.v"                 -work rs232_0     -cdslib <<rs232_0>>    
ncvlog      "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/RS232/simulation/submodules/altera_up_rs232_out_serializer.v"                  -work rs232_0     -cdslib <<rs232_0>>    
ncvlog      "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/RS232/simulation/submodules/altera_up_sync_fifo.v"                             -work rs232_0     -cdslib <<rs232_0>>    
ncvlog      "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/RS232/simulation/submodules/RS232_rs232_0.v"                                   -work rs232_0     -cdslib <<rs232_0>>    
ncvlog      "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/RS232/simulation/RS232.v"                                                                                               
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/altera_xcvr_functions.sv"                  -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/sv_reconfig_bundle_to_xcvr.sv"             -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/sv_reconfig_bundle_to_ip.sv"               -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/sv_reconfig_bundle_merger.sv"              -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_xcvr_h.sv"                              -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_xcvr_avmm_csr.sv"                       -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_tx_pma_ch.sv"                           -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_tx_pma.sv"                              -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_rx_pma.sv"                              -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_pma.sv"                                 -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_pcs_ch.sv"                              -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_pcs.sv"                                 -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_xcvr_avmm.sv"                           -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_xcvr_native.sv"                         -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_xcvr_plls.sv"                           -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_xcvr_data_adapter.sv"                   -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_reconfig_bundle_to_basic.sv"            -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_reconfig_bundle_to_xcvr.sv"             -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_hssi_8g_rx_pcs_rbc.sv"                  -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_hssi_8g_tx_pcs_rbc.sv"                  -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_hssi_common_pcs_pma_interface_rbc.sv"   -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_hssi_common_pld_pcs_interface_rbc.sv"   -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_hssi_pipe_gen1_2_rbc.sv"                -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_hssi_rx_pcs_pma_interface_rbc.sv"       -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_hssi_rx_pld_pcs_interface_rbc.sv"       -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_hssi_tx_pcs_pma_interface_rbc.sv"       -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/av_hssi_tx_pld_pcs_interface_rbc.sv"       -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/alt_reset_ctrl_lego.sv"                    -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/alt_reset_ctrl_tgx_cdrauto.sv"             -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/alt_xcvr_resync.sv"                        -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/alt_xcvr_csr_common_h.sv"                  -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/alt_xcvr_csr_common.sv"                    -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/alt_xcvr_csr_pcs8g_h.sv"                   -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/alt_xcvr_csr_pcs8g.sv"                     -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/alt_xcvr_csr_selector.sv"                  -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/alt_xcvr_mgmt2dec.sv"                      -work tx_native   -cdslib <<tx_native>>  
ncvlog      "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/altera_wait_generate.v"                    -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/altera_xcvr_native_av_functions_h.sv"      -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/altera_xcvr_native_av.sv"                  -work tx_native   -cdslib <<tx_native>>  
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/altera_xcvr_native_cv/altera_xcvr_data_adapter_av.sv"            -work tx_native   -cdslib <<tx_native>>  
ncvhdl -v93 "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_native_sim/tx_native.vhd"                                                                                            
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reset_sim/altera_xcvr_reset_control/altera_xcvr_functions.sv"               -work tx_reset    -cdslib <<tx_reset>>   
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reset_sim/altera_xcvr_reset_control/alt_xcvr_resync.sv"                     -work tx_reset    -cdslib <<tx_reset>>   
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reset_sim/altera_xcvr_reset_control/altera_xcvr_reset_control.sv"           -work tx_reset    -cdslib <<tx_reset>>   
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reset_sim/altera_xcvr_reset_control/alt_xcvr_reset_counter.sv"              -work tx_reset    -cdslib <<tx_reset>>   
ncvhdl -v93 "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reset_sim/tx_reset.vhd"                                                                                              
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/altera_xcvr_functions.sv"                    -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_xcvr_h.sv"                                -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_resync.sv"                          -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_h.sv"                      -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig.sv"                        -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cal_seq.sv"                -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_cif.sv"                          -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_uif.sv"                          -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_basic_acq.sv"                    -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_analog.sv"                 -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_analog_av.sv"              -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_datactrl_av.sv"           -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_rmw_av.sv"                -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xreconf_analog_ctrlsm.sv"                -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation.sv"    -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_offset_cancellation_av.sv" -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_eyemon.sv"                 -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dfe.sv"                    -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_adce.sv"                   -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd.sv"                    -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_av.sv"                 -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_cal_av.sv"             -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_dcd_control_av.sv"         -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_mif.sv"                    -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_mif.sv"                     -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_mif_ctrl.sv"                -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_mif_avmm.sv"                -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_pll.sv"                    -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_pll.sv"                     -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_pll_ctrl.sv"                -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_soc.sv"                    -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_cpu_ram.sv"                -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_direct.sv"                 -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_arbiter_acq.sv"                          -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_reconfig_basic.sv"                  -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_l2p_addr.sv"                      -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_l2p_ch.sv"                        -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_l2p_rom.sv"                       -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_lif_csr.sv"                       -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_xrbasic_lif.sv"                           -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_xcvr_reconfig_basic.sv"                   -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_arbiter.sv"                         -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_m2s.sv"                             -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog      "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/altera_wait_generate.v"                      -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/alt_xcvr_csr_selector.sv"                    -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/sv_reconfig_bundle_to_basic.sv"              -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_reconfig_bundle_to_basic.sv"              -work tx_reconfig -cdslib <<tx_reconfig>>
ncvlog -sv  "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/alt_xcvr_reconfig/av_reconfig_bundle_to_xcvr.sv"               -work tx_reconfig -cdslib <<tx_reconfig>>
ncvhdl -v93 "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/tx_reconfig_sim/tx_reconfig.vhd"                                                                                        
ncvhdl -v93 "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/PLL_sim/PLL.vho"                                                                                                        
ncvhdl -v93 "C:/Users/tomas/Downloads/CodeGenerated/C5G/C5G/PLL1_sim/PLL1.vho"                                                                                                      
