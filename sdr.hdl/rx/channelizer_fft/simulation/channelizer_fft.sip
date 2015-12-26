set_global_assignment -entity "channelizer_fft" -library "lib_channelizer_fft" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "channelizer_fft" -library "lib_channelizer_fft" -name IP_TOOL_VERSION "15.1"
set_global_assignment -entity "channelizer_fft" -library "lib_channelizer_fft" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_channelizer_fft" -name SPD_FILE [file join $::quartus(sip_path) "../channelizer_fft.spd"]
set_global_assignment -library "lib_channelizer_fft" -name MISC_FILE [file join $::quartus(sip_path) "../../channelizer_fft.qsys"]

set_global_assignment -library "lib_channelizer_fft" -name MISC_FILE [file join $::quartus(sip_path) "channelizer_fft.vhd"]
set_global_assignment -library "lib_channelizer_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/channelizer_fft_fft_ii_0_opt_twr2.hex"]
set_global_assignment -library "lib_channelizer_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/channelizer_fft_fft_ii_0_opt_twi1.hex"]
set_global_assignment -library "lib_channelizer_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/channelizer_fft_fft_ii_0_opt_twr1.hex"]
set_global_assignment -library "lib_channelizer_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/channelizer_fft_fft_ii_0_opt_twi2.hex"]
set_global_assignment -library "lib_channelizer_fft" -name MISC_FILE [file join $::quartus(sip_path) "submodules/channelizer_fft_fft_ii_0.vo"]
