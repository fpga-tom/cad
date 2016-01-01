library ieee;
use ieee.std_logic_1164.all;
use ieee.NUMERIC_STD.all;
use work.tx_lib.all;

entity tx is
  port(
    clk            : in  std_logic;
    reset          : in  std_logic;
    data           : in  std_logic_vector(bits-1 downto 0);
    error          : in  std_logic;
    ready          : out std_logic;
    valid          : in  std_logic;
    tx_serial_data : out std_logic;
    startofpacket  : in  std_logic;
    endofpacket    : in  std_logic;
    led            : out std_logic_vector(bits-1 downto 0)
    );
end tx;

architecture structure of tx is
  component tx_native is
    port (
      pll_powerdown      : in  std_logic_vector(0 downto 0);
      tx_analogreset     : in  std_logic_vector(0 downto 0);
      tx_digitalreset    : in  std_logic_vector(0 downto 0);
      tx_pll_refclk      : in  std_logic_vector(0 downto 0);
      tx_serial_data     : out std_logic_vector(0 downto 0);  -- tx_serial_data
      pll_locked         : out std_logic_vector(0 downto 0);  -- pll_locked
      tx_parallel_data   : in  std_logic_vector(43 downto 0);
      tx_std_coreclkin   : in  std_logic_vector(0 downto 0);
      tx_std_clkout      : out std_logic_vector(0 downto 0);  -- tx_std_clkout
      tx_cal_busy        : out std_logic_vector(0 downto 0);  -- tx_cal_busy
      reconfig_to_xcvr   : in  std_logic_vector(139 downto 0);
      reconfig_from_xcvr : out std_logic_vector(91 downto 0)  -- reconfig_from_xcvr
      );
  end component tx_native;

  component tx_reconfig is
    port (
      reconfig_busy             : out std_logic;  -- reconfig_busy
      mgmt_clk_clk              : in  std_logic;
      mgmt_rst_reset            : in  std_logic;
      reconfig_mgmt_address     : in  std_logic_vector(6 downto 0);
      reconfig_mgmt_read        : in  std_logic;
      reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);  -- readdata
      reconfig_mgmt_waitrequest : out std_logic;  -- waitrequest
      reconfig_mgmt_write       : in  std_logic;
      reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0);
      reconfig_to_xcvr          : out std_logic_vector(139 downto 0);  -- reconfig_to_xcvr
      reconfig_from_xcvr        : in  std_logic_vector(91 downto 0)
      );
  end component tx_reconfig;

  component tx_reset is
    port (
      clock           : in  std_logic;
      reset           : in  std_logic;
      pll_powerdown   : out std_logic_vector(0 downto 0);  -- pll_powerdown
      tx_analogreset  : out std_logic_vector(0 downto 0);  -- tx_analogreset
      tx_digitalreset : out std_logic_vector(0 downto 0);  -- tx_digitalreset
      tx_ready        : out std_logic_vector(0 downto 0);  -- tx_ready
      pll_locked      : in  std_logic_vector(0 downto 0);
      pll_select      : in  std_logic_vector(0 downto 0);
      tx_cal_busy     : in  std_logic_vector(0 downto 0)
      );
  end component tx_reset;

  signal pll_powerdown      : std_logic_vector(0 downto 0)   := (others => '0');
  signal tx_analogreset     : std_logic_vector(0 downto 0)   := (others => '0');
  signal tx_digitalreset    : std_logic_vector(0 downto 0)   := (others => '0');
  signal pll_locked_t       : std_logic_vector(0 downto 0)   := (others => '0');
  signal tx_cal_busy        : std_logic_vector(0 downto 0)   := (others => '0');
  signal reconfig_to_xcvr   : std_logic_vector(139 downto 0) := (others => '0');
  signal reconfig_from_xcvr : std_logic_vector(91 downto 0)  := (others => '0');
  signal tx_std_clkout_i    : std_logic;

  signal tx_parallel_data          : std_logic_vector(pbits-1 downto 0);
  signal tx_std_clkout             : std_logic;
  signal tx_ready                  : std_logic;
  signal reconfig_busy             : std_logic;
  signal reconfig_mgmt_address     : std_logic_vector(6 downto 0);
  signal reconfig_mgmt_read        : std_logic;
  signal reconfig_mgmt_readdata    : std_logic_vector(31 downto 0);
  signal reconfig_mgmt_waitrequest : std_logic;
  signal reconfig_mgmt_write       : std_logic;
  signal reconfig_mgmt_writedata   : std_logic_vector(31 downto 0);
  signal pll_locked, clock         : std_logic;
  signal dsm_out                   : std_logic;

