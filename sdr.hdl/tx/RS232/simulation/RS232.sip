set_global_assignment -entity "RS232" -library "lib_RS232" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "RS232" -library "lib_RS232" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "RS232" -library "lib_RS232" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_RS232" -name SPD_FILE [file join $::quartus(sip_path) "../RS232.spd"]
set_global_assignment -library "lib_RS232" -name MISC_FILE [file join $::quartus(sip_path) "../../RS232.qsys"]

set_global_assignment -library "lib_RS232" -name MISC_FILE [file join $::quartus(sip_path) "RS232.v"]
set_global_assignment -library "lib_RS232" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_rs232_counters.v"]
set_global_assignment -library "lib_RS232" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_rs232_in_deserializer.v"]
set_global_assignment -library "lib_RS232" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_rs232_out_serializer.v"]
set_global_assignment -library "lib_RS232" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_sync_fifo.v"]
set_global_assignment -library "lib_RS232" -name MISC_FILE [file join $::quartus(sip_path) "submodules/RS232_rs232_0.v"]
