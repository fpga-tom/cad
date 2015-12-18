--library IEEE;
--use IEEE.STD_LOGIC_1164.all;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
--entity DSM is
--  port (
--   clock : in std_logic;
--   DSM_in : in std_logic_vector (7 downto 0);
--   DSM_out : out std_logic
--  );
--end DSM;
--
--architecture DSM_arch of DSM is
--  signal  DSM_Accumulator : std_logic_vector(8 downto 0) := (others => '0');
--begin
--  process(clock, DSM_in)
--  begin
--    if rising_edge(clock) then      
--      DSM_Accumulator  <=  ("0" & DSM_Accumulator(7 downto 0)) + ("0" & DSM_in);
--    end if;
--  end process;
--
--  DSM_out <= DsM_Accumulator(8);
--end DSM_arch;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity DSM is
 
  generic (
    nbits : integer := 18);
 
  port (
    DSM_in   : in  signed((nbits-1) downto 0);
    DSM_out  : out std_logic;
    clock   : in  std_logic;
    reset : in  std_logic);
 
end DSM;
 
architecture beh1 of DSM is
 
  signal del1, del2, d_q : signed(nbits+2 downto 0) := (others => '0');
  constant c1            : signed(nbits+2 downto 0) := to_signed(1, nbits+3);
  constant c_1           : signed(nbits+2 downto 0) := to_signed(-1, nbits+3);
begin  -- beh1
 
  process (clock, reset)
  begin  -- process
    if reset = '1' then                 -- asynchronous reset (active low)
      del1 <= (others => '0');
      del2 <= (others => '0');
      DSM_out <= '0';
    elsif clock'event and clock = '1' then  -- rising clock edge
      del1 <= DSM_in - d_q + del1;
      del2 <= DSM_in - d_q + del1 - d_q + del2;
      if DSM_in - d_q + del1 - d_q + del2 > 0 then
        d_q  <= shift_left(c1, nbits);
        DSM_out <= '1';
      else
        d_q  <= shift_left(c_1, nbits);
        DSM_out <= '0';
      end if;
    end if;
  end process;
 
 
end beh1;