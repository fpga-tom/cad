-- tx_reconfig.vhd

-- Generated using ACDS version 15.1 185

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tx_reconfig is
	port (
		reconfig_busy             : out std_logic;                                         --      reconfig_busy.reconfig_busy
		mgmt_clk_clk              : in  std_logic                      := '0';             --       mgmt_clk_clk.clk
		mgmt_rst_reset            : in  std_logic                      := '0';             --     mgmt_rst_reset.reset
		reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)   := (others => '0'); --      reconfig_mgmt.address
		reconfig_mgmt_read        : in  std_logic                      := '0';             --                   .read
		reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);                     --                   .readdata
		reconfig_mgmt_waitrequest : out std_logic;                                         --                   .waitrequest
		reconfig_mgmt_write       : in  std_logic                      := '0';             --                   .write
		reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0)  := (others => '0'); --                   .writedata
		reconfig_to_xcvr          : out std_logic_vector(139 downto 0);                    --   reconfig_to_xcvr.reconfig_to_xcvr
		reconfig_from_xcvr        : in  std_logic_vector(91 downto 0)  := (others => '0')  -- reconfig_from_xcvr.reconfig_from_xcvr
	);
end entity tx_reconfig;

architecture rtl of tx_reconfig is
	component alt_xcvr_reconfig is
		generic (
			device_family                 : string  := "Stratix V";
			number_of_reconfig_interfaces : integer := 2;
			enable_offset                 : integer := 1;
			enable_lc                     : integer := 1;
			enable_dcd                    : integer := 0;
			enable_dcd_power_up           : integer := 1;
			enable_analog                 : integer := 1;
			enable_eyemon                 : integer := 0;
			enable_ber                    : integer := 0;
			enable_dfe                    : integer := 0;
			enable_adce                   : integer := 0;
			enable_mif                    : integer := 0;
			enable_pll                    : integer := 0
		);
		port (
			reconfig_busy             : out std_logic;                                         -- reconfig_busy
			mgmt_clk_clk              : in  std_logic                      := 'X';             -- clk
			mgmt_rst_reset            : in  std_logic                      := 'X';             -- reset
			reconfig_mgmt_address     : in  std_logic_vector(6 downto 0)   := (others => 'X'); -- address
			reconfig_mgmt_read        : in  std_logic                      := 'X';             -- read
			reconfig_mgmt_readdata    : out std_logic_vector(31 downto 0);                     -- readdata
			reconfig_mgmt_waitrequest : out std_logic;                                         -- waitrequest
			reconfig_mgmt_write       : in  std_logic                      := 'X';             -- write
			reconfig_mgmt_writedata   : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- writedata
			reconfig_to_xcvr          : out std_logic_vector(139 downto 0);                    -- reconfig_to_xcvr
			reconfig_from_xcvr        : in  std_logic_vector(91 downto 0)  := (others => 'X'); -- reconfig_from_xcvr
			tx_cal_busy               : out std_logic;                                         -- tx_cal_busy
			rx_cal_busy               : out std_logic;                                         -- tx_cal_busy
			cal_busy_in               : in  std_logic                      := 'X';             -- cal_busy_in
			reconfig_mif_address      : out std_logic_vector(31 downto 0);                     -- address
			reconfig_mif_read         : out std_logic;                                         -- read
			reconfig_mif_readdata     : in  std_logic_vector(15 downto 0)  := (others => 'X'); -- readdata
			reconfig_mif_waitrequest  : in  std_logic                      := 'X'              -- waitrequest
		);
	end component alt_xcvr_reconfig;

begin

	tx_reconfig_inst : component alt_xcvr_reconfig
		generic map (
			device_family                 => "Cyclone V",
			number_of_reconfig_interfaces => 2,
			enable_offset                 => 1,
			enable_lc                     => 0,
			enable_dcd                    => 0,
			enable_dcd_power_up           => 1,
			enable_analog                 => 1,
			enable_eyemon                 => 0,
			enable_ber                    => 0,
			enable_dfe                    => 0,
			enable_adce                   => 0,
			enable_mif                    => 0,
			enable_pll                    => 0
		)
		port map (
			reconfig_busy             => reconfig_busy,             --      reconfig_busy.reconfig_busy
			mgmt_clk_clk              => mgmt_clk_clk,              --       mgmt_clk_clk.clk
			mgmt_rst_reset            => mgmt_rst_reset,            --     mgmt_rst_reset.reset
			reconfig_mgmt_address     => reconfig_mgmt_address,     --      reconfig_mgmt.address
			reconfig_mgmt_read        => reconfig_mgmt_read,        --                   .read
			reconfig_mgmt_readdata    => reconfig_mgmt_readdata,    --                   .readdata
			reconfig_mgmt_waitrequest => reconfig_mgmt_waitrequest, --                   .waitrequest
			reconfig_mgmt_write       => reconfig_mgmt_write,       --                   .write
			reconfig_mgmt_writedata   => reconfig_mgmt_writedata,   --                   .writedata
			reconfig_to_xcvr          => reconfig_to_xcvr,          --   reconfig_to_xcvr.reconfig_to_xcvr
			reconfig_from_xcvr        => reconfig_from_xcvr,        -- reconfig_from_xcvr.reconfig_from_xcvr
			tx_cal_busy               => open,                      --        (terminated)
			rx_cal_busy               => open,                      --        (terminated)
			cal_busy_in               => '0',                       --        (terminated)
			reconfig_mif_address      => open,                      --        (terminated)
			reconfig_mif_read         => open,                      --        (terminated)
			reconfig_mif_readdata     => "0000000000000000",        --        (terminated)
			reconfig_mif_waitrequest  => '0'                        --        (terminated)
		);

end architecture rtl; -- of tx_reconfig
