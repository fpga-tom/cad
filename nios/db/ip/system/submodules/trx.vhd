library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.STD_LOGIC_UNSIGNED.all;
use work.tx_lib.all;

entity trx is
  port(
    clk   : in std_logic;
    reset : in std_logic;

    -- avalon-st tx interface
    sink_data      : in  std_logic_vector(bits-1 downto 0);
    sink_ready     : out std_logic;
    sink_valid     : in  std_logic;
    sink_error     : in  std_logic;
    tx_serial_data : out std_logic;

    -- avalon-st rx interface
    source_data    : out std_logic_vector(bits-1 downto 0);
    source_ready   : in  std_logic;
    source_valid   : out std_logic;
    source_error   : out std_logic_vector(1 downto 0);
    rx_serial_data : in  std_logic_vector(0 downto 0);

    -- status interface
    led : out std_logic_vector(bits-1 downto 0)
    );
end trx;

architecture structure of trx is

  -- outputs of "trx_native_1"
  signal pll_locked         : std_logic_vector(0 downto 0);
  signal rx_is_lockedtodata : std_logic_vector(0 downto 0);
  signal tx_cal_busy        : std_logic_vector(0 downto 0);
  signal rx_cal_busy        : std_logic_vector(0 downto 0);
  signal reconfig_from_xcvr : std_logic_vector(91 downto 0);

  -- outputs of "trx_reconfig_1"
  signal reconfig_to_xcvr : std_logic_vector(139 downto 0);

  -- outputs of "trx_reset_1"
  signal pll_powerdown   : std_logic_vector(0 downto 0);
  signal tx_analogreset  : std_logic_vector(0 downto 0);
  signal tx_digitalreset : std_logic_vector(0 downto 0);
  signal rx_analogreset  : std_logic_vector(0 downto 0);
  signal rx_digitalreset : std_logic_vector(0 downto 0);



  -- ports to "trx_native_1"
  signal tx_pll_refclk     : std_logic_vector(0 downto 0)  := (others => '0');
  signal rx_cdr_refclk     : std_logic_vector(0 downto 0)  := (others => '0');
  signal rx_pma_clkout     : std_logic_vector(0 downto 0);
  signal rx_set_locktodata : std_logic_vector(0 downto 0)  := (others => '0');
  signal rx_set_locktoref  : std_logic_vector(0 downto 0)  := (others => '0');
  signal rx_is_lockedtoref : std_logic_vector(0 downto 0);
  signal tx_parallel_data  : std_logic_vector(43 downto 0) := (others => '0');
  signal rx_parallel_data  : std_logic_vector(63 downto 0);
  signal tx_std_coreclkin  : std_logic_vector(0 downto 0)  := (others => '0');
  signal rx_std_coreclkin  : std_logic_vector(0 downto 0)  := (others => '0');
  signal tx_std_clkout     : std_logic_vector(0 downto 0);
  signal rx_std_clkout     : std_logic_vector(0 downto 0);

  -- ports to "trx_reconfig_1"
  signal reconfig_busy             : std_logic;
  signal mgmt_clk_clk              : std_logic                     := '0';
  signal mgmt_rst_reset            : std_logic                     := '0';
  signal reconfig_mgmt_address     : std_logic_vector(6 downto 0)  := (others => '0');
  signal reconfig_mgmt_read        : std_logic                     := '0';
  signal reconfig_mgmt_readdata    : std_logic_vector(31 downto 0);
  signal reconfig_mgmt_waitrequest : std_logic;
  signal reconfig_mgmt_write       : std_logic                     := '0';
  signal reconfig_mgmt_writedata   : std_logic_vector(31 downto 0) := (others => '0');

  -- ports to "trx_reset_1"
  signal tx_ready   : std_logic_vector(0 downto 0);
  signal pll_select : std_logic_vector(0 downto 0) := (others => '0');
  signal rx_ready   : std_logic_vector(0 downto 0);

  signal reset_n   : std_logic;
  signal chan_data : std_logic_vector(pbits-1 downto 0);

  type fsin_o_t is array (integer range <>) of std_logic_vector(9 downto 0);
  type out_valid_t is array (integer range <>) of std_logic;
  type phase_mod_i_t is array (integer range 0 to pbits-1) of std_logic_vector(15 downto 0);

  signal fsin_o         : fsin_o_t(pbits-1 downto 0);
  signal out_valid      : out_valid_t(pbits-1 downto 0);
  signal ast_sink_data  : std_logic_vector(99 downto 0);
  signal ast_sink_error : std_logic_vector(1 downto 0);

  signal phase_mod_i : phase_mod_i_t := (
    std_logic_vector(to_unsigned(0, 16)),
    std_logic_vector(to_unsigned(31457, 16)),
    std_logic_vector(to_unsigned(62915, 16)),
    std_logic_vector(to_unsigned(28836, 16)),
    std_logic_vector(to_unsigned(60293, 16)),
    std_logic_vector(to_unsigned(26214, 16)),
    std_logic_vector(to_unsigned(57672, 16)),
    std_logic_vector(to_unsigned(23593, 16)),
    std_logic_vector(to_unsigned(55050, 16)),
    std_logic_vector(to_unsigned(20972, 16))
    );

  constant phi_inc_i : std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(858993459, 32));

  signal dsm_out : std_logic;

  component trx_native is
    port (
      pll_powerdown      : in  std_logic_vector(0 downto 0)   := (others => '0');
      tx_analogreset     : in  std_logic_vector(0 downto 0)   := (others => '0');
      tx_digitalreset    : in  std_logic_vector(0 downto 0)   := (others => '0');
      tx_pll_refclk      : in  std_logic_vector(0 downto 0)   := (others => '0');
      tx_serial_data     : out std_logic_vector(0 downto 0);
      pll_locked         : out std_logic_vector(0 downto 0);
      rx_analogreset     : in  std_logic_vector(0 downto 0)   := (others => '0');
      rx_digitalreset    : in  std_logic_vector(0 downto 0)   := (others => '0');
      rx_cdr_refclk      : in  std_logic_vector(0 downto 0)   := (others => '0');
      rx_pma_clkout      : out std_logic_vector(0 downto 0);
      rx_serial_data     : in  std_logic_vector(0 downto 0)   := (others => '0');
      rx_set_locktodata  : in  std_logic_vector(0 downto 0)   := (others => '0');
      rx_set_locktoref   : in  std_logic_vector(0 downto 0)   := (others => '0');
      rx_is_lockedtoref  : out std_logic_vector(0 downto 0);
      rx_is_lockedtodata : out std_logic_vector(0 downto 0);
      tx_parallel_data   : in  std_logic_vector(43 downto 0)  := (others => '0');
      rx_parallel_data   : out std_logic_vector(63 downto 0);
      tx_std_coreclkin   : in  std_logic_vector(0 downto 0)   := (others => '0');
      rx_std_coreclkin   : in  std_logic_vector(0 downto 0)   := (others => '0');
      tx_std_clkout      : out std_logic_vector(0 downto 0);
      rx_std_clkout      : out std_logic_vector(0 downto 0);
      tx_cal_busy        : out std_logic_vector(0 downto 0);
      rx_cal_busy        : out std_logic_vector(0 downto 0);
      reconfig_to_xcvr   : in  std_logic_vector(139 downto 0) := (others => '0');
      reconfig_from_xcvr : out std_logic_vector(91 downto 0));
  end component trx_native;

  component trx_reconfig is
    port (
      reconfig_busy             : out std_logic;
      mgmt_clk_clk              : in  std_logic                     := '0';
      mgmt_rst_reset            : in  std_logic                     := '0';
      reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)  := (others => '0');
      reconfig_mgmt_read        : in  std_logic                     := '0';
      reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);
      reconfig_mgmt_waitrequest : out std_logic;
      reconfig_mgmt_write       : in  std_logic                     := '0';
      reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0) := (others => '0');
      reconfig_to_xcvr          : out std_logic_vector(139 downto 0);
      reconfig_from_xcvr        : in  std_logic_vector(91 downto 0) := (others => '0'));
  end component trx_reconfig;

  component trx_reset is
    port (
      clock              : in  std_logic                    := '0';
      reset              : in  std_logic                    := '0';
      pll_powerdown      : out std_logic_vector(0 downto 0);
      tx_analogreset     : out std_logic_vector(0 downto 0);
      tx_digitalreset    : out std_logic_vector(0 downto 0);
      tx_ready           : out std_logic_vector(0 downto 0);
      pll_locked         : in  std_logic_vector(0 downto 0) := (others => '0');
      pll_select         : in  std_logic_vector(0 downto 0) := (others => '0');
      tx_cal_busy        : in  std_logic_vector(0 downto 0) := (others => '0');
      rx_analogreset     : out std_logic_vector(0 downto 0);
      rx_digitalreset    : out std_logic_vector(0 downto 0);
      rx_ready           : out std_logic_vector(0 downto 0);
      rx_is_lockedtodata : in  std_logic_vector(0 downto 0) := (others => '0');
      rx_cal_busy        : in  std_logic_vector(0 downto 0) := (others => '0'));
  end component trx_reset;

  -- ddc
  component ddc_nco is
    port (
      clk         : in  std_logic                     := 'X';  -- clk
      reset_n     : in  std_logic                     := 'X';  -- reset_n
      clken       : in  std_logic                     := 'X';  -- clken
      phi_inc_i   : in  std_logic_vector(31 downto 0) := (others => 'X');  -- phi_inc_i
      phase_mod_i : in  std_logic_vector(15 downto 0) := (others => 'X');  -- phase_mod_i
      fsin_o      : out std_logic_vector(9 downto 0);          -- fsin_o
      out_valid   : out std_logic       -- out_valid
      );
  end component ddc_nco;

  component ddc_fir is
    port (
      clk              : in  std_logic                     := '0';
      reset_n          : in  std_logic                     := '0';
      ast_sink_data    : in  std_logic_vector(99 downto 0) := (others => '0');
      ast_sink_valid   : in  std_logic                     := '0';
      ast_sink_error   : in  std_logic_vector(1 downto 0)  := (others => '0');
      ast_source_data  : out std_logic_vector(7 downto 0);
      ast_source_valid : out std_logic;
      ast_source_error : out std_logic_vector(1 downto 0));
  end component ddc_fir;

