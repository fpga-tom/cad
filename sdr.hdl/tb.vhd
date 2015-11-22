library ieee;
use ieee.std_logic_1164.all;

entity tb is
port(
	tx_serial_data 				: out std_logic
);
end tb;

architecture DUT of tb is
	component tx is
		port (
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
			reconfig_mgmt_writedata   	: in  std_logic_vector(31 downto 0)
		);
	end component tx;

	signal clock 							: std_logic := '0';
	signal reset 							: std_logic := '1';
	signal tx_parallel_data 			: std_logic_vector(19 downto 0)	:= (others => '0');
	--signal tx_serial_data 				: std_logic;
	signal tx_std_clkout 				: std_logic;
	signal tx_ready		 				: std_logic;
	signal reconfig_mgmt_readdata		: std_logic_vector(31 downto 0);
	signal reconfig_busy		 			: std_logic;
	signal reconfig_mgmt_waitrequest	: std_logic;
begin
	clock <= not clock after 8ns;
	reset <= '0' after 1000ns;
	
	tx_inst0	: tx
		port map(
			clock 							=> clock,
			reset								=> reset,
			tx_parallel_data				=> tx_parallel_data,
			tx_serial_data					=> tx_serial_data,
			tx_std_clkout					=> tx_std_clkout,
			tx_ready							=> tx_ready,
			reconfig_busy             	=> reconfig_busy,
			reconfig_mgmt_address     	=> (others => '0'),
			reconfig_mgmt_read        	=> '0',
			reconfig_mgmt_readdata    	=> reconfig_mgmt_readdata,
			reconfig_mgmt_waitrequest 	=> reconfig_mgmt_waitrequest,
			reconfig_mgmt_write       	=> '0',
			reconfig_mgmt_writedata   	=> (others => '0')
		);
end;