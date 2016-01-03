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
  sink_ready   <= source_ready;
  source_valid <= sink_valid;
  -- purpose: ready driver
  -- type   : sequential
  -- inputs : clock, reset, valid
  -- outputs: ready
  ready_proc : process (clock, reset) is
    variable reg   : std_logic_vector(bits-1 downto 0);
  begin  -- process ready_proc
    if reset = '1' then                     -- asynchronous reset (active high)
      source_data <= (others => '0');
    elsif clock'event and clock = '1' then  -- rising clock edge
      if sink_valid = '1' then
        reg := sink_data;
      end if;
      if source_ready = '1' then
        source_data <= reg;
      end if;
    end if;
  end process ready_proc;
end;


