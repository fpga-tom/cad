library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FSHIFT is
	port(
		clock	: in std_logic;
		reset : in std_logic;
		serial_data : in std_logic;
		parallel_data : out std_logic_vector(19 downto 0)
	);
end FSHIFT;

architecture structure of FSHIFT is
	signal reg0, reg1 : std_logic;
begin



parallel_data(10) <= not reg0;
parallel_data(11) <= reg0;
parallel_data(12) <= not reg0;
parallel_data(13) <= reg0;
parallel_data(14) <= not reg0;
parallel_data(15) <= reg0;
parallel_data(16) <= not reg0;
parallel_data(17) <= reg0;
parallel_data(18) <= not reg0;
parallel_data(19) <= reg0;

parallel_data(0) <= not reg1;
parallel_data(1) <= reg1;
parallel_data(2) <= not reg1;
parallel_data(3) <= reg1;
parallel_data(4) <= not reg1;
parallel_data(5) <= reg1;
parallel_data(6) <= not reg1;
parallel_data(7) <= reg1;
parallel_data(8) <= not reg1;
parallel_data(9) <= reg1;

--parallel_data(10) <= '0';
--parallel_data(11) <= '0';
--parallel_data(12) <= '0';
--parallel_data(13) <= '0';
--parallel_data(14) <= '0';
--parallel_data(15) <= '0';
--parallel_data(16) <= '0';
--parallel_data(17) <= '0';
--parallel_data(18) <= '0';
--parallel_data(19) <= '0';
--
--parallel_data(0) <= reg1n;
--parallel_data(1) <= reg1;
--parallel_data(2) <= reg1n;
--parallel_data(3) <= reg1;
--parallel_data(4) <= reg1n;
--
--parallel_data(5) <= reg0n;
--parallel_data(6) <= reg0;
--parallel_data(7) <= reg0n;
--parallel_data(8) <= reg0;
--parallel_data(9) <= reg0n;

process(clock) 
begin
	if rising_edge(clock) then
		if reset = '1' then
			reg0 <= '0';
			reg1 <= '0';
		else
			reg1 <= reg0;
			reg0 <= serial_data;
		end if;
	end if;
end process;


end structure;