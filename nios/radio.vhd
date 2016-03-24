library ieee;
use ieee.std_logic_1164.all;
use work.tx_lib.all;

entity radio is
  port(
    clock                : in  std_logic;
    rdclk                : in  std_logic;
    reset                : in  std_logic;
    sink_data            : in  std_logic_vector(bits-1 downto 0);
    sink_valid           : in  std_logic;
    sink_ready           : out std_logic;
    sink_error           : in  std_logic;
    sink_startofpacket   : in  std_logic;
    sink_endofpacket     : in  std_logic;
    source_data          : out std_logic_vector(bits-1 downto 0);
    source_valid         : out std_logic;
    source_ready         : in  std_logic;
    source_error         : out std_logic;
    source_startofpacket : out std_logic;
    source_endofpacket   : out std_logic;
    tx_serial_data       : out std_logic;
    rx_serial_data       : in  std_logic;
    led                  : out std_logic_vector(bits-1 downto 0)
    );
end radio;

architecture structure of radio is
  component up is
    port (
      rdclk                : in  std_logic;
      wrclk                : in  std_logic;
      reset                : in  std_logic;
      sink_data            : in  std_logic_vector(bits-1 downto 0);
      sink_ready           : out std_logic;
      sink_valid           : in  std_logic;
      sink_error           : in  std_logic;
      sink_startofpacket   : in  std_logic := '0';
      sink_endofpacket     : in  std_logic := '0';
      source_data          : out std_logic_vector(bits-1 downto 0);
      source_ready         : in  std_logic;
      source_valid         : out std_logic;
      source_error         : out std_logic;
      source_startofpacket : out std_logic := '0';
      source_endofpacket   : out std_logic := '0');
  end component up;

  component down is
    port (
      rdclk                : in  std_logic;
      wrclk                : in  std_logic;
      reset                : in  std_logic;
      sink_data            : in  std_logic_vector(bits-1 downto 0);
      sink_ready           : out std_logic;
      sink_valid           : in  std_logic;
      sink_error           : in  std_logic_vector(1 downto 0);
      sink_startofpacket   : in  std_logic := '0';
      sink_endofpacket     : in  std_logic := '0';
      source_data          : out std_logic_vector(bits-1 downto 0);
      source_ready         : in  std_logic;
      source_valid         : out std_logic;
      source_error         : out std_logic;
      source_startofpacket : out std_logic := '0';
      source_endofpacket   : out std_logic := '0');
  end component down;

  component trx is
    port (
      clk            : in  std_logic;
      reset          : in  std_logic;
      sink_data      : in  std_logic_vector(bits-1 downto 0);
      sink_ready     : out std_logic;
      sink_valid     : in  std_logic;
      sink_error     : in  std_logic;
      tx_serial_data : out std_logic;
      source_data    : out std_logic_vector(bits-1 downto 0);
      source_ready   : in  std_logic;
      source_valid   : out std_logic;
      source_error   : out std_logic_vector(1 downto 0);
      rx_serial_data : in  std_logic;
      led            : out std_logic_vector(bits-1 downto 0));
  end component trx;

  signal up_data  : std_logic_vector(bits-1 downto 0);
  signal up_ready : std_logic;
  signal up_valid : std_logic;
  signal up_error : std_logic;

  signal down_data  : std_logic_vector(bits-1 downto 0);
  signal down_ready : std_logic;
  signal down_valid : std_logic;
  signal down_error : std_logic_vector(1 downto 0);
begin
  up_1 : component up
    port map (
      rdclk        => clock,
      wrclk        => rdclk,
      reset        => reset,
      sink_data    => sink_data,
      sink_ready   => sink_ready,
      sink_valid   => sink_valid,
      sink_error   => sink_error,
      source_data  => up_data,
      source_ready => up_ready,
      source_valid => up_valid,
      source_error => up_error);

  down_1 : component down
    port map (
      rdclk        => rdclk,
      wrclk        => clock,
      reset        => reset,
      sink_data    => down_data,
      sink_ready   => down_ready,
      sink_valid   => down_valid,
      sink_error   => down_error,
      source_data  => source_data,
      source_ready => source_ready,
      source_valid => source_valid,
      source_error => source_error);

  trx_1 : component trx
    port map (
      clk            => clock,
      reset          => reset,
      sink_data      => up_data,
      sink_ready     => up_ready,
      sink_valid     => up_valid,
      sink_error     => up_error,
      tx_serial_data => tx_serial_data,
      source_data    => down_data,
      source_ready   => down_ready,
      source_valid   => down_valid,
      source_error   => down_error,
      rx_serial_data => rx_serial_data,
      led            => led);
end;
