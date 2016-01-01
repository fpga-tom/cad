library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use ieee.numeric_std.all;

entity C5G is
  port(
    CLOCK_125_p  : in std_logic;
    CLOCK_50_B5B : in std_logic;
    CLOCK_50_B6A : in std_logic;
    CLOCK_50_B7A : in std_logic;
    CLOCK_50_B8A : in std_logic;

    CPU_RESET_n : in std_logic;
    KEY         : in std_logic_vector(3 downto 0);

    LEDG : out std_logic_vector(7 downto 0);
    LEDR : out std_logic_vector(9 downto 0);


    UART_RX : in  std_logic;
    UART_TX : out std_logic;

    REFCLK_p0    : in  std_logic;
    SMA_GXB_TX_p : out std_logic;

    DDR2LP_CA      : out   std_logic_vector(9 downto 0);
    DDR2LP_CK_n    : out   std_logic;
    DDR2LP_CK_p    : out   std_logic;
    DDR2LP_CKE     : out   std_logic_vector(1 downto 0);
    DDR2LP_CS_n    : out   std_logic_vector(1 downto 0);
    DDR2LP_DM      : out   std_logic_vector(3 downto 0);
    DDR2LP_DQ      : inout std_logic_vector(31 downto 0);
    DDR2LP_DQS_n   : inout std_logic_vector(3 downto 0);
    DDR2LP_DQS_p   : inout std_logic_vector(3 downto 0);
    DDR2LP_OCT_RZQ : in    std_logic

    );
end C5G;

architecture structure of C5G is

  component system is
    port (
      clk_clk                                                    : in    std_logic                     := 'X';  -- clk
      clk_hsmc_clk                                               : in    std_logic                     := 'X';  -- clk
      led_pio_external_connection_export                         : out   std_logic_vector(7 downto 0);  -- export
      mem_if_lpddr2_emif_0_pll_ref_clk_clk                       : in    std_logic                     := 'X';  -- clk
      mem_if_lpddr2_emif_0_pll_sharing_pll_mem_clk               : out   std_logic;  -- pll_mem_clk
      mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk             : out   std_logic;  -- pll_write_clk
      mem_if_lpddr2_emif_0_pll_sharing_pll_locked                : out   std_logic;  -- pll_locked
      mem_if_lpddr2_emif_0_pll_sharing_pll_write_clk_pre_phy_clk : out   std_logic;  -- pll_write_clk_pre_phy_clk
      mem_if_lpddr2_emif_0_pll_sharing_pll_addr_cmd_clk          : out   std_logic;  -- pll_addr_cmd_clk
      mem_if_lpddr2_emif_0_pll_sharing_pll_avl_clk               : out   std_logic;  -- pll_avl_clk
      mem_if_lpddr2_emif_0_pll_sharing_pll_config_clk            : out   std_logic;  -- pll_config_clk
      mem_if_lpddr2_emif_0_pll_sharing_pll_mem_phy_clk           : out   std_logic;  -- pll_mem_phy_clk
      mem_if_lpddr2_emif_0_pll_sharing_afi_phy_clk               : out   std_logic;  -- afi_phy_clk
      mem_if_lpddr2_emif_0_pll_sharing_pll_avl_phy_clk           : out   std_logic;  -- pll_avl_phy_clk
      mem_if_lpddr2_emif_0_status_local_init_done                : out   std_logic;  -- local_init_done
      mem_if_lpddr2_emif_0_status_local_cal_success              : out   std_logic;  -- local_cal_success
      mem_if_lpddr2_emif_0_status_local_cal_fail                 : out   std_logic;  -- local_cal_fail
      memory_mem_ca                                              : out   std_logic_vector(9 downto 0);  -- mem_ca
      memory_mem_ck                                              : out   std_logic_vector(0 downto 0);  -- mem_ck
      memory_mem_ck_n                                            : out   std_logic_vector(0 downto 0);  -- mem_ck_n
      memory_mem_cke                                             : out   std_logic_vector(0 downto 0);  -- mem_cke
      memory_mem_cs_n                                            : out   std_logic_vector(0 downto 0);  -- mem_cs_n
      memory_mem_dm                                              : out   std_logic_vector(3 downto 0);  -- mem_dm
      memory_mem_dq                                              : inout std_logic_vector(31 downto 0) := (others => 'X');  -- mem_dq
      memory_mem_dqs                                             : inout std_logic_vector(3 downto 0)  := (others => 'X');  -- mem_dqs
      memory_mem_dqs_n                                           : inout std_logic_vector(3 downto 0)  := (others => 'X');  -- mem_dqs_n
      oct_rzqin                                                  : in    std_logic                     := 'X';  -- rzqin
      reset_reset_n                                              : in    std_logic                     := 'X';  -- reset_n
      uart_external_connection_rxd                               : in    std_logic                     := 'X';  -- rxd
      uart_external_connection_txd                               : out   std_logic;  -- txd
      tx_0_tx_serial_data_serial_data                            : out   std_logic;  -- serial_data
      tx_0_led_readdata                                          : out   std_logic_vector(7 downto 0)  -- readdata
      );
  end component system;

  signal status_local_init_done, status_local_cal_success, status_local_cal_fail : std_logic;
  signal memory_mem_cke, memory_mem_cs_n                                         : std_logic_vector(0 downto 0);
