set_global_assignment -entity "AUDIO" -library "lib_AUDIO" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "AUDIO" -library "lib_AUDIO" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "AUDIO" -library "lib_AUDIO" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_AUDIO" -name SPD_FILE [file join $::quartus(sip_path) "../AUDIO.spd"]
set_global_assignment -library "lib_AUDIO" -name MISC_FILE [file join $::quartus(sip_path) "../../AUDIO.qsys"]

set_global_assignment -library "lib_AUDIO" -name MISC_FILE [file join $::quartus(sip_path) "AUDIO.vhd"]