begin

  -- purpose: transmit signal
  -- type   : sequential
  -- inputs : clock, reset
  -- outputs: dsm_out
  tx_proc : process (clock, reset) is
    variable acc : signed(bits downto 0);
    variable x   : signed(bits-1 downto 0);
    variable y   : std_logic;
  begin  -- process tx_proc
    if reset = '1' then                 -- asynchronous reset (active high)
      acc := (others => '0');
      led <= (others => '0');
    elsif clock'event and clock = '1' and valid = '1' then  -- rising clock edge
      led     <= data;
      x       := signed(data);
      dsm(x, y, acc);
      dsm_out <= y;
    end if;
  end process tx_proc;

  -- purpose: shift process
  -- type   : sequential
  -- inputs : clock, reset
  -- outputs: tx_parallel_data
  shift_proc : process (clock, reset) is
  begin  -- process shift_proc
    if reset = '1' then                     -- asynchronous reset (active high)
      tx_parallel_data <= (others => '0');
    elsif clock'event and clock = '1' then  -- rising clock edge
      tx_parallel_data <= fshift(dsm_out);
    end if;
  end process shift_proc;

  -- purpose: ready driver
  -- type   : sequential
  -- inputs : clock, reset, valid
  -- outputs: ready
  ready_proc : process (clock, reset) is
    variable cnt   : std_logic_vector(10 downto 0);
    variable start : std_logic;
  begin  -- process ready_proce
    if reset = '1' then                     -- asynchronous reset (active high)
      ready <= '0';
      start <= '0';
      cnt   := (others => '0');
    elsif clock'event and clock = '1' then  -- rising clock edge
      if tx_ready = '1' then
        if valid = '1' then
          ready <= '0';
          start := '1';
        else
          ready <= '1';
        end if;
      else
        ready <= '0';
      end if;
      if start = '1' then
        cnt := cnt + '1';
        if cnt = std_logic_vector(to_unsigned(1085, 11)) then
          cnt   := (others => '0');
          start := '0';
          ready <= '1';
        end if;
      end if;
    end if;
  end process ready_proc;

  pll_locked    <= pll_locked_t(0);
  tx_std_clkout <= tx_std_clkout_i;
  ready         <= tx_ready;
  clock         <= clk;

  tx_native_inst0 : tx_native
    port map(
      pll_powerdown                  => pll_powerdown,
      tx_analogreset                 => tx_analogreset,
      tx_digitalreset                => tx_digitalreset,
      tx_pll_refclk(0)               => clock,
      tx_serial_data(0)              => tx_serial_data,
      pll_locked                     => pll_locked_t,
      tx_parallel_data(9 downto 0)   => tx_parallel_data(9 downto 0),
      tx_parallel_data(20 downto 11) => (others => '0'),  --tx_parallel_data(19 downto 10),
      tx_parallel_data(10)           => '0',
      tx_parallel_data(43 downto 21) => (others => '0'),
      tx_std_coreclkin(0)            => tx_std_clkout_i,
      tx_std_clkout(0)               => tx_std_clkout_i,
      tx_cal_busy                    => tx_cal_busy,
      reconfig_to_xcvr               => reconfig_to_xcvr,
      reconfig_from_xcvr             => reconfig_from_xcvr
      );

  tx_reconfig_inst0 : tx_reconfig
    port map(
      reconfig_busy             => reconfig_busy,
      mgmt_clk_clk              => clock,
      mgmt_rst_reset            => reset,
      reconfig_mgmt_address     => reconfig_mgmt_address,
      reconfig_mgmt_read        => reconfig_mgmt_read,
      reconfig_mgmt_readdata    => reconfig_mgmt_readdata,
      reconfig_mgmt_waitrequest => reconfig_mgmt_waitrequest,
      reconfig_mgmt_write       => reconfig_mgmt_write,
      reconfig_mgmt_writedata   => reconfig_mgmt_writedata,
      reconfig_to_xcvr          => reconfig_to_xcvr,
      reconfig_from_xcvr        => reconfig_from_xcvr
      );

  tx_reset_inst0 : tx_reset
    port map(
      clock           => clock,
      reset           => reset,
      pll_powerdown   => pll_powerdown,
      tx_analogreset  => tx_analogreset,
      tx_digitalreset => tx_digitalreset,
      tx_ready(0)     => tx_ready,
      pll_locked      => pll_locked_t,
      pll_select      => (others => '0'),
      tx_cal_busy     => tx_cal_busy
      );


end;
