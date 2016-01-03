library ieee;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.NUMERIC_STD.all;
use work.tx_lib.all;

entity up is
  port(
    clock : in std_logic;
    reset : in std_logic;

    -- avalon-st sink
    sink_data          : in  std_logic_vector(bits-1 downto 0);
    sink_ready         : out std_logic;
    sink_valid         : in  std_logic;
    sink_error         : in  std_logic;
    sink_startofpacket : in  std_logic;
    sink_endofpacket   : in  std_logic;

    -- avalon-st source
    source_data          : out std_logic_vector(bits-1 downto 0);
    source_ready         : in  std_logic;
    source_valid         : out std_logic;
    source_error         : out std_logic;
    source_startofpacket : out std_logic;
    source_endofpacket   : out std_logic
    );
end up;

architecture structure of up is
begin
  -- purpose: ready driver
  -- type   : sequential
  -- inputs : clock, reset, valid
  -- outputs: ready
  ready_proc : process (clock, reset) is
    variable cnt   : std_logic_vector(13 downto 0);
    variable start : std_logic;
  begin  -- process ready_proc
    if reset = '1' then                     -- asynchronous reset (active high)
      sink_ready <= '0';
      start      := '0';
      cnt        := (others => '0');
    elsif clock'event and clock = '1' then  -- rising clock edge
      if source_ready = '1' then
        if sink_valid = '1' then
          sink_ready   <= '0';
          start        := '1';
          source_valid <= '1';
          source_data  <= sink_data;
        end if;
      else
        sink_ready  <= '0';
        source_data <= (others => '0');
      end if;
      if start = '1' then
--        if cnt = std_logic_vector(to_unsigned(1, 14)) then
--          source_valid <= '0';
--        end if;
        cnt := cnt + '1';
        if cnt = std_logic_vector(to_unsigned(11364, 14)) then
          cnt        := (others => '0');
          start      := '0';
          sink_ready <= '1';
        else
          sink_ready <= '0';
        end if;
      end if;
    end if;
  end process ready_proc;
end;


