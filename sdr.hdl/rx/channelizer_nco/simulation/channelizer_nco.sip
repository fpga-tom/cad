set_global_assignment -entity "channelizer_nco" -library "lib_channelizer_nco" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "channelizer_nco" -library "lib_channelizer_nco" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "channelizer_nco" -library "lib_channelizer_nco" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_channelizer_nco" -name SPD_FILE [file join $::quartus(sip_path) "../channelizer_nco.spd"]
set_global_assignment -library "lib_channelizer_nco" -name MISC_FILE [file join $::quartus(sip_path) "../../channelizer_nco.qsys"]

set_global_assignment -library "lib_channelizer_nco" -name MISC_FILE [file join $::quartus(sip_path) "channelizer_nco.vhd"]
set_global_assignment -library "lib_channelizer_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/channelizer_nco_nco_ii_0_tb.vhd"]
set_global_assignment -library "lib_channelizer_nco" -name MISC_FILE [file join $::quartus(sip_path) "submodules/channelizer_nco_nco_ii_0.vo"]
