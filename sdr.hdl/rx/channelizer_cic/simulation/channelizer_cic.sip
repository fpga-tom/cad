set_global_assignment -entity "channelizer_cic" -library "lib_channelizer_cic" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "channelizer_cic" -library "lib_channelizer_cic" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "channelizer_cic" -library "lib_channelizer_cic" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_channelizer_cic" -name SPD_FILE [file join $::quartus(sip_path) "../channelizer_cic.spd"]
set_global_assignment -library "lib_channelizer_cic" -name MISC_FILE [file join $::quartus(sip_path) "../../channelizer_cic.qsys"]

set_global_assignment -library "lib_channelizer_cic" -name MISC_FILE [file join $::quartus(sip_path) "channelizer_cic.vhd"]
set_global_assignment -library "lib_channelizer_cic" -name MISC_FILE [file join $::quartus(sip_path) "submodules/channelizer_cic_cic_ii_0.vo"]
