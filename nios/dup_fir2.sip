set_global_assignment -entity "dup_fir2" -library "lib_dup_fir2" -name IP_TOOL_NAME "altera_fir_compiler_ii"
set_global_assignment -entity "dup_fir2" -library "lib_dup_fir2" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "dup_fir2" -library "lib_dup_fir2" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_dup_fir2" -name SPD_FILE [file join $::quartus(sip_path) "dup_fir2.spd"]

set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dspba_library_package.vhd"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dspba_library.vhd"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/auk_dspip_math_pkg_hpfir.vhd"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/auk_dspip_lib_pkg_hpfir.vhd"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/auk_dspip_avalon_streaming_controller_hpfir.vhd"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/auk_dspip_avalon_streaming_sink_hpfir.vhd"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/auk_dspip_avalon_streaming_source_hpfir.vhd"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/auk_dspip_roundsat_hpfir.vhd"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/altera_avalon_sc_fifo.v"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dup_fir2_rtl.vhd"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dup_fir2_ast.vhd"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dup_fir2.vhd"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dup_fir2.sdc"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dup_fir2_nativelink.tcl"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dup_fir2_msim.tcl"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dup_fir2_tb.vhd"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dup_fir2_mlab.m"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dup_fir2_model.m"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dup_fir2_coef_int.txt"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dup_fir2_input.txt"]
set_global_assignment -library "lib_dup_fir2" -name MISC_FILE [file join $::quartus(sip_path) "dup_fir2_sim/dup_fir2_param.txt"]
