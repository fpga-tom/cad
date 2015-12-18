set_global_assignment -entity "NCO" -library "lib_NCO" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "NCO" -library "lib_NCO" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "NCO" -library "lib_NCO" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_NCO" -name SPD_FILE [file join $::quartus(sip_path) "../NCO.spd"]
set_global_assignment -library "lib_NCO" -name MISC_FILE [file join $::quartus(sip_path) "../../NCO.qsys"]

set_global_assignment -library "lib_NCO" -name MISC_FILE [file join $::quartus(sip_path) "NCO.v"]
set_global_assignment -library "lib_NCO" -name MISC_FILE [file join $::quartus(sip_path) "submodules/NCO_nco_ii_0_sin.hex"]
set_global_assignment -library "lib_NCO" -name MISC_FILE [file join $::quartus(sip_path) "submodules/NCO_nco_ii_0_cos.hex"]
set_global_assignment -library "lib_NCO" -name MISC_FILE [file join $::quartus(sip_path) "submodules/NCO_nco_ii_0_tb.vhd"]
set_global_assignment -library "lib_NCO" -name MISC_FILE [file join $::quartus(sip_path) "submodules/NCO_nco_ii_0.vo"]
