set_global_assignment -entity "RS232" -library "lib_RS232" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "RS232" -library "lib_RS232" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "RS232" -library "lib_RS232" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_RS232" -name SPD_FILE [file join $::quartus(sip_path) "../RS232.spd"]
set_global_assignment -library "lib_RS232" -name MISC_FILE [file join $::quartus(sip_path) "../../RS232.qsys"]

set_global_assignment -library "lib_RS232" -name MISC_FILE [file join $::quartus(sip_path) "RS232.vhd"]
