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

	
	component MODULATOR is
		port(
			clock 							: in  std_logic;
			reset								: in  std_logic;
			DSM_in 							: in std_logic_vector (17 downto 0);
			tx_serial_data					: out std_logic
		);
	end component MODULATOR;
	
	component NCO is
		port (
			clk       : in  std_logic                     := 'X';             -- clk
			reset_n   : in  std_logic                     := 'X';             -- reset_n
			clken     : in  std_logic                     := 'X';             -- clken
			phi_inc_i : in  std_logic_vector(31 downto 0) := (others => 'X'); -- phi_inc_i
			fsin_o    : out std_logic_vector(17 downto 0);                    -- fsin_o
			out_valid : out std_logic                                         -- out_valid
		);
	end component NCO;

	signal clock 							: std_logic := '0';
	signal clock1 							: std_logic := '0';
	signal reset 							: std_logic := '1';
	signal reset_n 						: std_logic;
	signal cnt0								: std_logic_vector(7 downto 0) := (others=>'0');
	signal out_valid						: std_logic;
	signal phi_inc_i 						: std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(343597, 32));
	signal fsin_o    						: std_logic_vector(17 downto 0);
	signal tx_serial_data				: std_logic;
	
	
	
begin
	clock <= not clock after 8ns;
	clock1 <= not clock1 after 800ps;
	reset <= '0' after 100ns;
	reset_n <= not reset;
	
	process
		file outfile : text is out "serial.dat";
		variable outline : line;
	begin
		wait until clock1='0' and clock1'event;
		write(outline, tx_serial_data);
		writeline(outfile, outline);
	end process;
	
	process
		file outfile : text is out "nco.dat";
		variable outline : line;
	begin
		wait until clock='0' and clock'event;
		write(outline, fsin_o);
		writeline(outfile, outline);
	end process;
	
	process(clock)
	begin
		if rising_edge(clock) then
			cnt0 <= cnt0 + 1;
		end if;
	end process;
	


	u0 : NCO
		port map (
			clk       => clock,       -- clk.clk
			reset_n   => reset_n,   -- rst.reset_n
			clken     => '1',     --  in.clken
			phi_inc_i => phi_inc_i, --    .phi_inc_i
			fsin_o    => fsin_o,    -- out.fsin_o
			out_valid => out_valid  --    .out_valid
		);


	
	m_0 : MODULATOR
		port map(
			clock => clock,
			reset => reset,
			DSM_in => fsin_o,
			tx_serial_data => tx_serial_data
		);
	
	
end;