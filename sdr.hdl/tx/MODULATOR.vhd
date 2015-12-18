library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity MODULATOR is
	port(
		clock 							: in  std_logic;
		reset								: in  std_logic;
		DSM_in : in std_logic_vector (11 downto 0);
		tx_serial_data					: out std_logic;
		pll_locked						: out std_logic;
		DSM_out							: out std_logic
	);
end entity;

architecture structure of MODULATOR is


	component DSM is 
		port (
			clock : in std_logic;
			DSM_in   : in  signed(11 downto 0);
			DSM_out : out std_logic;
			reset : in  std_logic
	   );
	end component DSM;
	component FSHIFT is 
		port (
			clock	: in std_logic;
			reset : in std_logic;
			serial_data : in std_logic;
			parallel_data : out std_logic_vector(19 downto 0)
		);
	end component FSHIFT;
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
			reconfig_mgmt_writedata   	: in  std_logic_vector(31 downto 0);
			pll_locked						: out std_logic
		);
	end component tx;
	
	signal DSM_out_i : std_logic;
	signal reset_i : std_logic;
	signal pll_locked_i : std_logic;
	signal tx_parallel_data : std_logic_vector(19 downto 0);
	signal tx_std_clkout 				: std_logic;
	signal tx_ready		 				: std_logic;
	signal reconfig_mgmt_readdata		: std_logic_vector(31 downto 0);
	signal reconfig_busy		 			: std_logic;
	signal reconfig_mgmt_waitrequest	: std_logic;
	
begin
	pll_locked <= pll_locked_i;
	reset_i <= not pll_locked_i;
	DSM_out <= DSM_out_i;
	dsm_0 : DSM
		port map(
			clock => clock,
			DSM_in => signed(DSM_in),
			DSM_out => DSM_out_i,
			reset => reset_i
		);
		
	fshift_0 : FSHIFT
		port map(
			clock	=> clock,
			reset => reset_i,
			serial_data => DSM_out_i,
			parallel_data => tx_parallel_data
		);
	
	tx_0 : tx
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
			reconfig_mgmt_writedata   	=> (others => '0'),
			pll_locked						=> pll_locked_i
		);
end structure;