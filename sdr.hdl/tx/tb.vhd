library ieee;
library std;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;


entity tb is
end tb;

architecture DUT of tb is

component C5G is
port(
	CLOCK_125_p : in std_logic;
	CLOCK_50_B5B : in std_logic;
	CLOCK_50_B6A : in std_logic;
	CLOCK_50_B7A : in std_logic;
	CLOCK_50_B8A : in std_logic;
	
	CPU_RESET_n : in std_logic;
	KEY : in std_logic_vector(3 downto 0);
	
	LEDG : out std_logic_vector(7 downto 0);
	LEDR : out std_logic_vector(9 downto 0);
	
	


	
	REFCLK_p0 : in std_logic;

	SMA_GXB_TX_p : out std_logic;
	
	
	
	UART_RX : in std_logic;
	UART_TX : out std_logic;
	DSM_out : out std_logic

);
end component C5G;

	signal clock 							: std_logic := '0';
	signal clock1 							: std_logic := '0';
	signal clock2 							: std_logic := '0';
	signal CLOCK_125_p					: std_logic := '0';
	signal CLOCK_50_B5B					: std_logic := '0';
	signal CLOCK_50_B6A					: std_logic := '0';
	signal CLOCK_50_B7A					: std_logic := '0';
	signal CLOCK_50_B8A					: std_logic := '0';
	
	signal CPU_RESET_n					: std_logic := '0';
	signal KEY								: std_logic_vector(3 downto 0);
	signal LEDG								: std_logic_vector(7 downto 0);
	signal LEDR								: std_logic_vector(9 downto 0);
	signal REFCLK_p0						: std_logic := '0';
	signal SMA_GXB_TX_p					: std_logic := '0';
	signal UART_RX							: std_logic := '0';
	signal UART_TX							: std_logic := '0';
	
	signal reset 							: std_logic := '1';
	signal reset_n 						: std_logic;
	signal cnt0								: std_logic_vector(7 downto 0) := (others=>'0');
	signal out_valid						: std_logic;
	signal phi_inc_i 						: std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(343597, 32));
	signal fsin_o    						: std_logic_vector(17 downto 0);
	signal tx_serial_data				: std_logic;
	signal DSM_out							: std_logic;
	
	
	
begin
	clock <= not clock after 8ns;
	clock1 <= not clock1 after 200ps;
	clock2 <= not clock2 after 868ns;
	reset <= '0' after 1000ns;
	reset_n <= not reset;
	CPU_RESET_n <= reset_n;
	CLOCK_125_p <= clock;
	REFCLK_p0 <= clock;
	
	process
		file outfile : text is out "serial.dat";
		variable outline : line;
	begin
		wait until clock1='0' and clock1'event;
		write(outline, SMA_GXB_TX_p);
		writeline(outfile, outline);
	end process;
	
	process
		file outfile : text is out "dsm.dat";
		variable outline : line;
	begin
		wait until clock='0' and clock'event;
		write(outline, DSM_out);
		writeline(outfile, outline);
	end process;
	KEY(0) <= '1';
		
	c5g_u0 : C5G
		port map(
			CLOCK_125_p => CLOCK_125_p,
			CLOCK_50_B5B => CLOCK_50_B5B,
			CLOCK_50_B6A => CLOCK_50_B6A,
			CLOCK_50_B7A => CLOCK_50_B7A,
			CLOCK_50_B8A => CLOCK_50_B8A,
			
			CPU_RESET_n => CPU_RESET_n,
			KEY => KEY,
			
			LEDG => LEDG,
			LEDR => LEDR,
			
			REFCLK_p0 => REFCLK_p0,

			SMA_GXB_TX_p => SMA_GXB_TX_p,
			
			UART_RX => UART_RX,
			UART_TX => UART_TX,
			DSM_out => DSM_out
		);
	
	
end;