begin
  u0 : component system
    port map (
      clk_clk                                       => CLOCK_50_B5B,  --                              clk.clk
      clk_hsmc_clk                                  => REFCLK_p0,  --                         clk_hsmc.clk
      led_pio_external_connection_export            => LEDG,  --      led_pio_external_connection.export
      mem_if_lpddr2_emif_0_pll_ref_clk_clk          => CLOCK_50_B5B,  -- mem_if_lpddr2_emif_0_pll_ref_clk.clk
      mem_if_lpddr2_emif_0_status_local_init_done   => status_local_init_done,  --      mem_if_lpddr2_emif_0_status.local_init_done
      mem_if_lpddr2_emif_0_status_local_cal_success => status_local_cal_success,  --                                 .local_cal_success
      mem_if_lpddr2_emif_0_status_local_cal_fail    => status_local_cal_fail,  --                                 .local_cal_fail
      memory_mem_ca                                 => DDR2LP_CA,  --                           memory.mem_ca
      memory_mem_ck(0)                              => DDR2LP_CK_p,  --                                 .mem_ck
      memory_mem_ck_n(0)                            => DDR2LP_CK_n,  --                                 .mem_ck_n
      memory_mem_cke                                => memory_mem_cke,  --                                 .mem_cke
      memory_mem_cs_n                               => memory_mem_cs_n,  --                                 .mem_cs_n
      memory_mem_dm                                 => DDR2LP_DM,  --                                 .mem_dm
      memory_mem_dq                                 => DDR2LP_DQ,  --                                 .mem_dq
      memory_mem_dqs                                => DDR2LP_DQS_p,  --                                 .mem_dqs
      memory_mem_dqs_n                              => DDR2LP_DQS_n,  --                                 .mem_dqs_n
      oct_rzqin                                     => DDR2LP_OCT_RZQ,  --                              oct.rzqin
      reset_reset_n                                 => CPU_RESET_n,  --                            reset.reset_n
      uart_external_connection_rxd                  => UART_RX,  --         uart_external_connection.rxd
      uart_external_connection_txd                  => UART_TX,  --                                 .txd
      tx_0_tx_serial_data_serial_data               => SMA_GXB_TX_p,  --              tx_0_tx_serial_data.serial_data
      tx_0_led_readdata                             => LEDR(9 downto 2)
      );

  LEDR(0)        <= status_local_init_done;
  LEDR(1)        <= status_local_cal_success;
--  LEDR(2)        <= status_local_cal_fail;
  DDR2LP_CKE(0)  <= memory_mem_cke(0);
--  DDR2LP_CKE(1)  <= memory_mem_cke(0);
  DDR2LP_CS_n(0) <= memory_mem_cs_n(0);
--  DDR2LP_CS_n(1) <= memory_mem_cs_n(0);




end structure;
