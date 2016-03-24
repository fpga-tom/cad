library ieee;
use ieee.std_logic_1164.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.numeric_std.all;
use work.tx_lib.all;

entity down is
  port (
    rdclk                : in  std_logic;
    wrclk                : in  std_logic;
    reset                : in  std_logic;
    sink_data            : in  std_logic_vector(bits-1 downto 0);
    sink_ready           : out std_logic;
    sink_valid           : in  std_logic;
    sink_error           : in  std_logic_vector(1 downto 0);
    sink_startofpacket   : in  std_logic;
    sink_endofpacket     : in  std_logic;
    source_data          : out std_logic_vector(bits-1 downto 0);
    source_ready         : in  std_logic;
    source_valid         : out std_logic;
    source_error         : out std_logic;
    source_startofpacket : out std_logic;
    source_endofpacket   : out std_logic);
end down;

architecture structure of down is

  component down_fifo
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
  signal rdempty, wrfull : std_logic;
  signal rdreq, wrreq    : std_logic;
begin

  down_fifo_1 : component down_fifo
    port map (
      data    => sink_data,
      rdclk   => rdclk,
      rdreq   => rdreq,
      wrclk   => wrclk,
      wrreq   => wrreq,
      q       => source_data,
      rdempty => rdempty,
      wrfull  => wrfull);

  rdreq        <= source_ready and not rdempty;
  wrreq        <= sink_valid and not wrfull;
  source_valid <= not rdempty and rdreq;
  sink_ready   <= not wrfull;

end;