begin

  tx_pll_refclk(0) <= clk;
  rx_cdr_refclk(0) <= clk;
  tx_std_coreclkin <= tx_std_clkout;
  rx_std_coreclkin <= rx_std_clkout;
  sink_ready       <= tx_ready(0);

  -- purpose: transmit signal
  -- type   : sequential
  -- inputs : clk, reset
  -- outputs: dsm_out
  tx_proc : process (clk, reset) is
    variable acc : signed(bits downto 0);
    variable x   : signed(bits-1 downto 0);
    variable y   : std_logic;
  begin  -- process tx_proc
    if reset = '1' then                 -- asynchronous reset (active high)
      acc := (others => '0');
      led <= (others => '0');
    elsif clk'event and clk = '1' and sink_valid = '1' then  -- rising clock edge
      led     <= sink_data;
      x       := signed(sink_data);
      dsm(x, y, acc);
      dsm_out <= y;
    end if;
  end process tx_proc;

  -- purpose: shift process
  -- type   : sequential
  -- inputs : clk, reset
  -- outputs: tx_parallel_data
  shift_proc : process (clk, reset) is
  begin  -- process shift_proc
    if reset = '1' then                 -- asynchronous reset (active high)
      tx_parallel_data <= (others => '0');
    elsif clk'event and clk = '1' then  -- rising clock edge
      tx_parallel_data(9 downto 0) <= fshift(dsm_out);
    end if;
  end process shift_proc;

  trx_native_1 : component trx_native
    port map (
      pll_powerdown      => pll_powerdown,
      tx_analogreset     => tx_analogreset,
      tx_digitalreset    => tx_digitalreset,
      tx_pll_refclk      => tx_pll_refclk,
      tx_serial_data(0)  => tx_serial_data,
      pll_locked         => pll_locked,
      rx_analogreset     => rx_analogreset,
      rx_digitalreset    => rx_digitalreset,
      rx_cdr_refclk      => rx_cdr_refclk,
      rx_pma_clkout      => rx_pma_clkout,
      rx_serial_data     => rx_serial_data,
      rx_set_locktodata  => rx_set_locktodata,
      rx_set_locktoref   => rx_set_locktoref,
      rx_is_lockedtoref  => rx_is_lockedtoref,
      rx_is_lockedtodata => rx_is_lockedtodata,
      tx_parallel_data   => tx_parallel_data,
      rx_parallel_data   => rx_parallel_data,
      tx_std_coreclkin   => tx_std_coreclkin,
      rx_std_coreclkin   => rx_std_coreclkin,
      tx_std_clkout      => tx_std_clkout,
      rx_std_clkout      => rx_std_clkout,
      tx_cal_busy        => tx_cal_busy,
      rx_cal_busy        => rx_cal_busy,
      reconfig_to_xcvr   => reconfig_to_xcvr,
      reconfig_from_xcvr => reconfig_from_xcvr);

  trx_reconfig_1 : component trx_reconfig
    port map (
      reconfig_busy             => reconfig_busy,
      mgmt_clk_clk              => clk,
      mgmt_rst_reset            => reset,
      reconfig_mgmt_address     => reconfig_mgmt_address,
      reconfig_mgmt_read        => reconfig_mgmt_read,
      reconfig_mgmt_readdata    => reconfig_mgmt_readdata,
      reconfig_mgmt_waitrequest => reconfig_mgmt_waitrequest,
      reconfig_mgmt_write       => reconfig_mgmt_write,
      reconfig_mgmt_writedata   => reconfig_mgmt_writedata,
      reconfig_to_xcvr          => reconfig_to_xcvr,
      reconfig_from_xcvr        => reconfig_from_xcvr);

  trx_reset_1 : component trx_reset
    port map (
      clock              => clk,
      reset              => reset,
      pll_powerdown      => pll_powerdown,
      tx_analogreset     => tx_analogreset,
      tx_digitalreset    => tx_digitalreset,
      tx_ready           => tx_ready,
      pll_locked         => pll_locked,
      pll_select         => pll_select,
      tx_cal_busy        => tx_cal_busy,
      rx_analogreset     => rx_analogreset,
      rx_digitalreset    => rx_digitalreset,
      rx_ready           => rx_ready,
      rx_is_lockedtodata => rx_is_lockedtodata,
      rx_cal_busy        => rx_cal_busy);

  -- ddc
  reset_n        <= not reset;
  chan_data      <= rx_parallel_data(pbits-1 downto 0);
  ast_sink_error <= "00";

  chann_nco : for i in 0 to pbits-1 generate
    ddc_nco_1 : component ddc_nco
      port map (
        clk         => clk,
        reset_n     => reset_n,
        clken       => rx_ready(0),
        phi_inc_i   => phi_inc_i,
        phase_mod_i => phase_mod_i(i),
        fsin_o      => fsin_o(i),
        out_valid   => out_valid(i));

    -- purpose: input multiplexer
    -- type   : combinational
    -- inputs : chn_data
    -- outputs: fsin_o
    mux : process (chan_data) is
    begin  -- process mux
      case chan_data(i) is
        when '0'    => ast_sink_data((pbits-i)*10-1 downto (pbits-i-1)*10) <= (not fsin_o(i)) + '1';
        when '1'    => ast_sink_data((pbits-i)*10-1 downto (pbits-i-1)*10) <= fsin_o(i);
        when others => ast_sink_data((pbits-i)*10-1 downto (pbits-i-1)*10) <= fsin_o(i);
      end case;
    end process mux;

  end generate chann_nco;

  ddc_fir_1 : component ddc_fir
    port map (
      clk              => clk,
      reset_n          => reset_n,
      ast_sink_data    => ast_sink_data,
      ast_sink_valid   => out_valid(0),
      ast_sink_error   => ast_sink_error,
      ast_source_data  => source_data,
      ast_source_valid => source_valid,
      ast_source_error => source_error);
end;
