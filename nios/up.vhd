library ieee;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.NUMERIC_STD.all;
use work.tx_lib.all;

entity up is
  port(
    rdclk : in std_logic;
    wrclk : in std_logic;
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
  signal reg : std_logic_vector(bits-1 downto 0);
  signal cnt : std_logic_vector(15 downto 0);

  component up_fifo
    port
      (
        data    : in  std_logic_vector (11 downto 0);
        rdclk   : in  std_logic;
        rdreq   : in  std_logic;
        wrclk   : in  std_logic;
        wrreq   : in  std_logic;
        q       : out std_logic_vector (11 downto 0);
        rdempty : out std_logic;
        wrfull  : out std_logic
        );
  end component;
  signal rdempty, wrfull, rdreq, wrreq : std_logic;
  signal q                             : std_logic_vector(bits-1 downto 0);

begin
  up_fifo_1 : component up_fifo
    port map (
      data    => sink_data,
      rdclk   => rdclk,
      rdreq   => rdreq,
      wrclk   => wrclk,
      wrreq   => wrreq,
      q       => q,
      rdempty => rdempty,
      wrfull  => wrfull);

  sink_ready <= not wrfull;
  wrreq      <= sink_valid and not wrfull;

  -- sink_ready   <= source_ready;
  -- source_valid <= sink_valid;
  -- purpose : ready driver
  -- type : sequential
  -- inputs     : clock, reset, valid
  -- outputs    : ready
  ready_proc : process (rdclk, reset) is
  begin  -- process ready_proc
    if reset = '1' then                     -- asynchronous reset (active high)
      rdreq <= '0';
      cnt   <= (others => '0');
      reg   <= (others => '0');
    elsif rdclk'event and rdclk = '1' then  -- rising clock edge
      if rdempty = '0' and cnt = std_logic_vector(to_unsigned(0, 16)) then
        rdreq <= '1';
      end if;
      if rdreq = '1' then
        reg   <= q;
        rdreq <= '0';
      end if;

      source_data  <= reg;
      source_valid <= '1';

      cnt <= cnt + '1';
      if cnt = std_logic_vector(to_unsigned(12499, 16)) then
        cnt <= (others => '0');
      end if;

    end if;
  end process ready_proc;
end;


