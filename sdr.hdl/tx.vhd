library ieee;
use ieee.std_logic_1164.all;

entity tx is
	port(
		clock 							: in  std_logic;
		reset								: in  std_logic;
		tx_parallel_data				: in  std_logic_vector(19 downto 0);
		tx_serial_data					: out std_logic;
		tx_std_clkout					: out std_logic;
		tx_ready							: out std_logic;
		reconfig_busy             	: out std_logic;
		reconfig_mgmt_address     	: in  std_logic_vector(6 downto 0);
		reconfig_mgmt_read        	: in  std_logic;
		reconfig_mgmt_readdata    	: out std_logic_vector(31 downto 0);
		reconfig_mgmt_waitrequest 	: out std_logic;
		reconfig_mgmt_write       	: in  std_logic;
		reconfig_mgmt_writedata   	: in  std_logic_vector(31 downto 0);
		pll_locked						: out std_logic
	);
end tx;

architecture structure of tx is
	component tx_native is
		port (
			pll_powerdown      : in  std_logic_vector(0 downto 0);
			tx_analogreset     : in  std_logic_vector(0 downto 0);
			tx_digitalreset    : in  std_logic_vector(0 downto 0);
			tx_pll_refclk      : in  std_logic_vector(0 downto 0);
			tx_serial_data     : out std_logic_vector(0 downto 0);                      -- tx_serial_data
			pll_locked         : out std_logic_vector(0 downto 0);                      -- pll_locked
			tx_parallel_data   : in  std_logic_vector(43 downto 0);
			tx_std_coreclkin   : in  std_logic_vector(0 downto 0);
			tx_std_clkout      : out std_logic_vector(0 downto 0);                      -- tx_std_clkout
			tx_cal_busy        : out std_logic_vector(0 downto 0);                      -- tx_cal_busy
			reconfig_to_xcvr   : in  std_logic_vector(139 downto 0);
			reconfig_from_xcvr : out std_logic_vector(91 downto 0)                      -- reconfig_from_xcvr
		);
	end component tx_native;

	component tx_reconfig is
		port (
			reconfig_busy             : out std_logic;                                         -- reconfig_busy
			mgmt_clk_clk              : in  std_logic;
			mgmt_rst_reset            : in  std_logic;
			reconfig_mgmt_address     : in  std_logic_vector(6 downto 0);
			reconfig_mgmt_read        : in  std_logic;
			reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);                     -- readdata
			reconfig_mgmt_waitrequest : out std_logic;                                         -- waitrequest
			reconfig_mgmt_write       : in  std_logic;
			reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0);
			reconfig_to_xcvr          : out std_logic_vector(139 downto 0);                    -- reconfig_to_xcvr
			reconfig_from_xcvr        : in  std_logic_vector(91 downto 0)
		);
	end component tx_reconfig;

	component tx_reset is
		port (
			clock           : in  std_logic;
			reset           : in  std_logic;
			pll_powerdown   : out std_logic_vector(0 downto 0);                    -- pll_powerdown
			tx_analogreset  : out std_logic_vector(0 downto 0);                    -- tx_analogreset
			tx_digitalreset : out std_logic_vector(0 downto 0);                    -- tx_digitalreset
			tx_ready        : out std_logic_vector(0 downto 0);                    -- tx_ready
			pll_locked      : in  std_logic_vector(0 downto 0);
			pll_select      : in  std_logic_vector(0 downto 0);
			tx_cal_busy     : in  std_logic_vector(0 downto 0)
		);
	end component tx_reset;
	
	signal pll_powerdown 		: std_logic_vector(0 downto 0) := (others => '0');
	signal tx_analogreset		: std_logic_vector(0 downto 0) := (others => '0');
	signal tx_digitalreset		: std_logic_vector(0 downto 0) := (others => '0');
	signal pll_locked_t				: std_logic_vector(0 downto 0) := (others => '0');
	signal tx_cal_busy			: std_logic_vector(0 downto 0) := (others => '0');
	signal reconfig_to_xcvr		: std_logic_vector(139 downto 0) := (others => '0');
	signal reconfig_from_xcvr 	: std_logic_vector(91 downto 0) := (others => '0');

begin

	pll_locked <= pll_locked_t(0);

	tx_native_inst0	: tx_native
		port map(
			pll_powerdown      					=> pll_powerdown,
			tx_analogreset     					=> tx_analogreset,
			tx_digitalreset    					=> tx_digitalreset,
			tx_pll_refclk(0)      				=> clock,
			tx_serial_data(0)   					=> tx_serial_data,
			pll_locked         					=> pll_locked_t,
			tx_parallel_data(9 downto 0)   	=> tx_parallel_data(9 downto 0),
			tx_parallel_data(20 downto 11) 	=> tx_parallel_data(19 downto 10),
			tx_parallel_data(10)					=> '0',
			tx_parallel_data(43 downto 21)	=> (others => '0'),
			tx_std_coreclkin(0) 					=> clock,
			tx_std_clkout(0)    					=> tx_std_clkout,
			tx_cal_busy        					=> tx_cal_busy,
			reconfig_to_xcvr   					=> reconfig_to_xcvr,
			reconfig_from_xcvr 					=> reconfig_from_xcvr
		);
	
	tx_reconfig_inst0	: tx_reconfig
		port map(
			reconfig_busy        		=> reconfig_busy,
			mgmt_clk_clk           		=> clock,
			mgmt_rst_reset         		=> reset,
			reconfig_mgmt_address     	=> reconfig_mgmt_address,
			reconfig_mgmt_read         => reconfig_mgmt_read,
			reconfig_mgmt_readdata    	=> reconfig_mgmt_readdata,
			reconfig_mgmt_waitrequest 	=> reconfig_mgmt_waitrequest,
			reconfig_mgmt_write       	=> reconfig_mgmt_write,
			reconfig_mgmt_writedata   	=> reconfig_mgmt_writedata,
			reconfig_to_xcvr          	=> reconfig_to_xcvr,
			reconfig_from_xcvr        	=> reconfig_from_xcvr
		);
	
	tx_reset_inst0		: tx_reset
		port map(
			clock           => clock,
			reset           => reset,
			pll_powerdown   => pll_powerdown,
			tx_analogreset  => tx_analogreset,
			tx_digitalreset => tx_digitalreset,
			tx_ready(0)     => tx_ready,
			pll_locked      => pll_locked_t,
			pll_select   	 => (others => '0'),
			tx_cal_busy     => tx_cal_busy
		);


end;