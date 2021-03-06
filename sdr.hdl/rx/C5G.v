
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module C5G(

	//////////// CLOCK //////////
	input 		          		CLOCK_125_p,
	input 		          		CLOCK_50_B5B,
	input 		          		CLOCK_50_B6A,
	input 		          		CLOCK_50_B7A,
	input 		          		CLOCK_50_B8A,

	//////////// LED //////////
	output		     [7:0]		LEDG,
	output		     [9:0]		LEDR,

	//////////// KEY //////////
	input 		          		CPU_RESET_n,
	input 		     [3:0]		KEY,

	//////////// I2C for Audio/HDMI-TX/Si5338/HSMC //////////
	output		          		I2C_SCL,
	inout 		          		I2C_SDA,

	//////////// Uart to USB //////////
	input 		          		UART_RX,
	output		          		UART_TX,

	//////////// HSMC, HSMC connect to XTS - Transceiver to SMA //////////
	input 		     [2:1]		CLKIN_P,
	input 		          		CLKIN0,
	output		     [2:1]		CLKOUT_P,
	output		          		CLKOUT0,
	input 		     [3:0]		RX_P,
	output		     [3:0]		TX_P
);



//=======================================================
//  REG/WIRE declarations
//=======================================================




//=======================================================
//  Structural coding
//=======================================================



endmodule
