set_global_assignment -entity "CICU" -library "lib_CICU" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "CICU" -library "lib_CICU" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "CICU" -library "lib_CICU" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_CICU" -name SPD_FILE [file join $::quartus(sip_path) "../CICU.spd"]
set_global_assignment -library "lib_CICU" -name MISC_FILE [file join $::quartus(sip_path) "../../CICU.qsys"]

set_global_assignment -library "lib_CICU" -name MISC_FILE [file join $::quartus(sip_path) "CICU.vhd"]
set_global_assignment -library "lib_CICU" -name MISC_FILE [file join $::quartus(sip_path) "submodules/CICU_cic_ii_0.vo"]
