-- ------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 15.1
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2015 Altera Corporation.  All rights reserved.
-- Your use of  Altera  Corporation's design tools,  logic functions and other
-- software and tools,  and its AMPP  partner logic functions, and  any output
-- files  any of the  foregoing  device programming or simulation files),  and
-- any associated  documentation or information are expressly subject  to  the
-- terms and conditions  of the Altera Program License Subscription Agreement,
-- Altera  MegaCore  Function  License  Agreement, or other applicable license
-- agreement,  including,  without limitation,  that your use  is for the sole
-- purpose of  programming  logic  devices  manufactured by Altera and sold by
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable
-- agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from ddc_fir_0002_rtl
-- VHDL created on Sun Jan  3 18:48:51 2016


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity ddc_fir_0002_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_1 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_2 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_3 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_4 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_5 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_6 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_7 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_8 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_9 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_10 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_11 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_12 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_13 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_14 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_15 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_16 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_17 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_18 : in std_logic_vector(9 downto 0);  -- sfix10
        xIn_19 : in std_logic_vector(9 downto 0);  -- sfix10
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(23 downto 0);  -- sfix24
        clk : in std_logic;
        areset : in std_logic
    );
end ddc_fir_0002_rtl;

architecture normal of ddc_fir_0002_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr30_q : STD_LOGIC_VECTOR (9 downto 0);
    type u0_m0_wo0_cma0_a_type is array(0 to 31) of SIGNED(9 downto 0);
    signal u0_m0_wo0_cma0_a0 : u0_m0_wo0_cma0_a_type;
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_cma0_a0 : signal is true;
    type u0_m0_wo0_cma0_c_type is array(0 to 31) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_cma0_c0 : u0_m0_wo0_cma0_c_type;
    attribute preserve of u0_m0_wo0_cma0_c0 : signal is true;
    type u0_m0_wo0_cma0_r_type is array(0 to 31) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma0_r : u0_m0_wo0_cma0_r_type;
    type u0_m0_wo0_cma0_p_type is array(0 to 31) of SIGNED(20 downto 0);
    signal u0_m0_wo0_cma0_p : u0_m0_wo0_cma0_p_type;
    type u0_m0_wo0_cma0_u_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma0_u : u0_m0_wo0_cma0_u_type;
    type u0_m0_wo0_cma0_w_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma0_w : u0_m0_wo0_cma0_w_type;
    type u0_m0_wo0_cma0_x_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma0_x : u0_m0_wo0_cma0_x_type;
    type u0_m0_wo0_cma0_y_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma0_y : u0_m0_wo0_cma0_y_type;
    type u0_m0_wo0_cma0_romtype is array(0 to 7) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma0_k0 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(9,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k1 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(127,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k2 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(127,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k3 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(9,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k4 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(125,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k5 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(10,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k6 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(122,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k7 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(12,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k8 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(117,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k9 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(16,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k10 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(112,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k11 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(21,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k12 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(105,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k13 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(27,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k14 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(97,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k15 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(34,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k16 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(88,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k17 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(42,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k18 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(79,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k19 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(51,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k20 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(69,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k21 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(60,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k22 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(60,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k23 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(69,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k24 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(51,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k25 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(79,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k26 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(42,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k27 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(88,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k28 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(34,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k29 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(97,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k30 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(27,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k31 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(105,11),
        others => (others => '0'));
    type u0_m0_wo0_cma0_s_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma0_s : u0_m0_wo0_cma0_s_type;
    signal u0_m0_wo0_cma0_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_cma0_q : STD_LOGIC_VECTOR (25 downto 0);
    type u0_m0_wo0_cma1_a_type is array(0 to 7) of SIGNED(9 downto 0);
    signal u0_m0_wo0_cma1_a0 : u0_m0_wo0_cma1_a_type;
    attribute preserve of u0_m0_wo0_cma1_a0 : signal is true;
    type u0_m0_wo0_cma1_c_type is array(0 to 7) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_cma1_c0 : u0_m0_wo0_cma1_c_type;
    attribute preserve of u0_m0_wo0_cma1_c0 : signal is true;
    type u0_m0_wo0_cma1_r_type is array(0 to 7) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma1_r : u0_m0_wo0_cma1_r_type;
    type u0_m0_wo0_cma1_p_type is array(0 to 7) of SIGNED(20 downto 0);
    signal u0_m0_wo0_cma1_p : u0_m0_wo0_cma1_p_type;
    type u0_m0_wo0_cma1_u_type is array(0 to 7) of SIGNED(23 downto 0);
    signal u0_m0_wo0_cma1_u : u0_m0_wo0_cma1_u_type;
    type u0_m0_wo0_cma1_w_type is array(0 to 7) of SIGNED(23 downto 0);
    signal u0_m0_wo0_cma1_w : u0_m0_wo0_cma1_w_type;
    type u0_m0_wo0_cma1_x_type is array(0 to 7) of SIGNED(23 downto 0);
    signal u0_m0_wo0_cma1_x : u0_m0_wo0_cma1_x_type;
    type u0_m0_wo0_cma1_y_type is array(0 to 7) of SIGNED(23 downto 0);
    signal u0_m0_wo0_cma1_y : u0_m0_wo0_cma1_y_type;
    type u0_m0_wo0_cma1_romtype is array(0 to 7) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma1_k0 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(21,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k1 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(112,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k2 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(16,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k3 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(117,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k4 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(12,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k5 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(122,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k6 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(10,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k7 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(125,11),
        others => (others => '0'));
    type u0_m0_wo0_cma1_s_type is array(0 to 7) of SIGNED(23 downto 0);
    signal u0_m0_wo0_cma1_s : u0_m0_wo0_cma1_s_type;
    signal u0_m0_wo0_cma1_qq : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_cma1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_delayr0_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_delayr0_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr0_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_delayr0_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr0_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_delayr0_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi1_r0_delayr2_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi1_r0_delayr2_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi1_r0_delayr2_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi1_r0_delayr2_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi1_r0_delayr2_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi1_r0_delayr2_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi1_r0_delayr2_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi2_r0_delayr4_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi2_r0_delayr4_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi2_r0_delayr4_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi2_r0_delayr4_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi2_r0_delayr4_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi2_r0_delayr4_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi2_r0_delayr4_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi3_r0_delayr6_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi3_r0_delayr6_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi3_r0_delayr6_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi3_r0_delayr6_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi3_r0_delayr6_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi3_r0_delayr6_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi3_r0_delayr6_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi4_r0_delayr8_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi4_r0_delayr8_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi4_r0_delayr8_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi4_r0_delayr8_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi4_r0_delayr8_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi4_r0_delayr8_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi4_r0_delayr8_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi5_r0_delayr10_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi5_r0_delayr10_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi5_r0_delayr10_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi5_r0_delayr10_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi5_r0_delayr10_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi5_r0_delayr10_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi5_r0_delayr10_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi6_r0_delayr12_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi6_r0_delayr12_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi6_r0_delayr12_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi6_r0_delayr12_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi6_r0_delayr12_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi6_r0_delayr12_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi6_r0_delayr12_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi7_r0_delayr14_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi7_r0_delayr14_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi7_r0_delayr14_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi7_r0_delayr14_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi7_r0_delayr14_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi7_r0_delayr14_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi7_r0_delayr14_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi8_r0_delayr16_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi8_r0_delayr16_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of u0_m0_wo0_wi8_r0_delayr16_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi8_r0_delayr16_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi8_r0_delayr16_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi8_r0_delayr16_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_mem_top_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi8_r0_delayr16_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi9_r0_delayr18_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi9_r0_delayr18_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of u0_m0_wo0_wi9_r0_delayr18_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi9_r0_delayr18_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi9_r0_delayr18_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi9_r0_delayr18_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_mem_top_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi9_r0_delayr18_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi10_r0_delayr20_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi10_r0_delayr20_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of u0_m0_wo0_wi10_r0_delayr20_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi10_r0_delayr20_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi10_r0_delayr20_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi10_r0_delayr20_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_mem_top_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi10_r0_delayr20_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi11_r0_delayr22_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi11_r0_delayr22_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of u0_m0_wo0_wi11_r0_delayr22_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi11_r0_delayr22_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi11_r0_delayr22_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi11_r0_delayr22_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_mem_top_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi11_r0_delayr22_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi12_r0_delayr24_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi12_r0_delayr24_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of u0_m0_wo0_wi12_r0_delayr24_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi12_r0_delayr24_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi12_r0_delayr24_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi12_r0_delayr24_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_mem_top_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi12_r0_delayr24_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi13_r0_delayr26_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi13_r0_delayr26_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of u0_m0_wo0_wi13_r0_delayr26_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi13_r0_delayr26_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi13_r0_delayr26_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi13_r0_delayr26_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_mem_top_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi13_r0_delayr26_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi14_r0_delayr28_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi14_r0_delayr28_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of u0_m0_wo0_wi14_r0_delayr28_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi14_r0_delayr28_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi14_r0_delayr28_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi14_r0_delayr28_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_mem_top_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi14_r0_delayr28_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi16_r0_delayr32_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi16_r0_delayr32_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi16_r0_delayr32_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi16_r0_delayr32_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi16_r0_delayr32_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi16_r0_delayr32_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi16_r0_delayr32_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi17_r0_delayr34_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi17_r0_delayr34_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi17_r0_delayr34_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi17_r0_delayr34_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi17_r0_delayr34_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi17_r0_delayr34_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi17_r0_delayr34_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi18_r0_delayr36_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi18_r0_delayr36_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi18_r0_delayr36_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi18_r0_delayr36_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi18_r0_delayr36_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi18_r0_delayr36_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi18_r0_delayr36_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi19_r0_delayr38_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi19_r0_delayr38_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi19_r0_delayr38_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi19_r0_delayr38_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi19_r0_delayr38_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi19_r0_delayr38_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi19_r0_delayr38_sticky_ena_q : signal is true;
    signal u0_m0_wo0_sys_delay_mem_reset0 : std_logic;
    signal u0_m0_wo0_sys_delay_mem_ia : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_sys_delay_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_sys_delay_mem_iq : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_mem_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_sys_delay_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_sys_delay_rdcnt_i : signal is true;
    signal u0_m0_wo0_sys_delay_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_sys_delay_rdcnt_eq : signal is true;
    signal u0_m0_wo0_sys_delay_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_sys_delay_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_sys_delay_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_sys_delay_sticky_ena_q : signal is true;
    signal u0_m0_wo0_sys_and_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_and_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr0_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr2_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr4_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr10_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr12_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr14_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_rdmux_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_cmp_a : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr16_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_rdmux_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_cmp_a : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr18_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_rdmux_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_cmp_a : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr20_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_rdmux_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_cmp_a : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr22_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_rdmux_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_cmp_a : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr24_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_rdmux_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_cmp_a : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr26_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_rdmux_q : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_cmp_a : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr28_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr32_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr34_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr36_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr38_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_sys_delay_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_sys_delay_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_sys_delay_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_sys_delay_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_memread_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_phasedelay30_q : STD_LOGIC_VECTOR (9 downto 0);
    signal out0_m0_wo0_lineup_select_delay_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_phasedelay0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_phasedelay2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_phasedelay4_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_phasedelay6_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_phasedelay8_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_phasedelay10_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_phasedelay12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_phasedelay14_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_phasedelay16_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_phasedelay18_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_phasedelay20_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_phasedelay22_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_phasedelay24_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_phasedelay26_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_phasedelay28_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_phasedelay32_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_phasedelay34_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_phasedelay36_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_phasedelay38_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr3_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr5_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr7_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr9_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr13_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr15_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr17_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr19_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr21_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr23_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr25_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr27_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr29_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr31_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr33_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr35_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr37_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr39_q : STD_LOGIC_VECTOR (9 downto 0);
    signal out0_m0_wo0_assign_id41_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- xIn(PORTIN,2)@10

    -- u0_m0_wo0_memread(DELAY,104)@10
    u0_m0_wo0_memread_q <= xIn_v;

    -- u0_m0_wo0_wi19_r0_delayr39(DELAY,945)@10
    u0_m0_wo0_wi19_r0_delayr39_q <= u0_m0_wo0_wi19_r0_phasedelay38_q;

    -- u0_m0_wo0_wi19_r0_delayr38_notEnable(LOGICAL,1204)@10
    u0_m0_wo0_wi19_r0_delayr38_notEnable_a <= xIn_v;
    u0_m0_wo0_wi19_r0_delayr38_notEnable_q <= not (u0_m0_wo0_wi19_r0_delayr38_notEnable_a);

    -- u0_m0_wo0_wi19_r0_delayr38_nor(LOGICAL,1205)@10
    u0_m0_wo0_wi19_r0_delayr38_nor_a <= u0_m0_wo0_wi19_r0_delayr38_notEnable_q;
    u0_m0_wo0_wi19_r0_delayr38_nor_b <= u0_m0_wo0_wi19_r0_delayr38_sticky_ena_q;
    u0_m0_wo0_wi19_r0_delayr38_nor_q <= not (u0_m0_wo0_wi19_r0_delayr38_nor_a or u0_m0_wo0_wi19_r0_delayr38_nor_b);

    -- u0_m0_wo0_wi19_r0_delayr38_mem_top(CONSTANT,1201)
    u0_m0_wo0_wi19_r0_delayr38_mem_top_q <= "011000";

    -- u0_m0_wo0_wi19_r0_delayr38_cmp(LOGICAL,1202)@10
    u0_m0_wo0_wi19_r0_delayr38_cmp_a <= u0_m0_wo0_wi19_r0_delayr38_mem_top_q;
    u0_m0_wo0_wi19_r0_delayr38_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi19_r0_delayr38_rdmux_q);
    u0_m0_wo0_wi19_r0_delayr38_cmp_q <= "1" WHEN u0_m0_wo0_wi19_r0_delayr38_cmp_a = u0_m0_wo0_wi19_r0_delayr38_cmp_b ELSE "0";

    -- u0_m0_wo0_wi19_r0_delayr38_cmpReg(REG,1203)@10
    u0_m0_wo0_wi19_r0_delayr38_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi19_r0_delayr38_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi19_r0_delayr38_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi19_r0_delayr38_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi19_r0_delayr38_sticky_ena(REG,1206)@10
    u0_m0_wo0_wi19_r0_delayr38_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi19_r0_delayr38_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi19_r0_delayr38_nor_q = "1") THEN
                u0_m0_wo0_wi19_r0_delayr38_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi19_r0_delayr38_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi19_r0_delayr38_enaAnd(LOGICAL,1207)@10
    u0_m0_wo0_wi19_r0_delayr38_enaAnd_a <= u0_m0_wo0_wi19_r0_delayr38_sticky_ena_q;
    u0_m0_wo0_wi19_r0_delayr38_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi19_r0_delayr38_enaAnd_q <= u0_m0_wo0_wi19_r0_delayr38_enaAnd_a and u0_m0_wo0_wi19_r0_delayr38_enaAnd_b;

    -- u0_m0_wo0_wi19_r0_delayr38_rdcnt(COUNTER,1198)@10
    -- every=1, low=0, high=24, step=1, init=1
    u0_m0_wo0_wi19_r0_delayr38_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi19_r0_delayr38_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi19_r0_delayr38_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi19_r0_delayr38_rdcnt_i = TO_UNSIGNED(23, 5)) THEN
                    u0_m0_wo0_wi19_r0_delayr38_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi19_r0_delayr38_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi19_r0_delayr38_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi19_r0_delayr38_rdcnt_i <= u0_m0_wo0_wi19_r0_delayr38_rdcnt_i - 24;
                ELSE
                    u0_m0_wo0_wi19_r0_delayr38_rdcnt_i <= u0_m0_wo0_wi19_r0_delayr38_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi19_r0_delayr38_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi19_r0_delayr38_rdcnt_i, 5)));

    -- u0_m0_wo0_wi19_r0_delayr38_rdmux(MUX,1199)@10
    u0_m0_wo0_wi19_r0_delayr38_rdmux_s <= xIn_v;
    u0_m0_wo0_wi19_r0_delayr38_rdmux: PROCESS (u0_m0_wo0_wi19_r0_delayr38_rdmux_s, u0_m0_wo0_wi19_r0_delayr38_wraddr_q, u0_m0_wo0_wi19_r0_delayr38_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi19_r0_delayr38_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi19_r0_delayr38_rdmux_q <= u0_m0_wo0_wi19_r0_delayr38_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi19_r0_delayr38_rdmux_q <= u0_m0_wo0_wi19_r0_delayr38_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi19_r0_delayr38_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi19_r0_delayr38_wraddr(REG,1200)@10
    u0_m0_wo0_wi19_r0_delayr38_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi19_r0_delayr38_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi19_r0_delayr38_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi19_r0_delayr38_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi19_r0_delayr38_mem(DUALMEM,1197)@10
    u0_m0_wo0_wi19_r0_delayr38_mem_ia <= STD_LOGIC_VECTOR(xIn_19);
    u0_m0_wo0_wi19_r0_delayr38_mem_aa <= u0_m0_wo0_wi19_r0_delayr38_wraddr_q;
    u0_m0_wo0_wi19_r0_delayr38_mem_ab <= u0_m0_wo0_wi19_r0_delayr38_rdmux_q;
    u0_m0_wo0_wi19_r0_delayr38_mem_reset0 <= areset;
    u0_m0_wo0_wi19_r0_delayr38_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 5,
        numwords_a => 25,
        width_b => 10,
        widthad_b => 5,
        numwords_b => 25,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi19_r0_delayr38_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi19_r0_delayr38_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi19_r0_delayr38_mem_aa,
        data_a => u0_m0_wo0_wi19_r0_delayr38_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi19_r0_delayr38_mem_ab,
        q_b => u0_m0_wo0_wi19_r0_delayr38_mem_iq
    );
    u0_m0_wo0_wi19_r0_delayr38_mem_q <= u0_m0_wo0_wi19_r0_delayr38_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi19_r0_phasedelay38(DELAY,907)@10
    u0_m0_wo0_wi19_r0_phasedelay38_q <= u0_m0_wo0_wi19_r0_delayr38_mem_q;

    -- u0_m0_wo0_wi18_r0_delayr37(DELAY,901)@10
    u0_m0_wo0_wi18_r0_delayr37_q <= u0_m0_wo0_wi18_r0_phasedelay36_q;

    -- u0_m0_wo0_wi18_r0_delayr36_notEnable(LOGICAL,1193)@10
    u0_m0_wo0_wi18_r0_delayr36_notEnable_a <= xIn_v;
    u0_m0_wo0_wi18_r0_delayr36_notEnable_q <= not (u0_m0_wo0_wi18_r0_delayr36_notEnable_a);

    -- u0_m0_wo0_wi18_r0_delayr36_nor(LOGICAL,1194)@10
    u0_m0_wo0_wi18_r0_delayr36_nor_a <= u0_m0_wo0_wi18_r0_delayr36_notEnable_q;
    u0_m0_wo0_wi18_r0_delayr36_nor_b <= u0_m0_wo0_wi18_r0_delayr36_sticky_ena_q;
    u0_m0_wo0_wi18_r0_delayr36_nor_q <= not (u0_m0_wo0_wi18_r0_delayr36_nor_a or u0_m0_wo0_wi18_r0_delayr36_nor_b);

    -- u0_m0_wo0_wi18_r0_delayr36_mem_top(CONSTANT,1190)
    u0_m0_wo0_wi18_r0_delayr36_mem_top_q <= "011010";

    -- u0_m0_wo0_wi18_r0_delayr36_cmp(LOGICAL,1191)@10
    u0_m0_wo0_wi18_r0_delayr36_cmp_a <= u0_m0_wo0_wi18_r0_delayr36_mem_top_q;
    u0_m0_wo0_wi18_r0_delayr36_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi18_r0_delayr36_rdmux_q);
    u0_m0_wo0_wi18_r0_delayr36_cmp_q <= "1" WHEN u0_m0_wo0_wi18_r0_delayr36_cmp_a = u0_m0_wo0_wi18_r0_delayr36_cmp_b ELSE "0";

    -- u0_m0_wo0_wi18_r0_delayr36_cmpReg(REG,1192)@10
    u0_m0_wo0_wi18_r0_delayr36_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi18_r0_delayr36_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi18_r0_delayr36_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi18_r0_delayr36_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi18_r0_delayr36_sticky_ena(REG,1195)@10
    u0_m0_wo0_wi18_r0_delayr36_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi18_r0_delayr36_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi18_r0_delayr36_nor_q = "1") THEN
                u0_m0_wo0_wi18_r0_delayr36_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi18_r0_delayr36_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi18_r0_delayr36_enaAnd(LOGICAL,1196)@10
    u0_m0_wo0_wi18_r0_delayr36_enaAnd_a <= u0_m0_wo0_wi18_r0_delayr36_sticky_ena_q;
    u0_m0_wo0_wi18_r0_delayr36_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi18_r0_delayr36_enaAnd_q <= u0_m0_wo0_wi18_r0_delayr36_enaAnd_a and u0_m0_wo0_wi18_r0_delayr36_enaAnd_b;

    -- u0_m0_wo0_wi18_r0_delayr36_rdcnt(COUNTER,1187)@10
    -- every=1, low=0, high=26, step=1, init=1
    u0_m0_wo0_wi18_r0_delayr36_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi18_r0_delayr36_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi18_r0_delayr36_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi18_r0_delayr36_rdcnt_i = TO_UNSIGNED(25, 5)) THEN
                    u0_m0_wo0_wi18_r0_delayr36_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi18_r0_delayr36_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi18_r0_delayr36_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi18_r0_delayr36_rdcnt_i <= u0_m0_wo0_wi18_r0_delayr36_rdcnt_i - 26;
                ELSE
                    u0_m0_wo0_wi18_r0_delayr36_rdcnt_i <= u0_m0_wo0_wi18_r0_delayr36_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi18_r0_delayr36_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi18_r0_delayr36_rdcnt_i, 5)));

    -- u0_m0_wo0_wi18_r0_delayr36_rdmux(MUX,1188)@10
    u0_m0_wo0_wi18_r0_delayr36_rdmux_s <= xIn_v;
    u0_m0_wo0_wi18_r0_delayr36_rdmux: PROCESS (u0_m0_wo0_wi18_r0_delayr36_rdmux_s, u0_m0_wo0_wi18_r0_delayr36_wraddr_q, u0_m0_wo0_wi18_r0_delayr36_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi18_r0_delayr36_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi18_r0_delayr36_rdmux_q <= u0_m0_wo0_wi18_r0_delayr36_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi18_r0_delayr36_rdmux_q <= u0_m0_wo0_wi18_r0_delayr36_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi18_r0_delayr36_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi18_r0_delayr36_wraddr(REG,1189)@10
    u0_m0_wo0_wi18_r0_delayr36_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi18_r0_delayr36_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi18_r0_delayr36_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi18_r0_delayr36_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi18_r0_delayr36_mem(DUALMEM,1186)@10
    u0_m0_wo0_wi18_r0_delayr36_mem_ia <= STD_LOGIC_VECTOR(xIn_18);
    u0_m0_wo0_wi18_r0_delayr36_mem_aa <= u0_m0_wo0_wi18_r0_delayr36_wraddr_q;
    u0_m0_wo0_wi18_r0_delayr36_mem_ab <= u0_m0_wo0_wi18_r0_delayr36_rdmux_q;
    u0_m0_wo0_wi18_r0_delayr36_mem_reset0 <= areset;
    u0_m0_wo0_wi18_r0_delayr36_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 5,
        numwords_a => 27,
        width_b => 10,
        widthad_b => 5,
        numwords_b => 27,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi18_r0_delayr36_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi18_r0_delayr36_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi18_r0_delayr36_mem_aa,
        data_a => u0_m0_wo0_wi18_r0_delayr36_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi18_r0_delayr36_mem_ab,
        q_b => u0_m0_wo0_wi18_r0_delayr36_mem_iq
    );
    u0_m0_wo0_wi18_r0_delayr36_mem_q <= u0_m0_wo0_wi18_r0_delayr36_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi18_r0_phasedelay36(DELAY,865)@10
    u0_m0_wo0_wi18_r0_phasedelay36_q <= u0_m0_wo0_wi18_r0_delayr36_mem_q;

    -- u0_m0_wo0_wi17_r0_delayr35(DELAY,857)@10
    u0_m0_wo0_wi17_r0_delayr35_q <= u0_m0_wo0_wi17_r0_phasedelay34_q;

    -- u0_m0_wo0_wi17_r0_delayr34_notEnable(LOGICAL,1182)@10
    u0_m0_wo0_wi17_r0_delayr34_notEnable_a <= xIn_v;
    u0_m0_wo0_wi17_r0_delayr34_notEnable_q <= not (u0_m0_wo0_wi17_r0_delayr34_notEnable_a);

    -- u0_m0_wo0_wi17_r0_delayr34_nor(LOGICAL,1183)@10
    u0_m0_wo0_wi17_r0_delayr34_nor_a <= u0_m0_wo0_wi17_r0_delayr34_notEnable_q;
    u0_m0_wo0_wi17_r0_delayr34_nor_b <= u0_m0_wo0_wi17_r0_delayr34_sticky_ena_q;
    u0_m0_wo0_wi17_r0_delayr34_nor_q <= not (u0_m0_wo0_wi17_r0_delayr34_nor_a or u0_m0_wo0_wi17_r0_delayr34_nor_b);

    -- u0_m0_wo0_wi17_r0_delayr34_mem_top(CONSTANT,1179)
    u0_m0_wo0_wi17_r0_delayr34_mem_top_q <= "011100";

    -- u0_m0_wo0_wi17_r0_delayr34_cmp(LOGICAL,1180)@10
    u0_m0_wo0_wi17_r0_delayr34_cmp_a <= u0_m0_wo0_wi17_r0_delayr34_mem_top_q;
    u0_m0_wo0_wi17_r0_delayr34_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi17_r0_delayr34_rdmux_q);
    u0_m0_wo0_wi17_r0_delayr34_cmp_q <= "1" WHEN u0_m0_wo0_wi17_r0_delayr34_cmp_a = u0_m0_wo0_wi17_r0_delayr34_cmp_b ELSE "0";

    -- u0_m0_wo0_wi17_r0_delayr34_cmpReg(REG,1181)@10
    u0_m0_wo0_wi17_r0_delayr34_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi17_r0_delayr34_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi17_r0_delayr34_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi17_r0_delayr34_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi17_r0_delayr34_sticky_ena(REG,1184)@10
    u0_m0_wo0_wi17_r0_delayr34_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi17_r0_delayr34_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi17_r0_delayr34_nor_q = "1") THEN
                u0_m0_wo0_wi17_r0_delayr34_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi17_r0_delayr34_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi17_r0_delayr34_enaAnd(LOGICAL,1185)@10
    u0_m0_wo0_wi17_r0_delayr34_enaAnd_a <= u0_m0_wo0_wi17_r0_delayr34_sticky_ena_q;
    u0_m0_wo0_wi17_r0_delayr34_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi17_r0_delayr34_enaAnd_q <= u0_m0_wo0_wi17_r0_delayr34_enaAnd_a and u0_m0_wo0_wi17_r0_delayr34_enaAnd_b;

    -- u0_m0_wo0_wi17_r0_delayr34_rdcnt(COUNTER,1176)@10
    -- every=1, low=0, high=28, step=1, init=1
    u0_m0_wo0_wi17_r0_delayr34_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi17_r0_delayr34_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi17_r0_delayr34_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi17_r0_delayr34_rdcnt_i = TO_UNSIGNED(27, 5)) THEN
                    u0_m0_wo0_wi17_r0_delayr34_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi17_r0_delayr34_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi17_r0_delayr34_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi17_r0_delayr34_rdcnt_i <= u0_m0_wo0_wi17_r0_delayr34_rdcnt_i - 28;
                ELSE
                    u0_m0_wo0_wi17_r0_delayr34_rdcnt_i <= u0_m0_wo0_wi17_r0_delayr34_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi17_r0_delayr34_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi17_r0_delayr34_rdcnt_i, 5)));

    -- u0_m0_wo0_wi17_r0_delayr34_rdmux(MUX,1177)@10
    u0_m0_wo0_wi17_r0_delayr34_rdmux_s <= xIn_v;
    u0_m0_wo0_wi17_r0_delayr34_rdmux: PROCESS (u0_m0_wo0_wi17_r0_delayr34_rdmux_s, u0_m0_wo0_wi17_r0_delayr34_wraddr_q, u0_m0_wo0_wi17_r0_delayr34_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi17_r0_delayr34_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi17_r0_delayr34_rdmux_q <= u0_m0_wo0_wi17_r0_delayr34_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi17_r0_delayr34_rdmux_q <= u0_m0_wo0_wi17_r0_delayr34_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi17_r0_delayr34_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi17_r0_delayr34_wraddr(REG,1178)@10
    u0_m0_wo0_wi17_r0_delayr34_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi17_r0_delayr34_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi17_r0_delayr34_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi17_r0_delayr34_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi17_r0_delayr34_mem(DUALMEM,1175)@10
    u0_m0_wo0_wi17_r0_delayr34_mem_ia <= STD_LOGIC_VECTOR(xIn_17);
    u0_m0_wo0_wi17_r0_delayr34_mem_aa <= u0_m0_wo0_wi17_r0_delayr34_wraddr_q;
    u0_m0_wo0_wi17_r0_delayr34_mem_ab <= u0_m0_wo0_wi17_r0_delayr34_rdmux_q;
    u0_m0_wo0_wi17_r0_delayr34_mem_reset0 <= areset;
    u0_m0_wo0_wi17_r0_delayr34_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 5,
        numwords_a => 29,
        width_b => 10,
        widthad_b => 5,
        numwords_b => 29,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi17_r0_delayr34_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi17_r0_delayr34_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi17_r0_delayr34_mem_aa,
        data_a => u0_m0_wo0_wi17_r0_delayr34_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi17_r0_delayr34_mem_ab,
        q_b => u0_m0_wo0_wi17_r0_delayr34_mem_iq
    );
    u0_m0_wo0_wi17_r0_delayr34_mem_q <= u0_m0_wo0_wi17_r0_delayr34_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi17_r0_phasedelay34(DELAY,823)@10
    u0_m0_wo0_wi17_r0_phasedelay34_q <= u0_m0_wo0_wi17_r0_delayr34_mem_q;

    -- u0_m0_wo0_wi16_r0_delayr33(DELAY,813)@10
    u0_m0_wo0_wi16_r0_delayr33_q <= u0_m0_wo0_wi16_r0_phasedelay32_q;

    -- u0_m0_wo0_wi16_r0_delayr32_notEnable(LOGICAL,1171)@10
    u0_m0_wo0_wi16_r0_delayr32_notEnable_a <= xIn_v;
    u0_m0_wo0_wi16_r0_delayr32_notEnable_q <= not (u0_m0_wo0_wi16_r0_delayr32_notEnable_a);

    -- u0_m0_wo0_wi16_r0_delayr32_nor(LOGICAL,1172)@10
    u0_m0_wo0_wi16_r0_delayr32_nor_a <= u0_m0_wo0_wi16_r0_delayr32_notEnable_q;
    u0_m0_wo0_wi16_r0_delayr32_nor_b <= u0_m0_wo0_wi16_r0_delayr32_sticky_ena_q;
    u0_m0_wo0_wi16_r0_delayr32_nor_q <= not (u0_m0_wo0_wi16_r0_delayr32_nor_a or u0_m0_wo0_wi16_r0_delayr32_nor_b);

    -- u0_m0_wo0_wi16_r0_delayr32_mem_top(CONSTANT,1168)
    u0_m0_wo0_wi16_r0_delayr32_mem_top_q <= "011110";

    -- u0_m0_wo0_wi16_r0_delayr32_cmp(LOGICAL,1169)@10
    u0_m0_wo0_wi16_r0_delayr32_cmp_a <= u0_m0_wo0_wi16_r0_delayr32_mem_top_q;
    u0_m0_wo0_wi16_r0_delayr32_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi16_r0_delayr32_rdmux_q);
    u0_m0_wo0_wi16_r0_delayr32_cmp_q <= "1" WHEN u0_m0_wo0_wi16_r0_delayr32_cmp_a = u0_m0_wo0_wi16_r0_delayr32_cmp_b ELSE "0";

    -- u0_m0_wo0_wi16_r0_delayr32_cmpReg(REG,1170)@10
    u0_m0_wo0_wi16_r0_delayr32_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi16_r0_delayr32_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi16_r0_delayr32_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi16_r0_delayr32_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi16_r0_delayr32_sticky_ena(REG,1173)@10
    u0_m0_wo0_wi16_r0_delayr32_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi16_r0_delayr32_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi16_r0_delayr32_nor_q = "1") THEN
                u0_m0_wo0_wi16_r0_delayr32_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi16_r0_delayr32_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi16_r0_delayr32_enaAnd(LOGICAL,1174)@10
    u0_m0_wo0_wi16_r0_delayr32_enaAnd_a <= u0_m0_wo0_wi16_r0_delayr32_sticky_ena_q;
    u0_m0_wo0_wi16_r0_delayr32_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi16_r0_delayr32_enaAnd_q <= u0_m0_wo0_wi16_r0_delayr32_enaAnd_a and u0_m0_wo0_wi16_r0_delayr32_enaAnd_b;

    -- u0_m0_wo0_wi16_r0_delayr32_rdcnt(COUNTER,1165)@10
    -- every=1, low=0, high=30, step=1, init=1
    u0_m0_wo0_wi16_r0_delayr32_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi16_r0_delayr32_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi16_r0_delayr32_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi16_r0_delayr32_rdcnt_i = TO_UNSIGNED(29, 5)) THEN
                    u0_m0_wo0_wi16_r0_delayr32_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi16_r0_delayr32_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi16_r0_delayr32_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi16_r0_delayr32_rdcnt_i <= u0_m0_wo0_wi16_r0_delayr32_rdcnt_i - 30;
                ELSE
                    u0_m0_wo0_wi16_r0_delayr32_rdcnt_i <= u0_m0_wo0_wi16_r0_delayr32_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi16_r0_delayr32_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi16_r0_delayr32_rdcnt_i, 5)));

    -- u0_m0_wo0_wi16_r0_delayr32_rdmux(MUX,1166)@10
    u0_m0_wo0_wi16_r0_delayr32_rdmux_s <= xIn_v;
    u0_m0_wo0_wi16_r0_delayr32_rdmux: PROCESS (u0_m0_wo0_wi16_r0_delayr32_rdmux_s, u0_m0_wo0_wi16_r0_delayr32_wraddr_q, u0_m0_wo0_wi16_r0_delayr32_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi16_r0_delayr32_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi16_r0_delayr32_rdmux_q <= u0_m0_wo0_wi16_r0_delayr32_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi16_r0_delayr32_rdmux_q <= u0_m0_wo0_wi16_r0_delayr32_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi16_r0_delayr32_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi16_r0_delayr32_wraddr(REG,1167)@10
    u0_m0_wo0_wi16_r0_delayr32_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi16_r0_delayr32_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi16_r0_delayr32_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi16_r0_delayr32_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi16_r0_delayr32_mem(DUALMEM,1164)@10
    u0_m0_wo0_wi16_r0_delayr32_mem_ia <= STD_LOGIC_VECTOR(xIn_16);
    u0_m0_wo0_wi16_r0_delayr32_mem_aa <= u0_m0_wo0_wi16_r0_delayr32_wraddr_q;
    u0_m0_wo0_wi16_r0_delayr32_mem_ab <= u0_m0_wo0_wi16_r0_delayr32_rdmux_q;
    u0_m0_wo0_wi16_r0_delayr32_mem_reset0 <= areset;
    u0_m0_wo0_wi16_r0_delayr32_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 5,
        numwords_a => 31,
        width_b => 10,
        widthad_b => 5,
        numwords_b => 31,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi16_r0_delayr32_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi16_r0_delayr32_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi16_r0_delayr32_mem_aa,
        data_a => u0_m0_wo0_wi16_r0_delayr32_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi16_r0_delayr32_mem_ab,
        q_b => u0_m0_wo0_wi16_r0_delayr32_mem_iq
    );
    u0_m0_wo0_wi16_r0_delayr32_mem_q <= u0_m0_wo0_wi16_r0_delayr32_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi16_r0_phasedelay32(DELAY,781)@10
    u0_m0_wo0_wi16_r0_phasedelay32_q <= u0_m0_wo0_wi16_r0_delayr32_mem_q;

    -- d_u0_m0_wo0_compute_q_11(DELAY,997)@10
    d_u0_m0_wo0_compute_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,105)@10
    u0_m0_wo0_compute_q <= u0_m0_wo0_memread_q;

    -- u0_m0_wo0_cma1(CHAINMULTADD,987)@10
    -- altera synthesis_off
    u0_m0_wo0_cma1_k0 <= (
        0 => TO_SIGNED(21,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k1 <= (
        0 => TO_SIGNED(112,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k2 <= (
        0 => TO_SIGNED(16,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k3 <= (
        0 => TO_SIGNED(117,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k4 <= (
        0 => TO_SIGNED(12,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k5 <= (
        0 => TO_SIGNED(122,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k6 <= (
        0 => TO_SIGNED(10,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k7 <= (
        0 => TO_SIGNED(125,11),
        others => (others => '0'));
    -- altera synthesis_on
    u0_m0_wo0_cma1_r(0) <= u0_m0_wo0_cma1_k0(TO_INTEGER(u0_m0_wo0_cma1_c0(0)));
    u0_m0_wo0_cma1_r(1) <= u0_m0_wo0_cma1_k1(TO_INTEGER(u0_m0_wo0_cma1_c0(1)));
    u0_m0_wo0_cma1_r(2) <= u0_m0_wo0_cma1_k2(TO_INTEGER(u0_m0_wo0_cma1_c0(2)));
    u0_m0_wo0_cma1_r(3) <= u0_m0_wo0_cma1_k3(TO_INTEGER(u0_m0_wo0_cma1_c0(3)));
    u0_m0_wo0_cma1_r(4) <= u0_m0_wo0_cma1_k4(TO_INTEGER(u0_m0_wo0_cma1_c0(4)));
    u0_m0_wo0_cma1_r(5) <= u0_m0_wo0_cma1_k5(TO_INTEGER(u0_m0_wo0_cma1_c0(5)));
    u0_m0_wo0_cma1_r(6) <= u0_m0_wo0_cma1_k6(TO_INTEGER(u0_m0_wo0_cma1_c0(6)));
    u0_m0_wo0_cma1_r(7) <= u0_m0_wo0_cma1_k7(TO_INTEGER(u0_m0_wo0_cma1_c0(7)));
    u0_m0_wo0_cma1_p(0) <= u0_m0_wo0_cma1_a0(0) * u0_m0_wo0_cma1_r(0);
    u0_m0_wo0_cma1_p(1) <= u0_m0_wo0_cma1_a0(1) * u0_m0_wo0_cma1_r(1);
    u0_m0_wo0_cma1_p(2) <= u0_m0_wo0_cma1_a0(2) * u0_m0_wo0_cma1_r(2);
    u0_m0_wo0_cma1_p(3) <= u0_m0_wo0_cma1_a0(3) * u0_m0_wo0_cma1_r(3);
    u0_m0_wo0_cma1_p(4) <= u0_m0_wo0_cma1_a0(4) * u0_m0_wo0_cma1_r(4);
    u0_m0_wo0_cma1_p(5) <= u0_m0_wo0_cma1_a0(5) * u0_m0_wo0_cma1_r(5);
    u0_m0_wo0_cma1_p(6) <= u0_m0_wo0_cma1_a0(6) * u0_m0_wo0_cma1_r(6);
    u0_m0_wo0_cma1_p(7) <= u0_m0_wo0_cma1_a0(7) * u0_m0_wo0_cma1_r(7);
    u0_m0_wo0_cma1_u(0) <= RESIZE(u0_m0_wo0_cma1_p(0),24);
    u0_m0_wo0_cma1_u(1) <= RESIZE(u0_m0_wo0_cma1_p(1),24);
    u0_m0_wo0_cma1_u(2) <= RESIZE(u0_m0_wo0_cma1_p(2),24);
    u0_m0_wo0_cma1_u(3) <= RESIZE(u0_m0_wo0_cma1_p(3),24);
    u0_m0_wo0_cma1_u(4) <= RESIZE(u0_m0_wo0_cma1_p(4),24);
    u0_m0_wo0_cma1_u(5) <= RESIZE(u0_m0_wo0_cma1_p(5),24);
    u0_m0_wo0_cma1_u(6) <= RESIZE(u0_m0_wo0_cma1_p(6),24);
    u0_m0_wo0_cma1_u(7) <= RESIZE(u0_m0_wo0_cma1_p(7),24);
    u0_m0_wo0_cma1_w(0) <= u0_m0_wo0_cma1_u(0);
    u0_m0_wo0_cma1_w(1) <= u0_m0_wo0_cma1_u(1);
    u0_m0_wo0_cma1_w(2) <= u0_m0_wo0_cma1_u(2);
    u0_m0_wo0_cma1_w(3) <= u0_m0_wo0_cma1_u(3);
    u0_m0_wo0_cma1_w(4) <= u0_m0_wo0_cma1_u(4);
    u0_m0_wo0_cma1_w(5) <= u0_m0_wo0_cma1_u(5);
    u0_m0_wo0_cma1_w(6) <= u0_m0_wo0_cma1_u(6);
    u0_m0_wo0_cma1_w(7) <= u0_m0_wo0_cma1_u(7);
    u0_m0_wo0_cma1_x(0) <= u0_m0_wo0_cma1_w(0);
    u0_m0_wo0_cma1_x(1) <= u0_m0_wo0_cma1_w(1);
    u0_m0_wo0_cma1_x(2) <= u0_m0_wo0_cma1_w(2);
    u0_m0_wo0_cma1_x(3) <= u0_m0_wo0_cma1_w(3);
    u0_m0_wo0_cma1_x(4) <= u0_m0_wo0_cma1_w(4);
    u0_m0_wo0_cma1_x(5) <= u0_m0_wo0_cma1_w(5);
    u0_m0_wo0_cma1_x(6) <= u0_m0_wo0_cma1_w(6);
    u0_m0_wo0_cma1_x(7) <= u0_m0_wo0_cma1_w(7);
    u0_m0_wo0_cma1_y(0) <= u0_m0_wo0_cma1_s(1) + u0_m0_wo0_cma1_x(0);
    u0_m0_wo0_cma1_y(1) <= u0_m0_wo0_cma1_s(2) + u0_m0_wo0_cma1_x(1);
    u0_m0_wo0_cma1_y(2) <= u0_m0_wo0_cma1_s(3) + u0_m0_wo0_cma1_x(2);
    u0_m0_wo0_cma1_y(3) <= u0_m0_wo0_cma1_s(4) + u0_m0_wo0_cma1_x(3);
    u0_m0_wo0_cma1_y(4) <= u0_m0_wo0_cma1_s(5) + u0_m0_wo0_cma1_x(4);
    u0_m0_wo0_cma1_y(5) <= u0_m0_wo0_cma1_s(6) + u0_m0_wo0_cma1_x(5);
    u0_m0_wo0_cma1_y(6) <= u0_m0_wo0_cma1_s(7) + u0_m0_wo0_cma1_x(6);
    u0_m0_wo0_cma1_y(7) <= u0_m0_wo0_cma1_x(7);
    u0_m0_wo0_cma1_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma1_a0 <= (others => (others => '0'));
            u0_m0_wo0_cma1_c0 <= (others => (others => '0'));
            u0_m0_wo0_cma1_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                u0_m0_wo0_cma1_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_wi16_r0_phasedelay32_q),10);
                u0_m0_wo0_cma1_a0(1) <= RESIZE(SIGNED(u0_m0_wo0_wi16_r0_delayr33_q),10);
                u0_m0_wo0_cma1_a0(2) <= RESIZE(SIGNED(u0_m0_wo0_wi17_r0_phasedelay34_q),10);
                u0_m0_wo0_cma1_a0(3) <= RESIZE(SIGNED(u0_m0_wo0_wi17_r0_delayr35_q),10);
                u0_m0_wo0_cma1_a0(4) <= RESIZE(SIGNED(u0_m0_wo0_wi18_r0_phasedelay36_q),10);
                u0_m0_wo0_cma1_a0(5) <= RESIZE(SIGNED(u0_m0_wo0_wi18_r0_delayr37_q),10);
                u0_m0_wo0_cma1_a0(6) <= RESIZE(SIGNED(u0_m0_wo0_wi19_r0_phasedelay38_q),10);
                u0_m0_wo0_cma1_a0(7) <= RESIZE(SIGNED(u0_m0_wo0_wi19_r0_delayr39_q),10);
                u0_m0_wo0_cma1_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(7) <= RESIZE(UNSIGNED(GND_q),3);
            END IF;
            IF (d_u0_m0_wo0_compute_q_11_q = "1") THEN
                u0_m0_wo0_cma1_s(0) <= u0_m0_wo0_cma1_y(0);
                u0_m0_wo0_cma1_s(1) <= u0_m0_wo0_cma1_y(1);
                u0_m0_wo0_cma1_s(2) <= u0_m0_wo0_cma1_y(2);
                u0_m0_wo0_cma1_s(3) <= u0_m0_wo0_cma1_y(3);
                u0_m0_wo0_cma1_s(4) <= u0_m0_wo0_cma1_y(4);
                u0_m0_wo0_cma1_s(5) <= u0_m0_wo0_cma1_y(5);
                u0_m0_wo0_cma1_s(6) <= u0_m0_wo0_cma1_y(6);
                u0_m0_wo0_cma1_s(7) <= u0_m0_wo0_cma1_y(7);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma1_delay : dspba_delay
    GENERIC MAP ( width => 24, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma1_s(0)(23 downto 0)), xout => u0_m0_wo0_cma1_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma1_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma1_qq(23 downto 0));

    -- u0_m0_wo0_wi15_r0_delayr31(DELAY,769)@10
    u0_m0_wo0_wi15_r0_delayr31_q <= u0_m0_wo0_wi15_r0_phasedelay30_q;

    -- u0_m0_wo0_wi15_r0_delayr30(DELAY,738)@10
    u0_m0_wo0_wi15_r0_delayr30 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_15, xout => u0_m0_wo0_wi15_r0_delayr30_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi15_r0_phasedelay30(DELAY,739)@10
    u0_m0_wo0_wi15_r0_phasedelay30_q <= u0_m0_wo0_wi15_r0_delayr30_q;

    -- u0_m0_wo0_wi14_r0_delayr29(DELAY,725)@10
    u0_m0_wo0_wi14_r0_delayr29_q <= u0_m0_wo0_wi14_r0_phasedelay28_q;

    -- u0_m0_wo0_wi14_r0_delayr28_notEnable(LOGICAL,1160)@10
    u0_m0_wo0_wi14_r0_delayr28_notEnable_a <= xIn_v;
    u0_m0_wo0_wi14_r0_delayr28_notEnable_q <= not (u0_m0_wo0_wi14_r0_delayr28_notEnable_a);

    -- u0_m0_wo0_wi14_r0_delayr28_nor(LOGICAL,1161)@10
    u0_m0_wo0_wi14_r0_delayr28_nor_a <= u0_m0_wo0_wi14_r0_delayr28_notEnable_q;
    u0_m0_wo0_wi14_r0_delayr28_nor_b <= u0_m0_wo0_wi14_r0_delayr28_sticky_ena_q;
    u0_m0_wo0_wi14_r0_delayr28_nor_q <= not (u0_m0_wo0_wi14_r0_delayr28_nor_a or u0_m0_wo0_wi14_r0_delayr28_nor_b);

    -- u0_m0_wo0_wi14_r0_delayr28_mem_top(CONSTANT,1157)
    u0_m0_wo0_wi14_r0_delayr28_mem_top_q <= "010";

    -- u0_m0_wo0_wi14_r0_delayr28_cmp(LOGICAL,1158)@10
    u0_m0_wo0_wi14_r0_delayr28_cmp_a <= u0_m0_wo0_wi14_r0_delayr28_mem_top_q;
    u0_m0_wo0_wi14_r0_delayr28_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi14_r0_delayr28_rdmux_q);
    u0_m0_wo0_wi14_r0_delayr28_cmp_q <= "1" WHEN u0_m0_wo0_wi14_r0_delayr28_cmp_a = u0_m0_wo0_wi14_r0_delayr28_cmp_b ELSE "0";

    -- u0_m0_wo0_wi14_r0_delayr28_cmpReg(REG,1159)@10
    u0_m0_wo0_wi14_r0_delayr28_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi14_r0_delayr28_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi14_r0_delayr28_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi14_r0_delayr28_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi14_r0_delayr28_sticky_ena(REG,1162)@10
    u0_m0_wo0_wi14_r0_delayr28_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi14_r0_delayr28_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi14_r0_delayr28_nor_q = "1") THEN
                u0_m0_wo0_wi14_r0_delayr28_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi14_r0_delayr28_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi14_r0_delayr28_enaAnd(LOGICAL,1163)@10
    u0_m0_wo0_wi14_r0_delayr28_enaAnd_a <= u0_m0_wo0_wi14_r0_delayr28_sticky_ena_q;
    u0_m0_wo0_wi14_r0_delayr28_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi14_r0_delayr28_enaAnd_q <= u0_m0_wo0_wi14_r0_delayr28_enaAnd_a and u0_m0_wo0_wi14_r0_delayr28_enaAnd_b;

    -- u0_m0_wo0_wi14_r0_delayr28_rdcnt(COUNTER,1154)@10
    -- every=1, low=0, high=2, step=1, init=1
    u0_m0_wo0_wi14_r0_delayr28_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi14_r0_delayr28_rdcnt_i <= TO_UNSIGNED(1, 2);
            u0_m0_wo0_wi14_r0_delayr28_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi14_r0_delayr28_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                    u0_m0_wo0_wi14_r0_delayr28_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi14_r0_delayr28_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi14_r0_delayr28_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi14_r0_delayr28_rdcnt_i <= u0_m0_wo0_wi14_r0_delayr28_rdcnt_i - 2;
                ELSE
                    u0_m0_wo0_wi14_r0_delayr28_rdcnt_i <= u0_m0_wo0_wi14_r0_delayr28_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi14_r0_delayr28_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi14_r0_delayr28_rdcnt_i, 2)));

    -- u0_m0_wo0_wi14_r0_delayr28_rdmux(MUX,1155)@10
    u0_m0_wo0_wi14_r0_delayr28_rdmux_s <= xIn_v;
    u0_m0_wo0_wi14_r0_delayr28_rdmux: PROCESS (u0_m0_wo0_wi14_r0_delayr28_rdmux_s, u0_m0_wo0_wi14_r0_delayr28_wraddr_q, u0_m0_wo0_wi14_r0_delayr28_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi14_r0_delayr28_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi14_r0_delayr28_rdmux_q <= u0_m0_wo0_wi14_r0_delayr28_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi14_r0_delayr28_rdmux_q <= u0_m0_wo0_wi14_r0_delayr28_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi14_r0_delayr28_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi14_r0_delayr28_wraddr(REG,1156)@10
    u0_m0_wo0_wi14_r0_delayr28_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi14_r0_delayr28_wraddr_q <= "00";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi14_r0_delayr28_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi14_r0_delayr28_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi14_r0_delayr28_mem(DUALMEM,1153)@10
    u0_m0_wo0_wi14_r0_delayr28_mem_ia <= STD_LOGIC_VECTOR(xIn_14);
    u0_m0_wo0_wi14_r0_delayr28_mem_aa <= u0_m0_wo0_wi14_r0_delayr28_wraddr_q;
    u0_m0_wo0_wi14_r0_delayr28_mem_ab <= u0_m0_wo0_wi14_r0_delayr28_rdmux_q;
    u0_m0_wo0_wi14_r0_delayr28_mem_reset0 <= areset;
    u0_m0_wo0_wi14_r0_delayr28_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 10,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi14_r0_delayr28_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi14_r0_delayr28_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi14_r0_delayr28_mem_aa,
        data_a => u0_m0_wo0_wi14_r0_delayr28_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi14_r0_delayr28_mem_ab,
        q_b => u0_m0_wo0_wi14_r0_delayr28_mem_iq
    );
    u0_m0_wo0_wi14_r0_delayr28_mem_q <= u0_m0_wo0_wi14_r0_delayr28_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi14_r0_phasedelay28(DELAY,697)@10
    u0_m0_wo0_wi14_r0_phasedelay28_q <= u0_m0_wo0_wi14_r0_delayr28_mem_q;

    -- u0_m0_wo0_wi13_r0_delayr27(DELAY,681)@10
    u0_m0_wo0_wi13_r0_delayr27_q <= u0_m0_wo0_wi13_r0_phasedelay26_q;

    -- u0_m0_wo0_wi13_r0_delayr26_notEnable(LOGICAL,1149)@10
    u0_m0_wo0_wi13_r0_delayr26_notEnable_a <= xIn_v;
    u0_m0_wo0_wi13_r0_delayr26_notEnable_q <= not (u0_m0_wo0_wi13_r0_delayr26_notEnable_a);

    -- u0_m0_wo0_wi13_r0_delayr26_nor(LOGICAL,1150)@10
    u0_m0_wo0_wi13_r0_delayr26_nor_a <= u0_m0_wo0_wi13_r0_delayr26_notEnable_q;
    u0_m0_wo0_wi13_r0_delayr26_nor_b <= u0_m0_wo0_wi13_r0_delayr26_sticky_ena_q;
    u0_m0_wo0_wi13_r0_delayr26_nor_q <= not (u0_m0_wo0_wi13_r0_delayr26_nor_a or u0_m0_wo0_wi13_r0_delayr26_nor_b);

    -- u0_m0_wo0_wi13_r0_delayr26_mem_top(CONSTANT,1146)
    u0_m0_wo0_wi13_r0_delayr26_mem_top_q <= "0100";

    -- u0_m0_wo0_wi13_r0_delayr26_cmp(LOGICAL,1147)@10
    u0_m0_wo0_wi13_r0_delayr26_cmp_a <= u0_m0_wo0_wi13_r0_delayr26_mem_top_q;
    u0_m0_wo0_wi13_r0_delayr26_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi13_r0_delayr26_rdmux_q);
    u0_m0_wo0_wi13_r0_delayr26_cmp_q <= "1" WHEN u0_m0_wo0_wi13_r0_delayr26_cmp_a = u0_m0_wo0_wi13_r0_delayr26_cmp_b ELSE "0";

    -- u0_m0_wo0_wi13_r0_delayr26_cmpReg(REG,1148)@10
    u0_m0_wo0_wi13_r0_delayr26_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi13_r0_delayr26_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi13_r0_delayr26_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi13_r0_delayr26_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi13_r0_delayr26_sticky_ena(REG,1151)@10
    u0_m0_wo0_wi13_r0_delayr26_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi13_r0_delayr26_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi13_r0_delayr26_nor_q = "1") THEN
                u0_m0_wo0_wi13_r0_delayr26_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi13_r0_delayr26_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi13_r0_delayr26_enaAnd(LOGICAL,1152)@10
    u0_m0_wo0_wi13_r0_delayr26_enaAnd_a <= u0_m0_wo0_wi13_r0_delayr26_sticky_ena_q;
    u0_m0_wo0_wi13_r0_delayr26_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi13_r0_delayr26_enaAnd_q <= u0_m0_wo0_wi13_r0_delayr26_enaAnd_a and u0_m0_wo0_wi13_r0_delayr26_enaAnd_b;

    -- u0_m0_wo0_wi13_r0_delayr26_rdcnt(COUNTER,1143)@10
    -- every=1, low=0, high=4, step=1, init=1
    u0_m0_wo0_wi13_r0_delayr26_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi13_r0_delayr26_rdcnt_i <= TO_UNSIGNED(1, 3);
            u0_m0_wo0_wi13_r0_delayr26_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi13_r0_delayr26_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                    u0_m0_wo0_wi13_r0_delayr26_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi13_r0_delayr26_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi13_r0_delayr26_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi13_r0_delayr26_rdcnt_i <= u0_m0_wo0_wi13_r0_delayr26_rdcnt_i - 4;
                ELSE
                    u0_m0_wo0_wi13_r0_delayr26_rdcnt_i <= u0_m0_wo0_wi13_r0_delayr26_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi13_r0_delayr26_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi13_r0_delayr26_rdcnt_i, 3)));

    -- u0_m0_wo0_wi13_r0_delayr26_rdmux(MUX,1144)@10
    u0_m0_wo0_wi13_r0_delayr26_rdmux_s <= xIn_v;
    u0_m0_wo0_wi13_r0_delayr26_rdmux: PROCESS (u0_m0_wo0_wi13_r0_delayr26_rdmux_s, u0_m0_wo0_wi13_r0_delayr26_wraddr_q, u0_m0_wo0_wi13_r0_delayr26_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi13_r0_delayr26_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi13_r0_delayr26_rdmux_q <= u0_m0_wo0_wi13_r0_delayr26_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi13_r0_delayr26_rdmux_q <= u0_m0_wo0_wi13_r0_delayr26_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi13_r0_delayr26_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi13_r0_delayr26_wraddr(REG,1145)@10
    u0_m0_wo0_wi13_r0_delayr26_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi13_r0_delayr26_wraddr_q <= "000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi13_r0_delayr26_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi13_r0_delayr26_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi13_r0_delayr26_mem(DUALMEM,1142)@10
    u0_m0_wo0_wi13_r0_delayr26_mem_ia <= STD_LOGIC_VECTOR(xIn_13);
    u0_m0_wo0_wi13_r0_delayr26_mem_aa <= u0_m0_wo0_wi13_r0_delayr26_wraddr_q;
    u0_m0_wo0_wi13_r0_delayr26_mem_ab <= u0_m0_wo0_wi13_r0_delayr26_rdmux_q;
    u0_m0_wo0_wi13_r0_delayr26_mem_reset0 <= areset;
    u0_m0_wo0_wi13_r0_delayr26_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 10,
        widthad_b => 3,
        numwords_b => 5,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi13_r0_delayr26_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi13_r0_delayr26_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi13_r0_delayr26_mem_aa,
        data_a => u0_m0_wo0_wi13_r0_delayr26_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi13_r0_delayr26_mem_ab,
        q_b => u0_m0_wo0_wi13_r0_delayr26_mem_iq
    );
    u0_m0_wo0_wi13_r0_delayr26_mem_q <= u0_m0_wo0_wi13_r0_delayr26_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi13_r0_phasedelay26(DELAY,655)@10
    u0_m0_wo0_wi13_r0_phasedelay26_q <= u0_m0_wo0_wi13_r0_delayr26_mem_q;

    -- u0_m0_wo0_wi12_r0_delayr25(DELAY,637)@10
    u0_m0_wo0_wi12_r0_delayr25_q <= u0_m0_wo0_wi12_r0_phasedelay24_q;

    -- u0_m0_wo0_wi12_r0_delayr24_notEnable(LOGICAL,1138)@10
    u0_m0_wo0_wi12_r0_delayr24_notEnable_a <= xIn_v;
    u0_m0_wo0_wi12_r0_delayr24_notEnable_q <= not (u0_m0_wo0_wi12_r0_delayr24_notEnable_a);

    -- u0_m0_wo0_wi12_r0_delayr24_nor(LOGICAL,1139)@10
    u0_m0_wo0_wi12_r0_delayr24_nor_a <= u0_m0_wo0_wi12_r0_delayr24_notEnable_q;
    u0_m0_wo0_wi12_r0_delayr24_nor_b <= u0_m0_wo0_wi12_r0_delayr24_sticky_ena_q;
    u0_m0_wo0_wi12_r0_delayr24_nor_q <= not (u0_m0_wo0_wi12_r0_delayr24_nor_a or u0_m0_wo0_wi12_r0_delayr24_nor_b);

    -- u0_m0_wo0_wi12_r0_delayr24_mem_top(CONSTANT,1135)
    u0_m0_wo0_wi12_r0_delayr24_mem_top_q <= "0110";

    -- u0_m0_wo0_wi12_r0_delayr24_cmp(LOGICAL,1136)@10
    u0_m0_wo0_wi12_r0_delayr24_cmp_a <= u0_m0_wo0_wi12_r0_delayr24_mem_top_q;
    u0_m0_wo0_wi12_r0_delayr24_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi12_r0_delayr24_rdmux_q);
    u0_m0_wo0_wi12_r0_delayr24_cmp_q <= "1" WHEN u0_m0_wo0_wi12_r0_delayr24_cmp_a = u0_m0_wo0_wi12_r0_delayr24_cmp_b ELSE "0";

    -- u0_m0_wo0_wi12_r0_delayr24_cmpReg(REG,1137)@10
    u0_m0_wo0_wi12_r0_delayr24_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi12_r0_delayr24_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi12_r0_delayr24_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi12_r0_delayr24_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi12_r0_delayr24_sticky_ena(REG,1140)@10
    u0_m0_wo0_wi12_r0_delayr24_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi12_r0_delayr24_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi12_r0_delayr24_nor_q = "1") THEN
                u0_m0_wo0_wi12_r0_delayr24_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi12_r0_delayr24_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi12_r0_delayr24_enaAnd(LOGICAL,1141)@10
    u0_m0_wo0_wi12_r0_delayr24_enaAnd_a <= u0_m0_wo0_wi12_r0_delayr24_sticky_ena_q;
    u0_m0_wo0_wi12_r0_delayr24_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi12_r0_delayr24_enaAnd_q <= u0_m0_wo0_wi12_r0_delayr24_enaAnd_a and u0_m0_wo0_wi12_r0_delayr24_enaAnd_b;

    -- u0_m0_wo0_wi12_r0_delayr24_rdcnt(COUNTER,1132)@10
    -- every=1, low=0, high=6, step=1, init=1
    u0_m0_wo0_wi12_r0_delayr24_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi12_r0_delayr24_rdcnt_i <= TO_UNSIGNED(1, 3);
            u0_m0_wo0_wi12_r0_delayr24_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi12_r0_delayr24_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                    u0_m0_wo0_wi12_r0_delayr24_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi12_r0_delayr24_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi12_r0_delayr24_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi12_r0_delayr24_rdcnt_i <= u0_m0_wo0_wi12_r0_delayr24_rdcnt_i - 6;
                ELSE
                    u0_m0_wo0_wi12_r0_delayr24_rdcnt_i <= u0_m0_wo0_wi12_r0_delayr24_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi12_r0_delayr24_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi12_r0_delayr24_rdcnt_i, 3)));

    -- u0_m0_wo0_wi12_r0_delayr24_rdmux(MUX,1133)@10
    u0_m0_wo0_wi12_r0_delayr24_rdmux_s <= xIn_v;
    u0_m0_wo0_wi12_r0_delayr24_rdmux: PROCESS (u0_m0_wo0_wi12_r0_delayr24_rdmux_s, u0_m0_wo0_wi12_r0_delayr24_wraddr_q, u0_m0_wo0_wi12_r0_delayr24_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi12_r0_delayr24_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi12_r0_delayr24_rdmux_q <= u0_m0_wo0_wi12_r0_delayr24_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi12_r0_delayr24_rdmux_q <= u0_m0_wo0_wi12_r0_delayr24_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi12_r0_delayr24_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi12_r0_delayr24_wraddr(REG,1134)@10
    u0_m0_wo0_wi12_r0_delayr24_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi12_r0_delayr24_wraddr_q <= "000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi12_r0_delayr24_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi12_r0_delayr24_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi12_r0_delayr24_mem(DUALMEM,1131)@10
    u0_m0_wo0_wi12_r0_delayr24_mem_ia <= STD_LOGIC_VECTOR(xIn_12);
    u0_m0_wo0_wi12_r0_delayr24_mem_aa <= u0_m0_wo0_wi12_r0_delayr24_wraddr_q;
    u0_m0_wo0_wi12_r0_delayr24_mem_ab <= u0_m0_wo0_wi12_r0_delayr24_rdmux_q;
    u0_m0_wo0_wi12_r0_delayr24_mem_reset0 <= areset;
    u0_m0_wo0_wi12_r0_delayr24_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 3,
        numwords_a => 7,
        width_b => 10,
        widthad_b => 3,
        numwords_b => 7,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi12_r0_delayr24_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi12_r0_delayr24_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi12_r0_delayr24_mem_aa,
        data_a => u0_m0_wo0_wi12_r0_delayr24_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi12_r0_delayr24_mem_ab,
        q_b => u0_m0_wo0_wi12_r0_delayr24_mem_iq
    );
    u0_m0_wo0_wi12_r0_delayr24_mem_q <= u0_m0_wo0_wi12_r0_delayr24_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi12_r0_phasedelay24(DELAY,613)@10
    u0_m0_wo0_wi12_r0_phasedelay24_q <= u0_m0_wo0_wi12_r0_delayr24_mem_q;

    -- u0_m0_wo0_wi11_r0_delayr23(DELAY,593)@10
    u0_m0_wo0_wi11_r0_delayr23_q <= u0_m0_wo0_wi11_r0_phasedelay22_q;

    -- u0_m0_wo0_wi11_r0_delayr22_notEnable(LOGICAL,1127)@10
    u0_m0_wo0_wi11_r0_delayr22_notEnable_a <= xIn_v;
    u0_m0_wo0_wi11_r0_delayr22_notEnable_q <= not (u0_m0_wo0_wi11_r0_delayr22_notEnable_a);

    -- u0_m0_wo0_wi11_r0_delayr22_nor(LOGICAL,1128)@10
    u0_m0_wo0_wi11_r0_delayr22_nor_a <= u0_m0_wo0_wi11_r0_delayr22_notEnable_q;
    u0_m0_wo0_wi11_r0_delayr22_nor_b <= u0_m0_wo0_wi11_r0_delayr22_sticky_ena_q;
    u0_m0_wo0_wi11_r0_delayr22_nor_q <= not (u0_m0_wo0_wi11_r0_delayr22_nor_a or u0_m0_wo0_wi11_r0_delayr22_nor_b);

    -- u0_m0_wo0_wi11_r0_delayr22_mem_top(CONSTANT,1124)
    u0_m0_wo0_wi11_r0_delayr22_mem_top_q <= "01000";

    -- u0_m0_wo0_wi11_r0_delayr22_cmp(LOGICAL,1125)@10
    u0_m0_wo0_wi11_r0_delayr22_cmp_a <= u0_m0_wo0_wi11_r0_delayr22_mem_top_q;
    u0_m0_wo0_wi11_r0_delayr22_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi11_r0_delayr22_rdmux_q);
    u0_m0_wo0_wi11_r0_delayr22_cmp_q <= "1" WHEN u0_m0_wo0_wi11_r0_delayr22_cmp_a = u0_m0_wo0_wi11_r0_delayr22_cmp_b ELSE "0";

    -- u0_m0_wo0_wi11_r0_delayr22_cmpReg(REG,1126)@10
    u0_m0_wo0_wi11_r0_delayr22_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi11_r0_delayr22_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi11_r0_delayr22_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi11_r0_delayr22_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi11_r0_delayr22_sticky_ena(REG,1129)@10
    u0_m0_wo0_wi11_r0_delayr22_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi11_r0_delayr22_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi11_r0_delayr22_nor_q = "1") THEN
                u0_m0_wo0_wi11_r0_delayr22_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi11_r0_delayr22_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi11_r0_delayr22_enaAnd(LOGICAL,1130)@10
    u0_m0_wo0_wi11_r0_delayr22_enaAnd_a <= u0_m0_wo0_wi11_r0_delayr22_sticky_ena_q;
    u0_m0_wo0_wi11_r0_delayr22_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi11_r0_delayr22_enaAnd_q <= u0_m0_wo0_wi11_r0_delayr22_enaAnd_a and u0_m0_wo0_wi11_r0_delayr22_enaAnd_b;

    -- u0_m0_wo0_wi11_r0_delayr22_rdcnt(COUNTER,1121)@10
    -- every=1, low=0, high=8, step=1, init=1
    u0_m0_wo0_wi11_r0_delayr22_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi11_r0_delayr22_rdcnt_i <= TO_UNSIGNED(1, 4);
            u0_m0_wo0_wi11_r0_delayr22_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi11_r0_delayr22_rdcnt_i = TO_UNSIGNED(7, 4)) THEN
                    u0_m0_wo0_wi11_r0_delayr22_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi11_r0_delayr22_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi11_r0_delayr22_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi11_r0_delayr22_rdcnt_i <= u0_m0_wo0_wi11_r0_delayr22_rdcnt_i - 8;
                ELSE
                    u0_m0_wo0_wi11_r0_delayr22_rdcnt_i <= u0_m0_wo0_wi11_r0_delayr22_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi11_r0_delayr22_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi11_r0_delayr22_rdcnt_i, 4)));

    -- u0_m0_wo0_wi11_r0_delayr22_rdmux(MUX,1122)@10
    u0_m0_wo0_wi11_r0_delayr22_rdmux_s <= xIn_v;
    u0_m0_wo0_wi11_r0_delayr22_rdmux: PROCESS (u0_m0_wo0_wi11_r0_delayr22_rdmux_s, u0_m0_wo0_wi11_r0_delayr22_wraddr_q, u0_m0_wo0_wi11_r0_delayr22_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi11_r0_delayr22_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi11_r0_delayr22_rdmux_q <= u0_m0_wo0_wi11_r0_delayr22_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi11_r0_delayr22_rdmux_q <= u0_m0_wo0_wi11_r0_delayr22_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi11_r0_delayr22_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi11_r0_delayr22_wraddr(REG,1123)@10
    u0_m0_wo0_wi11_r0_delayr22_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi11_r0_delayr22_wraddr_q <= "0000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi11_r0_delayr22_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi11_r0_delayr22_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi11_r0_delayr22_mem(DUALMEM,1120)@10
    u0_m0_wo0_wi11_r0_delayr22_mem_ia <= STD_LOGIC_VECTOR(xIn_11);
    u0_m0_wo0_wi11_r0_delayr22_mem_aa <= u0_m0_wo0_wi11_r0_delayr22_wraddr_q;
    u0_m0_wo0_wi11_r0_delayr22_mem_ab <= u0_m0_wo0_wi11_r0_delayr22_rdmux_q;
    u0_m0_wo0_wi11_r0_delayr22_mem_reset0 <= areset;
    u0_m0_wo0_wi11_r0_delayr22_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 4,
        numwords_a => 9,
        width_b => 10,
        widthad_b => 4,
        numwords_b => 9,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi11_r0_delayr22_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi11_r0_delayr22_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi11_r0_delayr22_mem_aa,
        data_a => u0_m0_wo0_wi11_r0_delayr22_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi11_r0_delayr22_mem_ab,
        q_b => u0_m0_wo0_wi11_r0_delayr22_mem_iq
    );
    u0_m0_wo0_wi11_r0_delayr22_mem_q <= u0_m0_wo0_wi11_r0_delayr22_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi11_r0_phasedelay22(DELAY,571)@10
    u0_m0_wo0_wi11_r0_phasedelay22_q <= u0_m0_wo0_wi11_r0_delayr22_mem_q;

    -- u0_m0_wo0_wi10_r0_delayr21(DELAY,549)@10
    u0_m0_wo0_wi10_r0_delayr21_q <= u0_m0_wo0_wi10_r0_phasedelay20_q;

    -- u0_m0_wo0_wi10_r0_delayr20_notEnable(LOGICAL,1116)@10
    u0_m0_wo0_wi10_r0_delayr20_notEnable_a <= xIn_v;
    u0_m0_wo0_wi10_r0_delayr20_notEnable_q <= not (u0_m0_wo0_wi10_r0_delayr20_notEnable_a);

    -- u0_m0_wo0_wi10_r0_delayr20_nor(LOGICAL,1117)@10
    u0_m0_wo0_wi10_r0_delayr20_nor_a <= u0_m0_wo0_wi10_r0_delayr20_notEnable_q;
    u0_m0_wo0_wi10_r0_delayr20_nor_b <= u0_m0_wo0_wi10_r0_delayr20_sticky_ena_q;
    u0_m0_wo0_wi10_r0_delayr20_nor_q <= not (u0_m0_wo0_wi10_r0_delayr20_nor_a or u0_m0_wo0_wi10_r0_delayr20_nor_b);

    -- u0_m0_wo0_wi10_r0_delayr20_mem_top(CONSTANT,1113)
    u0_m0_wo0_wi10_r0_delayr20_mem_top_q <= "01010";

    -- u0_m0_wo0_wi10_r0_delayr20_cmp(LOGICAL,1114)@10
    u0_m0_wo0_wi10_r0_delayr20_cmp_a <= u0_m0_wo0_wi10_r0_delayr20_mem_top_q;
    u0_m0_wo0_wi10_r0_delayr20_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi10_r0_delayr20_rdmux_q);
    u0_m0_wo0_wi10_r0_delayr20_cmp_q <= "1" WHEN u0_m0_wo0_wi10_r0_delayr20_cmp_a = u0_m0_wo0_wi10_r0_delayr20_cmp_b ELSE "0";

    -- u0_m0_wo0_wi10_r0_delayr20_cmpReg(REG,1115)@10
    u0_m0_wo0_wi10_r0_delayr20_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi10_r0_delayr20_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi10_r0_delayr20_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi10_r0_delayr20_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi10_r0_delayr20_sticky_ena(REG,1118)@10
    u0_m0_wo0_wi10_r0_delayr20_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi10_r0_delayr20_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi10_r0_delayr20_nor_q = "1") THEN
                u0_m0_wo0_wi10_r0_delayr20_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi10_r0_delayr20_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi10_r0_delayr20_enaAnd(LOGICAL,1119)@10
    u0_m0_wo0_wi10_r0_delayr20_enaAnd_a <= u0_m0_wo0_wi10_r0_delayr20_sticky_ena_q;
    u0_m0_wo0_wi10_r0_delayr20_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi10_r0_delayr20_enaAnd_q <= u0_m0_wo0_wi10_r0_delayr20_enaAnd_a and u0_m0_wo0_wi10_r0_delayr20_enaAnd_b;

    -- u0_m0_wo0_wi10_r0_delayr20_rdcnt(COUNTER,1110)@10
    -- every=1, low=0, high=10, step=1, init=1
    u0_m0_wo0_wi10_r0_delayr20_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi10_r0_delayr20_rdcnt_i <= TO_UNSIGNED(1, 4);
            u0_m0_wo0_wi10_r0_delayr20_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi10_r0_delayr20_rdcnt_i = TO_UNSIGNED(9, 4)) THEN
                    u0_m0_wo0_wi10_r0_delayr20_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi10_r0_delayr20_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi10_r0_delayr20_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi10_r0_delayr20_rdcnt_i <= u0_m0_wo0_wi10_r0_delayr20_rdcnt_i - 10;
                ELSE
                    u0_m0_wo0_wi10_r0_delayr20_rdcnt_i <= u0_m0_wo0_wi10_r0_delayr20_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi10_r0_delayr20_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi10_r0_delayr20_rdcnt_i, 4)));

    -- u0_m0_wo0_wi10_r0_delayr20_rdmux(MUX,1111)@10
    u0_m0_wo0_wi10_r0_delayr20_rdmux_s <= xIn_v;
    u0_m0_wo0_wi10_r0_delayr20_rdmux: PROCESS (u0_m0_wo0_wi10_r0_delayr20_rdmux_s, u0_m0_wo0_wi10_r0_delayr20_wraddr_q, u0_m0_wo0_wi10_r0_delayr20_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi10_r0_delayr20_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi10_r0_delayr20_rdmux_q <= u0_m0_wo0_wi10_r0_delayr20_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi10_r0_delayr20_rdmux_q <= u0_m0_wo0_wi10_r0_delayr20_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi10_r0_delayr20_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi10_r0_delayr20_wraddr(REG,1112)@10
    u0_m0_wo0_wi10_r0_delayr20_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi10_r0_delayr20_wraddr_q <= "0000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi10_r0_delayr20_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi10_r0_delayr20_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi10_r0_delayr20_mem(DUALMEM,1109)@10
    u0_m0_wo0_wi10_r0_delayr20_mem_ia <= STD_LOGIC_VECTOR(xIn_10);
    u0_m0_wo0_wi10_r0_delayr20_mem_aa <= u0_m0_wo0_wi10_r0_delayr20_wraddr_q;
    u0_m0_wo0_wi10_r0_delayr20_mem_ab <= u0_m0_wo0_wi10_r0_delayr20_rdmux_q;
    u0_m0_wo0_wi10_r0_delayr20_mem_reset0 <= areset;
    u0_m0_wo0_wi10_r0_delayr20_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 4,
        numwords_a => 11,
        width_b => 10,
        widthad_b => 4,
        numwords_b => 11,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi10_r0_delayr20_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi10_r0_delayr20_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi10_r0_delayr20_mem_aa,
        data_a => u0_m0_wo0_wi10_r0_delayr20_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi10_r0_delayr20_mem_ab,
        q_b => u0_m0_wo0_wi10_r0_delayr20_mem_iq
    );
    u0_m0_wo0_wi10_r0_delayr20_mem_q <= u0_m0_wo0_wi10_r0_delayr20_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi10_r0_phasedelay20(DELAY,529)@10
    u0_m0_wo0_wi10_r0_phasedelay20_q <= u0_m0_wo0_wi10_r0_delayr20_mem_q;

    -- u0_m0_wo0_wi9_r0_delayr19(DELAY,505)@10
    u0_m0_wo0_wi9_r0_delayr19_q <= u0_m0_wo0_wi9_r0_phasedelay18_q;

    -- u0_m0_wo0_wi9_r0_delayr18_notEnable(LOGICAL,1105)@10
    u0_m0_wo0_wi9_r0_delayr18_notEnable_a <= xIn_v;
    u0_m0_wo0_wi9_r0_delayr18_notEnable_q <= not (u0_m0_wo0_wi9_r0_delayr18_notEnable_a);

    -- u0_m0_wo0_wi9_r0_delayr18_nor(LOGICAL,1106)@10
    u0_m0_wo0_wi9_r0_delayr18_nor_a <= u0_m0_wo0_wi9_r0_delayr18_notEnable_q;
    u0_m0_wo0_wi9_r0_delayr18_nor_b <= u0_m0_wo0_wi9_r0_delayr18_sticky_ena_q;
    u0_m0_wo0_wi9_r0_delayr18_nor_q <= not (u0_m0_wo0_wi9_r0_delayr18_nor_a or u0_m0_wo0_wi9_r0_delayr18_nor_b);

    -- u0_m0_wo0_wi9_r0_delayr18_mem_top(CONSTANT,1102)
    u0_m0_wo0_wi9_r0_delayr18_mem_top_q <= "01100";

    -- u0_m0_wo0_wi9_r0_delayr18_cmp(LOGICAL,1103)@10
    u0_m0_wo0_wi9_r0_delayr18_cmp_a <= u0_m0_wo0_wi9_r0_delayr18_mem_top_q;
    u0_m0_wo0_wi9_r0_delayr18_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi9_r0_delayr18_rdmux_q);
    u0_m0_wo0_wi9_r0_delayr18_cmp_q <= "1" WHEN u0_m0_wo0_wi9_r0_delayr18_cmp_a = u0_m0_wo0_wi9_r0_delayr18_cmp_b ELSE "0";

    -- u0_m0_wo0_wi9_r0_delayr18_cmpReg(REG,1104)@10
    u0_m0_wo0_wi9_r0_delayr18_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi9_r0_delayr18_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi9_r0_delayr18_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi9_r0_delayr18_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi9_r0_delayr18_sticky_ena(REG,1107)@10
    u0_m0_wo0_wi9_r0_delayr18_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi9_r0_delayr18_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi9_r0_delayr18_nor_q = "1") THEN
                u0_m0_wo0_wi9_r0_delayr18_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi9_r0_delayr18_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi9_r0_delayr18_enaAnd(LOGICAL,1108)@10
    u0_m0_wo0_wi9_r0_delayr18_enaAnd_a <= u0_m0_wo0_wi9_r0_delayr18_sticky_ena_q;
    u0_m0_wo0_wi9_r0_delayr18_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi9_r0_delayr18_enaAnd_q <= u0_m0_wo0_wi9_r0_delayr18_enaAnd_a and u0_m0_wo0_wi9_r0_delayr18_enaAnd_b;

    -- u0_m0_wo0_wi9_r0_delayr18_rdcnt(COUNTER,1099)@10
    -- every=1, low=0, high=12, step=1, init=1
    u0_m0_wo0_wi9_r0_delayr18_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi9_r0_delayr18_rdcnt_i <= TO_UNSIGNED(1, 4);
            u0_m0_wo0_wi9_r0_delayr18_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi9_r0_delayr18_rdcnt_i = TO_UNSIGNED(11, 4)) THEN
                    u0_m0_wo0_wi9_r0_delayr18_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi9_r0_delayr18_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi9_r0_delayr18_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi9_r0_delayr18_rdcnt_i <= u0_m0_wo0_wi9_r0_delayr18_rdcnt_i - 12;
                ELSE
                    u0_m0_wo0_wi9_r0_delayr18_rdcnt_i <= u0_m0_wo0_wi9_r0_delayr18_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi9_r0_delayr18_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi9_r0_delayr18_rdcnt_i, 4)));

    -- u0_m0_wo0_wi9_r0_delayr18_rdmux(MUX,1100)@10
    u0_m0_wo0_wi9_r0_delayr18_rdmux_s <= xIn_v;
    u0_m0_wo0_wi9_r0_delayr18_rdmux: PROCESS (u0_m0_wo0_wi9_r0_delayr18_rdmux_s, u0_m0_wo0_wi9_r0_delayr18_wraddr_q, u0_m0_wo0_wi9_r0_delayr18_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi9_r0_delayr18_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi9_r0_delayr18_rdmux_q <= u0_m0_wo0_wi9_r0_delayr18_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi9_r0_delayr18_rdmux_q <= u0_m0_wo0_wi9_r0_delayr18_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi9_r0_delayr18_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi9_r0_delayr18_wraddr(REG,1101)@10
    u0_m0_wo0_wi9_r0_delayr18_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi9_r0_delayr18_wraddr_q <= "0000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi9_r0_delayr18_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi9_r0_delayr18_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi9_r0_delayr18_mem(DUALMEM,1098)@10
    u0_m0_wo0_wi9_r0_delayr18_mem_ia <= STD_LOGIC_VECTOR(xIn_9);
    u0_m0_wo0_wi9_r0_delayr18_mem_aa <= u0_m0_wo0_wi9_r0_delayr18_wraddr_q;
    u0_m0_wo0_wi9_r0_delayr18_mem_ab <= u0_m0_wo0_wi9_r0_delayr18_rdmux_q;
    u0_m0_wo0_wi9_r0_delayr18_mem_reset0 <= areset;
    u0_m0_wo0_wi9_r0_delayr18_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 4,
        numwords_a => 13,
        width_b => 10,
        widthad_b => 4,
        numwords_b => 13,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi9_r0_delayr18_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi9_r0_delayr18_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi9_r0_delayr18_mem_aa,
        data_a => u0_m0_wo0_wi9_r0_delayr18_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi9_r0_delayr18_mem_ab,
        q_b => u0_m0_wo0_wi9_r0_delayr18_mem_iq
    );
    u0_m0_wo0_wi9_r0_delayr18_mem_q <= u0_m0_wo0_wi9_r0_delayr18_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi9_r0_phasedelay18(DELAY,487)@10
    u0_m0_wo0_wi9_r0_phasedelay18_q <= u0_m0_wo0_wi9_r0_delayr18_mem_q;

    -- u0_m0_wo0_wi8_r0_delayr17(DELAY,461)@10
    u0_m0_wo0_wi8_r0_delayr17_q <= u0_m0_wo0_wi8_r0_phasedelay16_q;

    -- u0_m0_wo0_wi8_r0_delayr16_notEnable(LOGICAL,1094)@10
    u0_m0_wo0_wi8_r0_delayr16_notEnable_a <= xIn_v;
    u0_m0_wo0_wi8_r0_delayr16_notEnable_q <= not (u0_m0_wo0_wi8_r0_delayr16_notEnable_a);

    -- u0_m0_wo0_wi8_r0_delayr16_nor(LOGICAL,1095)@10
    u0_m0_wo0_wi8_r0_delayr16_nor_a <= u0_m0_wo0_wi8_r0_delayr16_notEnable_q;
    u0_m0_wo0_wi8_r0_delayr16_nor_b <= u0_m0_wo0_wi8_r0_delayr16_sticky_ena_q;
    u0_m0_wo0_wi8_r0_delayr16_nor_q <= not (u0_m0_wo0_wi8_r0_delayr16_nor_a or u0_m0_wo0_wi8_r0_delayr16_nor_b);

    -- u0_m0_wo0_wi8_r0_delayr16_mem_top(CONSTANT,1091)
    u0_m0_wo0_wi8_r0_delayr16_mem_top_q <= "01110";

    -- u0_m0_wo0_wi8_r0_delayr16_cmp(LOGICAL,1092)@10
    u0_m0_wo0_wi8_r0_delayr16_cmp_a <= u0_m0_wo0_wi8_r0_delayr16_mem_top_q;
    u0_m0_wo0_wi8_r0_delayr16_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi8_r0_delayr16_rdmux_q);
    u0_m0_wo0_wi8_r0_delayr16_cmp_q <= "1" WHEN u0_m0_wo0_wi8_r0_delayr16_cmp_a = u0_m0_wo0_wi8_r0_delayr16_cmp_b ELSE "0";

    -- u0_m0_wo0_wi8_r0_delayr16_cmpReg(REG,1093)@10
    u0_m0_wo0_wi8_r0_delayr16_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi8_r0_delayr16_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi8_r0_delayr16_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi8_r0_delayr16_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi8_r0_delayr16_sticky_ena(REG,1096)@10
    u0_m0_wo0_wi8_r0_delayr16_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi8_r0_delayr16_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi8_r0_delayr16_nor_q = "1") THEN
                u0_m0_wo0_wi8_r0_delayr16_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi8_r0_delayr16_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi8_r0_delayr16_enaAnd(LOGICAL,1097)@10
    u0_m0_wo0_wi8_r0_delayr16_enaAnd_a <= u0_m0_wo0_wi8_r0_delayr16_sticky_ena_q;
    u0_m0_wo0_wi8_r0_delayr16_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi8_r0_delayr16_enaAnd_q <= u0_m0_wo0_wi8_r0_delayr16_enaAnd_a and u0_m0_wo0_wi8_r0_delayr16_enaAnd_b;

    -- u0_m0_wo0_wi8_r0_delayr16_rdcnt(COUNTER,1088)@10
    -- every=1, low=0, high=14, step=1, init=1
    u0_m0_wo0_wi8_r0_delayr16_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi8_r0_delayr16_rdcnt_i <= TO_UNSIGNED(1, 4);
            u0_m0_wo0_wi8_r0_delayr16_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi8_r0_delayr16_rdcnt_i = TO_UNSIGNED(13, 4)) THEN
                    u0_m0_wo0_wi8_r0_delayr16_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi8_r0_delayr16_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi8_r0_delayr16_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi8_r0_delayr16_rdcnt_i <= u0_m0_wo0_wi8_r0_delayr16_rdcnt_i - 14;
                ELSE
                    u0_m0_wo0_wi8_r0_delayr16_rdcnt_i <= u0_m0_wo0_wi8_r0_delayr16_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi8_r0_delayr16_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi8_r0_delayr16_rdcnt_i, 4)));

    -- u0_m0_wo0_wi8_r0_delayr16_rdmux(MUX,1089)@10
    u0_m0_wo0_wi8_r0_delayr16_rdmux_s <= xIn_v;
    u0_m0_wo0_wi8_r0_delayr16_rdmux: PROCESS (u0_m0_wo0_wi8_r0_delayr16_rdmux_s, u0_m0_wo0_wi8_r0_delayr16_wraddr_q, u0_m0_wo0_wi8_r0_delayr16_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi8_r0_delayr16_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi8_r0_delayr16_rdmux_q <= u0_m0_wo0_wi8_r0_delayr16_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi8_r0_delayr16_rdmux_q <= u0_m0_wo0_wi8_r0_delayr16_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi8_r0_delayr16_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi8_r0_delayr16_wraddr(REG,1090)@10
    u0_m0_wo0_wi8_r0_delayr16_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi8_r0_delayr16_wraddr_q <= "0000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi8_r0_delayr16_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi8_r0_delayr16_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi8_r0_delayr16_mem(DUALMEM,1087)@10
    u0_m0_wo0_wi8_r0_delayr16_mem_ia <= STD_LOGIC_VECTOR(xIn_8);
    u0_m0_wo0_wi8_r0_delayr16_mem_aa <= u0_m0_wo0_wi8_r0_delayr16_wraddr_q;
    u0_m0_wo0_wi8_r0_delayr16_mem_ab <= u0_m0_wo0_wi8_r0_delayr16_rdmux_q;
    u0_m0_wo0_wi8_r0_delayr16_mem_reset0 <= areset;
    u0_m0_wo0_wi8_r0_delayr16_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 4,
        numwords_a => 15,
        width_b => 10,
        widthad_b => 4,
        numwords_b => 15,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi8_r0_delayr16_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi8_r0_delayr16_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi8_r0_delayr16_mem_aa,
        data_a => u0_m0_wo0_wi8_r0_delayr16_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi8_r0_delayr16_mem_ab,
        q_b => u0_m0_wo0_wi8_r0_delayr16_mem_iq
    );
    u0_m0_wo0_wi8_r0_delayr16_mem_q <= u0_m0_wo0_wi8_r0_delayr16_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi8_r0_phasedelay16(DELAY,445)@10
    u0_m0_wo0_wi8_r0_phasedelay16_q <= u0_m0_wo0_wi8_r0_delayr16_mem_q;

    -- u0_m0_wo0_wi7_r0_delayr15(DELAY,417)@10
    u0_m0_wo0_wi7_r0_delayr15_q <= u0_m0_wo0_wi7_r0_phasedelay14_q;

    -- u0_m0_wo0_wi7_r0_delayr14_notEnable(LOGICAL,1083)@10
    u0_m0_wo0_wi7_r0_delayr14_notEnable_a <= xIn_v;
    u0_m0_wo0_wi7_r0_delayr14_notEnable_q <= not (u0_m0_wo0_wi7_r0_delayr14_notEnable_a);

    -- u0_m0_wo0_wi7_r0_delayr14_nor(LOGICAL,1084)@10
    u0_m0_wo0_wi7_r0_delayr14_nor_a <= u0_m0_wo0_wi7_r0_delayr14_notEnable_q;
    u0_m0_wo0_wi7_r0_delayr14_nor_b <= u0_m0_wo0_wi7_r0_delayr14_sticky_ena_q;
    u0_m0_wo0_wi7_r0_delayr14_nor_q <= not (u0_m0_wo0_wi7_r0_delayr14_nor_a or u0_m0_wo0_wi7_r0_delayr14_nor_b);

    -- u0_m0_wo0_wi7_r0_delayr14_mem_top(CONSTANT,1080)
    u0_m0_wo0_wi7_r0_delayr14_mem_top_q <= "010000";

    -- u0_m0_wo0_wi7_r0_delayr14_cmp(LOGICAL,1081)@10
    u0_m0_wo0_wi7_r0_delayr14_cmp_a <= u0_m0_wo0_wi7_r0_delayr14_mem_top_q;
    u0_m0_wo0_wi7_r0_delayr14_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi7_r0_delayr14_rdmux_q);
    u0_m0_wo0_wi7_r0_delayr14_cmp_q <= "1" WHEN u0_m0_wo0_wi7_r0_delayr14_cmp_a = u0_m0_wo0_wi7_r0_delayr14_cmp_b ELSE "0";

    -- u0_m0_wo0_wi7_r0_delayr14_cmpReg(REG,1082)@10
    u0_m0_wo0_wi7_r0_delayr14_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi7_r0_delayr14_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi7_r0_delayr14_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi7_r0_delayr14_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi7_r0_delayr14_sticky_ena(REG,1085)@10
    u0_m0_wo0_wi7_r0_delayr14_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi7_r0_delayr14_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi7_r0_delayr14_nor_q = "1") THEN
                u0_m0_wo0_wi7_r0_delayr14_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi7_r0_delayr14_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi7_r0_delayr14_enaAnd(LOGICAL,1086)@10
    u0_m0_wo0_wi7_r0_delayr14_enaAnd_a <= u0_m0_wo0_wi7_r0_delayr14_sticky_ena_q;
    u0_m0_wo0_wi7_r0_delayr14_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi7_r0_delayr14_enaAnd_q <= u0_m0_wo0_wi7_r0_delayr14_enaAnd_a and u0_m0_wo0_wi7_r0_delayr14_enaAnd_b;

    -- u0_m0_wo0_wi7_r0_delayr14_rdcnt(COUNTER,1077)@10
    -- every=1, low=0, high=16, step=1, init=1
    u0_m0_wo0_wi7_r0_delayr14_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi7_r0_delayr14_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi7_r0_delayr14_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi7_r0_delayr14_rdcnt_i = TO_UNSIGNED(15, 5)) THEN
                    u0_m0_wo0_wi7_r0_delayr14_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi7_r0_delayr14_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi7_r0_delayr14_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi7_r0_delayr14_rdcnt_i <= u0_m0_wo0_wi7_r0_delayr14_rdcnt_i - 16;
                ELSE
                    u0_m0_wo0_wi7_r0_delayr14_rdcnt_i <= u0_m0_wo0_wi7_r0_delayr14_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi7_r0_delayr14_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi7_r0_delayr14_rdcnt_i, 5)));

    -- u0_m0_wo0_wi7_r0_delayr14_rdmux(MUX,1078)@10
    u0_m0_wo0_wi7_r0_delayr14_rdmux_s <= xIn_v;
    u0_m0_wo0_wi7_r0_delayr14_rdmux: PROCESS (u0_m0_wo0_wi7_r0_delayr14_rdmux_s, u0_m0_wo0_wi7_r0_delayr14_wraddr_q, u0_m0_wo0_wi7_r0_delayr14_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi7_r0_delayr14_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi7_r0_delayr14_rdmux_q <= u0_m0_wo0_wi7_r0_delayr14_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi7_r0_delayr14_rdmux_q <= u0_m0_wo0_wi7_r0_delayr14_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi7_r0_delayr14_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi7_r0_delayr14_wraddr(REG,1079)@10
    u0_m0_wo0_wi7_r0_delayr14_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi7_r0_delayr14_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi7_r0_delayr14_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi7_r0_delayr14_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi7_r0_delayr14_mem(DUALMEM,1076)@10
    u0_m0_wo0_wi7_r0_delayr14_mem_ia <= STD_LOGIC_VECTOR(xIn_7);
    u0_m0_wo0_wi7_r0_delayr14_mem_aa <= u0_m0_wo0_wi7_r0_delayr14_wraddr_q;
    u0_m0_wo0_wi7_r0_delayr14_mem_ab <= u0_m0_wo0_wi7_r0_delayr14_rdmux_q;
    u0_m0_wo0_wi7_r0_delayr14_mem_reset0 <= areset;
    u0_m0_wo0_wi7_r0_delayr14_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 5,
        numwords_a => 17,
        width_b => 10,
        widthad_b => 5,
        numwords_b => 17,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi7_r0_delayr14_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi7_r0_delayr14_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi7_r0_delayr14_mem_aa,
        data_a => u0_m0_wo0_wi7_r0_delayr14_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi7_r0_delayr14_mem_ab,
        q_b => u0_m0_wo0_wi7_r0_delayr14_mem_iq
    );
    u0_m0_wo0_wi7_r0_delayr14_mem_q <= u0_m0_wo0_wi7_r0_delayr14_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi7_r0_phasedelay14(DELAY,403)@10
    u0_m0_wo0_wi7_r0_phasedelay14_q <= u0_m0_wo0_wi7_r0_delayr14_mem_q;

    -- u0_m0_wo0_wi6_r0_delayr13(DELAY,373)@10
    u0_m0_wo0_wi6_r0_delayr13_q <= u0_m0_wo0_wi6_r0_phasedelay12_q;

    -- u0_m0_wo0_wi6_r0_delayr12_notEnable(LOGICAL,1072)@10
    u0_m0_wo0_wi6_r0_delayr12_notEnable_a <= xIn_v;
    u0_m0_wo0_wi6_r0_delayr12_notEnable_q <= not (u0_m0_wo0_wi6_r0_delayr12_notEnable_a);

    -- u0_m0_wo0_wi6_r0_delayr12_nor(LOGICAL,1073)@10
    u0_m0_wo0_wi6_r0_delayr12_nor_a <= u0_m0_wo0_wi6_r0_delayr12_notEnable_q;
    u0_m0_wo0_wi6_r0_delayr12_nor_b <= u0_m0_wo0_wi6_r0_delayr12_sticky_ena_q;
    u0_m0_wo0_wi6_r0_delayr12_nor_q <= not (u0_m0_wo0_wi6_r0_delayr12_nor_a or u0_m0_wo0_wi6_r0_delayr12_nor_b);

    -- u0_m0_wo0_wi6_r0_delayr12_mem_top(CONSTANT,1069)
    u0_m0_wo0_wi6_r0_delayr12_mem_top_q <= "010010";

    -- u0_m0_wo0_wi6_r0_delayr12_cmp(LOGICAL,1070)@10
    u0_m0_wo0_wi6_r0_delayr12_cmp_a <= u0_m0_wo0_wi6_r0_delayr12_mem_top_q;
    u0_m0_wo0_wi6_r0_delayr12_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi6_r0_delayr12_rdmux_q);
    u0_m0_wo0_wi6_r0_delayr12_cmp_q <= "1" WHEN u0_m0_wo0_wi6_r0_delayr12_cmp_a = u0_m0_wo0_wi6_r0_delayr12_cmp_b ELSE "0";

    -- u0_m0_wo0_wi6_r0_delayr12_cmpReg(REG,1071)@10
    u0_m0_wo0_wi6_r0_delayr12_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi6_r0_delayr12_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi6_r0_delayr12_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi6_r0_delayr12_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi6_r0_delayr12_sticky_ena(REG,1074)@10
    u0_m0_wo0_wi6_r0_delayr12_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi6_r0_delayr12_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi6_r0_delayr12_nor_q = "1") THEN
                u0_m0_wo0_wi6_r0_delayr12_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi6_r0_delayr12_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi6_r0_delayr12_enaAnd(LOGICAL,1075)@10
    u0_m0_wo0_wi6_r0_delayr12_enaAnd_a <= u0_m0_wo0_wi6_r0_delayr12_sticky_ena_q;
    u0_m0_wo0_wi6_r0_delayr12_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi6_r0_delayr12_enaAnd_q <= u0_m0_wo0_wi6_r0_delayr12_enaAnd_a and u0_m0_wo0_wi6_r0_delayr12_enaAnd_b;

    -- u0_m0_wo0_wi6_r0_delayr12_rdcnt(COUNTER,1066)@10
    -- every=1, low=0, high=18, step=1, init=1
    u0_m0_wo0_wi6_r0_delayr12_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi6_r0_delayr12_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi6_r0_delayr12_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi6_r0_delayr12_rdcnt_i = TO_UNSIGNED(17, 5)) THEN
                    u0_m0_wo0_wi6_r0_delayr12_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi6_r0_delayr12_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi6_r0_delayr12_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi6_r0_delayr12_rdcnt_i <= u0_m0_wo0_wi6_r0_delayr12_rdcnt_i - 18;
                ELSE
                    u0_m0_wo0_wi6_r0_delayr12_rdcnt_i <= u0_m0_wo0_wi6_r0_delayr12_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi6_r0_delayr12_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi6_r0_delayr12_rdcnt_i, 5)));

    -- u0_m0_wo0_wi6_r0_delayr12_rdmux(MUX,1067)@10
    u0_m0_wo0_wi6_r0_delayr12_rdmux_s <= xIn_v;
    u0_m0_wo0_wi6_r0_delayr12_rdmux: PROCESS (u0_m0_wo0_wi6_r0_delayr12_rdmux_s, u0_m0_wo0_wi6_r0_delayr12_wraddr_q, u0_m0_wo0_wi6_r0_delayr12_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi6_r0_delayr12_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi6_r0_delayr12_rdmux_q <= u0_m0_wo0_wi6_r0_delayr12_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi6_r0_delayr12_rdmux_q <= u0_m0_wo0_wi6_r0_delayr12_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi6_r0_delayr12_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi6_r0_delayr12_wraddr(REG,1068)@10
    u0_m0_wo0_wi6_r0_delayr12_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi6_r0_delayr12_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi6_r0_delayr12_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi6_r0_delayr12_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi6_r0_delayr12_mem(DUALMEM,1065)@10
    u0_m0_wo0_wi6_r0_delayr12_mem_ia <= STD_LOGIC_VECTOR(xIn_6);
    u0_m0_wo0_wi6_r0_delayr12_mem_aa <= u0_m0_wo0_wi6_r0_delayr12_wraddr_q;
    u0_m0_wo0_wi6_r0_delayr12_mem_ab <= u0_m0_wo0_wi6_r0_delayr12_rdmux_q;
    u0_m0_wo0_wi6_r0_delayr12_mem_reset0 <= areset;
    u0_m0_wo0_wi6_r0_delayr12_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 5,
        numwords_a => 19,
        width_b => 10,
        widthad_b => 5,
        numwords_b => 19,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi6_r0_delayr12_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi6_r0_delayr12_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi6_r0_delayr12_mem_aa,
        data_a => u0_m0_wo0_wi6_r0_delayr12_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi6_r0_delayr12_mem_ab,
        q_b => u0_m0_wo0_wi6_r0_delayr12_mem_iq
    );
    u0_m0_wo0_wi6_r0_delayr12_mem_q <= u0_m0_wo0_wi6_r0_delayr12_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi6_r0_phasedelay12(DELAY,361)@10
    u0_m0_wo0_wi6_r0_phasedelay12_q <= u0_m0_wo0_wi6_r0_delayr12_mem_q;

    -- u0_m0_wo0_wi5_r0_delayr11(DELAY,329)@10
    u0_m0_wo0_wi5_r0_delayr11_q <= u0_m0_wo0_wi5_r0_phasedelay10_q;

    -- u0_m0_wo0_wi5_r0_delayr10_notEnable(LOGICAL,1061)@10
    u0_m0_wo0_wi5_r0_delayr10_notEnable_a <= xIn_v;
    u0_m0_wo0_wi5_r0_delayr10_notEnable_q <= not (u0_m0_wo0_wi5_r0_delayr10_notEnable_a);

    -- u0_m0_wo0_wi5_r0_delayr10_nor(LOGICAL,1062)@10
    u0_m0_wo0_wi5_r0_delayr10_nor_a <= u0_m0_wo0_wi5_r0_delayr10_notEnable_q;
    u0_m0_wo0_wi5_r0_delayr10_nor_b <= u0_m0_wo0_wi5_r0_delayr10_sticky_ena_q;
    u0_m0_wo0_wi5_r0_delayr10_nor_q <= not (u0_m0_wo0_wi5_r0_delayr10_nor_a or u0_m0_wo0_wi5_r0_delayr10_nor_b);

    -- u0_m0_wo0_wi5_r0_delayr10_mem_top(CONSTANT,1058)
    u0_m0_wo0_wi5_r0_delayr10_mem_top_q <= "010100";

    -- u0_m0_wo0_wi5_r0_delayr10_cmp(LOGICAL,1059)@10
    u0_m0_wo0_wi5_r0_delayr10_cmp_a <= u0_m0_wo0_wi5_r0_delayr10_mem_top_q;
    u0_m0_wo0_wi5_r0_delayr10_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi5_r0_delayr10_rdmux_q);
    u0_m0_wo0_wi5_r0_delayr10_cmp_q <= "1" WHEN u0_m0_wo0_wi5_r0_delayr10_cmp_a = u0_m0_wo0_wi5_r0_delayr10_cmp_b ELSE "0";

    -- u0_m0_wo0_wi5_r0_delayr10_cmpReg(REG,1060)@10
    u0_m0_wo0_wi5_r0_delayr10_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi5_r0_delayr10_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi5_r0_delayr10_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi5_r0_delayr10_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi5_r0_delayr10_sticky_ena(REG,1063)@10
    u0_m0_wo0_wi5_r0_delayr10_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi5_r0_delayr10_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi5_r0_delayr10_nor_q = "1") THEN
                u0_m0_wo0_wi5_r0_delayr10_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi5_r0_delayr10_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi5_r0_delayr10_enaAnd(LOGICAL,1064)@10
    u0_m0_wo0_wi5_r0_delayr10_enaAnd_a <= u0_m0_wo0_wi5_r0_delayr10_sticky_ena_q;
    u0_m0_wo0_wi5_r0_delayr10_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi5_r0_delayr10_enaAnd_q <= u0_m0_wo0_wi5_r0_delayr10_enaAnd_a and u0_m0_wo0_wi5_r0_delayr10_enaAnd_b;

    -- u0_m0_wo0_wi5_r0_delayr10_rdcnt(COUNTER,1055)@10
    -- every=1, low=0, high=20, step=1, init=1
    u0_m0_wo0_wi5_r0_delayr10_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi5_r0_delayr10_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi5_r0_delayr10_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi5_r0_delayr10_rdcnt_i = TO_UNSIGNED(19, 5)) THEN
                    u0_m0_wo0_wi5_r0_delayr10_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi5_r0_delayr10_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi5_r0_delayr10_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi5_r0_delayr10_rdcnt_i <= u0_m0_wo0_wi5_r0_delayr10_rdcnt_i - 20;
                ELSE
                    u0_m0_wo0_wi5_r0_delayr10_rdcnt_i <= u0_m0_wo0_wi5_r0_delayr10_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi5_r0_delayr10_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi5_r0_delayr10_rdcnt_i, 5)));

    -- u0_m0_wo0_wi5_r0_delayr10_rdmux(MUX,1056)@10
    u0_m0_wo0_wi5_r0_delayr10_rdmux_s <= xIn_v;
    u0_m0_wo0_wi5_r0_delayr10_rdmux: PROCESS (u0_m0_wo0_wi5_r0_delayr10_rdmux_s, u0_m0_wo0_wi5_r0_delayr10_wraddr_q, u0_m0_wo0_wi5_r0_delayr10_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi5_r0_delayr10_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi5_r0_delayr10_rdmux_q <= u0_m0_wo0_wi5_r0_delayr10_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi5_r0_delayr10_rdmux_q <= u0_m0_wo0_wi5_r0_delayr10_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi5_r0_delayr10_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi5_r0_delayr10_wraddr(REG,1057)@10
    u0_m0_wo0_wi5_r0_delayr10_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi5_r0_delayr10_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi5_r0_delayr10_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi5_r0_delayr10_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi5_r0_delayr10_mem(DUALMEM,1054)@10
    u0_m0_wo0_wi5_r0_delayr10_mem_ia <= STD_LOGIC_VECTOR(xIn_5);
    u0_m0_wo0_wi5_r0_delayr10_mem_aa <= u0_m0_wo0_wi5_r0_delayr10_wraddr_q;
    u0_m0_wo0_wi5_r0_delayr10_mem_ab <= u0_m0_wo0_wi5_r0_delayr10_rdmux_q;
    u0_m0_wo0_wi5_r0_delayr10_mem_reset0 <= areset;
    u0_m0_wo0_wi5_r0_delayr10_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 5,
        numwords_a => 21,
        width_b => 10,
        widthad_b => 5,
        numwords_b => 21,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi5_r0_delayr10_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi5_r0_delayr10_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi5_r0_delayr10_mem_aa,
        data_a => u0_m0_wo0_wi5_r0_delayr10_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi5_r0_delayr10_mem_ab,
        q_b => u0_m0_wo0_wi5_r0_delayr10_mem_iq
    );
    u0_m0_wo0_wi5_r0_delayr10_mem_q <= u0_m0_wo0_wi5_r0_delayr10_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi5_r0_phasedelay10(DELAY,319)@10
    u0_m0_wo0_wi5_r0_phasedelay10_q <= u0_m0_wo0_wi5_r0_delayr10_mem_q;

    -- u0_m0_wo0_wi4_r0_delayr9(DELAY,285)@10
    u0_m0_wo0_wi4_r0_delayr9_q <= u0_m0_wo0_wi4_r0_phasedelay8_q;

    -- u0_m0_wo0_wi4_r0_delayr8_notEnable(LOGICAL,1050)@10
    u0_m0_wo0_wi4_r0_delayr8_notEnable_a <= xIn_v;
    u0_m0_wo0_wi4_r0_delayr8_notEnable_q <= not (u0_m0_wo0_wi4_r0_delayr8_notEnable_a);

    -- u0_m0_wo0_wi4_r0_delayr8_nor(LOGICAL,1051)@10
    u0_m0_wo0_wi4_r0_delayr8_nor_a <= u0_m0_wo0_wi4_r0_delayr8_notEnable_q;
    u0_m0_wo0_wi4_r0_delayr8_nor_b <= u0_m0_wo0_wi4_r0_delayr8_sticky_ena_q;
    u0_m0_wo0_wi4_r0_delayr8_nor_q <= not (u0_m0_wo0_wi4_r0_delayr8_nor_a or u0_m0_wo0_wi4_r0_delayr8_nor_b);

    -- u0_m0_wo0_wi4_r0_delayr8_mem_top(CONSTANT,1047)
    u0_m0_wo0_wi4_r0_delayr8_mem_top_q <= "010110";

    -- u0_m0_wo0_wi4_r0_delayr8_cmp(LOGICAL,1048)@10
    u0_m0_wo0_wi4_r0_delayr8_cmp_a <= u0_m0_wo0_wi4_r0_delayr8_mem_top_q;
    u0_m0_wo0_wi4_r0_delayr8_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi4_r0_delayr8_rdmux_q);
    u0_m0_wo0_wi4_r0_delayr8_cmp_q <= "1" WHEN u0_m0_wo0_wi4_r0_delayr8_cmp_a = u0_m0_wo0_wi4_r0_delayr8_cmp_b ELSE "0";

    -- u0_m0_wo0_wi4_r0_delayr8_cmpReg(REG,1049)@10
    u0_m0_wo0_wi4_r0_delayr8_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi4_r0_delayr8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi4_r0_delayr8_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi4_r0_delayr8_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi4_r0_delayr8_sticky_ena(REG,1052)@10
    u0_m0_wo0_wi4_r0_delayr8_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi4_r0_delayr8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi4_r0_delayr8_nor_q = "1") THEN
                u0_m0_wo0_wi4_r0_delayr8_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi4_r0_delayr8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi4_r0_delayr8_enaAnd(LOGICAL,1053)@10
    u0_m0_wo0_wi4_r0_delayr8_enaAnd_a <= u0_m0_wo0_wi4_r0_delayr8_sticky_ena_q;
    u0_m0_wo0_wi4_r0_delayr8_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi4_r0_delayr8_enaAnd_q <= u0_m0_wo0_wi4_r0_delayr8_enaAnd_a and u0_m0_wo0_wi4_r0_delayr8_enaAnd_b;

    -- u0_m0_wo0_wi4_r0_delayr8_rdcnt(COUNTER,1044)@10
    -- every=1, low=0, high=22, step=1, init=1
    u0_m0_wo0_wi4_r0_delayr8_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi4_r0_delayr8_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi4_r0_delayr8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi4_r0_delayr8_rdcnt_i = TO_UNSIGNED(21, 5)) THEN
                    u0_m0_wo0_wi4_r0_delayr8_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi4_r0_delayr8_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi4_r0_delayr8_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi4_r0_delayr8_rdcnt_i <= u0_m0_wo0_wi4_r0_delayr8_rdcnt_i - 22;
                ELSE
                    u0_m0_wo0_wi4_r0_delayr8_rdcnt_i <= u0_m0_wo0_wi4_r0_delayr8_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi4_r0_delayr8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi4_r0_delayr8_rdcnt_i, 5)));

    -- u0_m0_wo0_wi4_r0_delayr8_rdmux(MUX,1045)@10
    u0_m0_wo0_wi4_r0_delayr8_rdmux_s <= xIn_v;
    u0_m0_wo0_wi4_r0_delayr8_rdmux: PROCESS (u0_m0_wo0_wi4_r0_delayr8_rdmux_s, u0_m0_wo0_wi4_r0_delayr8_wraddr_q, u0_m0_wo0_wi4_r0_delayr8_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi4_r0_delayr8_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi4_r0_delayr8_rdmux_q <= u0_m0_wo0_wi4_r0_delayr8_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi4_r0_delayr8_rdmux_q <= u0_m0_wo0_wi4_r0_delayr8_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi4_r0_delayr8_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi4_r0_delayr8_wraddr(REG,1046)@10
    u0_m0_wo0_wi4_r0_delayr8_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi4_r0_delayr8_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi4_r0_delayr8_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi4_r0_delayr8_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi4_r0_delayr8_mem(DUALMEM,1043)@10
    u0_m0_wo0_wi4_r0_delayr8_mem_ia <= STD_LOGIC_VECTOR(xIn_4);
    u0_m0_wo0_wi4_r0_delayr8_mem_aa <= u0_m0_wo0_wi4_r0_delayr8_wraddr_q;
    u0_m0_wo0_wi4_r0_delayr8_mem_ab <= u0_m0_wo0_wi4_r0_delayr8_rdmux_q;
    u0_m0_wo0_wi4_r0_delayr8_mem_reset0 <= areset;
    u0_m0_wo0_wi4_r0_delayr8_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 5,
        numwords_a => 23,
        width_b => 10,
        widthad_b => 5,
        numwords_b => 23,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi4_r0_delayr8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi4_r0_delayr8_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi4_r0_delayr8_mem_aa,
        data_a => u0_m0_wo0_wi4_r0_delayr8_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi4_r0_delayr8_mem_ab,
        q_b => u0_m0_wo0_wi4_r0_delayr8_mem_iq
    );
    u0_m0_wo0_wi4_r0_delayr8_mem_q <= u0_m0_wo0_wi4_r0_delayr8_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi4_r0_phasedelay8(DELAY,277)@10
    u0_m0_wo0_wi4_r0_phasedelay8_q <= u0_m0_wo0_wi4_r0_delayr8_mem_q;

    -- u0_m0_wo0_wi3_r0_delayr7(DELAY,241)@10
    u0_m0_wo0_wi3_r0_delayr7_q <= u0_m0_wo0_wi3_r0_phasedelay6_q;

    -- u0_m0_wo0_wi3_r0_delayr6_notEnable(LOGICAL,1039)@10
    u0_m0_wo0_wi3_r0_delayr6_notEnable_a <= xIn_v;
    u0_m0_wo0_wi3_r0_delayr6_notEnable_q <= not (u0_m0_wo0_wi3_r0_delayr6_notEnable_a);

    -- u0_m0_wo0_wi3_r0_delayr6_nor(LOGICAL,1040)@10
    u0_m0_wo0_wi3_r0_delayr6_nor_a <= u0_m0_wo0_wi3_r0_delayr6_notEnable_q;
    u0_m0_wo0_wi3_r0_delayr6_nor_b <= u0_m0_wo0_wi3_r0_delayr6_sticky_ena_q;
    u0_m0_wo0_wi3_r0_delayr6_nor_q <= not (u0_m0_wo0_wi3_r0_delayr6_nor_a or u0_m0_wo0_wi3_r0_delayr6_nor_b);

    -- u0_m0_wo0_wi3_r0_delayr6_mem_top(CONSTANT,1036)
    u0_m0_wo0_wi3_r0_delayr6_mem_top_q <= "011000";

    -- u0_m0_wo0_wi3_r0_delayr6_cmp(LOGICAL,1037)@10
    u0_m0_wo0_wi3_r0_delayr6_cmp_a <= u0_m0_wo0_wi3_r0_delayr6_mem_top_q;
    u0_m0_wo0_wi3_r0_delayr6_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi3_r0_delayr6_rdmux_q);
    u0_m0_wo0_wi3_r0_delayr6_cmp_q <= "1" WHEN u0_m0_wo0_wi3_r0_delayr6_cmp_a = u0_m0_wo0_wi3_r0_delayr6_cmp_b ELSE "0";

    -- u0_m0_wo0_wi3_r0_delayr6_cmpReg(REG,1038)@10
    u0_m0_wo0_wi3_r0_delayr6_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi3_r0_delayr6_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi3_r0_delayr6_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi3_r0_delayr6_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi3_r0_delayr6_sticky_ena(REG,1041)@10
    u0_m0_wo0_wi3_r0_delayr6_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi3_r0_delayr6_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi3_r0_delayr6_nor_q = "1") THEN
                u0_m0_wo0_wi3_r0_delayr6_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi3_r0_delayr6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi3_r0_delayr6_enaAnd(LOGICAL,1042)@10
    u0_m0_wo0_wi3_r0_delayr6_enaAnd_a <= u0_m0_wo0_wi3_r0_delayr6_sticky_ena_q;
    u0_m0_wo0_wi3_r0_delayr6_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi3_r0_delayr6_enaAnd_q <= u0_m0_wo0_wi3_r0_delayr6_enaAnd_a and u0_m0_wo0_wi3_r0_delayr6_enaAnd_b;

    -- u0_m0_wo0_wi3_r0_delayr6_rdcnt(COUNTER,1033)@10
    -- every=1, low=0, high=24, step=1, init=1
    u0_m0_wo0_wi3_r0_delayr6_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi3_r0_delayr6_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi3_r0_delayr6_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi3_r0_delayr6_rdcnt_i = TO_UNSIGNED(23, 5)) THEN
                    u0_m0_wo0_wi3_r0_delayr6_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi3_r0_delayr6_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi3_r0_delayr6_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi3_r0_delayr6_rdcnt_i <= u0_m0_wo0_wi3_r0_delayr6_rdcnt_i - 24;
                ELSE
                    u0_m0_wo0_wi3_r0_delayr6_rdcnt_i <= u0_m0_wo0_wi3_r0_delayr6_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi3_r0_delayr6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi3_r0_delayr6_rdcnt_i, 5)));

    -- u0_m0_wo0_wi3_r0_delayr6_rdmux(MUX,1034)@10
    u0_m0_wo0_wi3_r0_delayr6_rdmux_s <= xIn_v;
    u0_m0_wo0_wi3_r0_delayr6_rdmux: PROCESS (u0_m0_wo0_wi3_r0_delayr6_rdmux_s, u0_m0_wo0_wi3_r0_delayr6_wraddr_q, u0_m0_wo0_wi3_r0_delayr6_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi3_r0_delayr6_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi3_r0_delayr6_rdmux_q <= u0_m0_wo0_wi3_r0_delayr6_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi3_r0_delayr6_rdmux_q <= u0_m0_wo0_wi3_r0_delayr6_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi3_r0_delayr6_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi3_r0_delayr6_wraddr(REG,1035)@10
    u0_m0_wo0_wi3_r0_delayr6_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi3_r0_delayr6_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi3_r0_delayr6_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi3_r0_delayr6_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi3_r0_delayr6_mem(DUALMEM,1032)@10
    u0_m0_wo0_wi3_r0_delayr6_mem_ia <= STD_LOGIC_VECTOR(xIn_3);
    u0_m0_wo0_wi3_r0_delayr6_mem_aa <= u0_m0_wo0_wi3_r0_delayr6_wraddr_q;
    u0_m0_wo0_wi3_r0_delayr6_mem_ab <= u0_m0_wo0_wi3_r0_delayr6_rdmux_q;
    u0_m0_wo0_wi3_r0_delayr6_mem_reset0 <= areset;
    u0_m0_wo0_wi3_r0_delayr6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 5,
        numwords_a => 25,
        width_b => 10,
        widthad_b => 5,
        numwords_b => 25,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi3_r0_delayr6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi3_r0_delayr6_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi3_r0_delayr6_mem_aa,
        data_a => u0_m0_wo0_wi3_r0_delayr6_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi3_r0_delayr6_mem_ab,
        q_b => u0_m0_wo0_wi3_r0_delayr6_mem_iq
    );
    u0_m0_wo0_wi3_r0_delayr6_mem_q <= u0_m0_wo0_wi3_r0_delayr6_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi3_r0_phasedelay6(DELAY,235)@10
    u0_m0_wo0_wi3_r0_phasedelay6_q <= u0_m0_wo0_wi3_r0_delayr6_mem_q;

    -- u0_m0_wo0_wi2_r0_delayr5(DELAY,197)@10
    u0_m0_wo0_wi2_r0_delayr5_q <= u0_m0_wo0_wi2_r0_phasedelay4_q;

    -- u0_m0_wo0_wi2_r0_delayr4_notEnable(LOGICAL,1028)@10
    u0_m0_wo0_wi2_r0_delayr4_notEnable_a <= xIn_v;
    u0_m0_wo0_wi2_r0_delayr4_notEnable_q <= not (u0_m0_wo0_wi2_r0_delayr4_notEnable_a);

    -- u0_m0_wo0_wi2_r0_delayr4_nor(LOGICAL,1029)@10
    u0_m0_wo0_wi2_r0_delayr4_nor_a <= u0_m0_wo0_wi2_r0_delayr4_notEnable_q;
    u0_m0_wo0_wi2_r0_delayr4_nor_b <= u0_m0_wo0_wi2_r0_delayr4_sticky_ena_q;
    u0_m0_wo0_wi2_r0_delayr4_nor_q <= not (u0_m0_wo0_wi2_r0_delayr4_nor_a or u0_m0_wo0_wi2_r0_delayr4_nor_b);

    -- u0_m0_wo0_wi2_r0_delayr4_mem_top(CONSTANT,1025)
    u0_m0_wo0_wi2_r0_delayr4_mem_top_q <= "011010";

    -- u0_m0_wo0_wi2_r0_delayr4_cmp(LOGICAL,1026)@10
    u0_m0_wo0_wi2_r0_delayr4_cmp_a <= u0_m0_wo0_wi2_r0_delayr4_mem_top_q;
    u0_m0_wo0_wi2_r0_delayr4_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi2_r0_delayr4_rdmux_q);
    u0_m0_wo0_wi2_r0_delayr4_cmp_q <= "1" WHEN u0_m0_wo0_wi2_r0_delayr4_cmp_a = u0_m0_wo0_wi2_r0_delayr4_cmp_b ELSE "0";

    -- u0_m0_wo0_wi2_r0_delayr4_cmpReg(REG,1027)@10
    u0_m0_wo0_wi2_r0_delayr4_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi2_r0_delayr4_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi2_r0_delayr4_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi2_r0_delayr4_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi2_r0_delayr4_sticky_ena(REG,1030)@10
    u0_m0_wo0_wi2_r0_delayr4_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi2_r0_delayr4_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi2_r0_delayr4_nor_q = "1") THEN
                u0_m0_wo0_wi2_r0_delayr4_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi2_r0_delayr4_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi2_r0_delayr4_enaAnd(LOGICAL,1031)@10
    u0_m0_wo0_wi2_r0_delayr4_enaAnd_a <= u0_m0_wo0_wi2_r0_delayr4_sticky_ena_q;
    u0_m0_wo0_wi2_r0_delayr4_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi2_r0_delayr4_enaAnd_q <= u0_m0_wo0_wi2_r0_delayr4_enaAnd_a and u0_m0_wo0_wi2_r0_delayr4_enaAnd_b;

    -- u0_m0_wo0_wi2_r0_delayr4_rdcnt(COUNTER,1022)@10
    -- every=1, low=0, high=26, step=1, init=1
    u0_m0_wo0_wi2_r0_delayr4_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi2_r0_delayr4_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi2_r0_delayr4_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi2_r0_delayr4_rdcnt_i = TO_UNSIGNED(25, 5)) THEN
                    u0_m0_wo0_wi2_r0_delayr4_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi2_r0_delayr4_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi2_r0_delayr4_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi2_r0_delayr4_rdcnt_i <= u0_m0_wo0_wi2_r0_delayr4_rdcnt_i - 26;
                ELSE
                    u0_m0_wo0_wi2_r0_delayr4_rdcnt_i <= u0_m0_wo0_wi2_r0_delayr4_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi2_r0_delayr4_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi2_r0_delayr4_rdcnt_i, 5)));

    -- u0_m0_wo0_wi2_r0_delayr4_rdmux(MUX,1023)@10
    u0_m0_wo0_wi2_r0_delayr4_rdmux_s <= xIn_v;
    u0_m0_wo0_wi2_r0_delayr4_rdmux: PROCESS (u0_m0_wo0_wi2_r0_delayr4_rdmux_s, u0_m0_wo0_wi2_r0_delayr4_wraddr_q, u0_m0_wo0_wi2_r0_delayr4_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi2_r0_delayr4_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi2_r0_delayr4_rdmux_q <= u0_m0_wo0_wi2_r0_delayr4_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi2_r0_delayr4_rdmux_q <= u0_m0_wo0_wi2_r0_delayr4_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi2_r0_delayr4_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi2_r0_delayr4_wraddr(REG,1024)@10
    u0_m0_wo0_wi2_r0_delayr4_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi2_r0_delayr4_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi2_r0_delayr4_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi2_r0_delayr4_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi2_r0_delayr4_mem(DUALMEM,1021)@10
    u0_m0_wo0_wi2_r0_delayr4_mem_ia <= STD_LOGIC_VECTOR(xIn_2);
    u0_m0_wo0_wi2_r0_delayr4_mem_aa <= u0_m0_wo0_wi2_r0_delayr4_wraddr_q;
    u0_m0_wo0_wi2_r0_delayr4_mem_ab <= u0_m0_wo0_wi2_r0_delayr4_rdmux_q;
    u0_m0_wo0_wi2_r0_delayr4_mem_reset0 <= areset;
    u0_m0_wo0_wi2_r0_delayr4_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 5,
        numwords_a => 27,
        width_b => 10,
        widthad_b => 5,
        numwords_b => 27,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi2_r0_delayr4_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi2_r0_delayr4_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi2_r0_delayr4_mem_aa,
        data_a => u0_m0_wo0_wi2_r0_delayr4_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi2_r0_delayr4_mem_ab,
        q_b => u0_m0_wo0_wi2_r0_delayr4_mem_iq
    );
    u0_m0_wo0_wi2_r0_delayr4_mem_q <= u0_m0_wo0_wi2_r0_delayr4_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi2_r0_phasedelay4(DELAY,193)@10
    u0_m0_wo0_wi2_r0_phasedelay4_q <= u0_m0_wo0_wi2_r0_delayr4_mem_q;

    -- u0_m0_wo0_wi1_r0_delayr3(DELAY,153)@10
    u0_m0_wo0_wi1_r0_delayr3_q <= u0_m0_wo0_wi1_r0_phasedelay2_q;

    -- u0_m0_wo0_wi1_r0_delayr2_notEnable(LOGICAL,1017)@10
    u0_m0_wo0_wi1_r0_delayr2_notEnable_a <= xIn_v;
    u0_m0_wo0_wi1_r0_delayr2_notEnable_q <= not (u0_m0_wo0_wi1_r0_delayr2_notEnable_a);

    -- u0_m0_wo0_wi1_r0_delayr2_nor(LOGICAL,1018)@10
    u0_m0_wo0_wi1_r0_delayr2_nor_a <= u0_m0_wo0_wi1_r0_delayr2_notEnable_q;
    u0_m0_wo0_wi1_r0_delayr2_nor_b <= u0_m0_wo0_wi1_r0_delayr2_sticky_ena_q;
    u0_m0_wo0_wi1_r0_delayr2_nor_q <= not (u0_m0_wo0_wi1_r0_delayr2_nor_a or u0_m0_wo0_wi1_r0_delayr2_nor_b);

    -- u0_m0_wo0_wi1_r0_delayr2_mem_top(CONSTANT,1014)
    u0_m0_wo0_wi1_r0_delayr2_mem_top_q <= "011100";

    -- u0_m0_wo0_wi1_r0_delayr2_cmp(LOGICAL,1015)@10
    u0_m0_wo0_wi1_r0_delayr2_cmp_a <= u0_m0_wo0_wi1_r0_delayr2_mem_top_q;
    u0_m0_wo0_wi1_r0_delayr2_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi1_r0_delayr2_rdmux_q);
    u0_m0_wo0_wi1_r0_delayr2_cmp_q <= "1" WHEN u0_m0_wo0_wi1_r0_delayr2_cmp_a = u0_m0_wo0_wi1_r0_delayr2_cmp_b ELSE "0";

    -- u0_m0_wo0_wi1_r0_delayr2_cmpReg(REG,1016)@10
    u0_m0_wo0_wi1_r0_delayr2_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi1_r0_delayr2_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi1_r0_delayr2_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi1_r0_delayr2_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi1_r0_delayr2_sticky_ena(REG,1019)@10
    u0_m0_wo0_wi1_r0_delayr2_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi1_r0_delayr2_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi1_r0_delayr2_nor_q = "1") THEN
                u0_m0_wo0_wi1_r0_delayr2_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi1_r0_delayr2_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi1_r0_delayr2_enaAnd(LOGICAL,1020)@10
    u0_m0_wo0_wi1_r0_delayr2_enaAnd_a <= u0_m0_wo0_wi1_r0_delayr2_sticky_ena_q;
    u0_m0_wo0_wi1_r0_delayr2_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi1_r0_delayr2_enaAnd_q <= u0_m0_wo0_wi1_r0_delayr2_enaAnd_a and u0_m0_wo0_wi1_r0_delayr2_enaAnd_b;

    -- u0_m0_wo0_wi1_r0_delayr2_rdcnt(COUNTER,1011)@10
    -- every=1, low=0, high=28, step=1, init=1
    u0_m0_wo0_wi1_r0_delayr2_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi1_r0_delayr2_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi1_r0_delayr2_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi1_r0_delayr2_rdcnt_i = TO_UNSIGNED(27, 5)) THEN
                    u0_m0_wo0_wi1_r0_delayr2_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi1_r0_delayr2_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi1_r0_delayr2_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi1_r0_delayr2_rdcnt_i <= u0_m0_wo0_wi1_r0_delayr2_rdcnt_i - 28;
                ELSE
                    u0_m0_wo0_wi1_r0_delayr2_rdcnt_i <= u0_m0_wo0_wi1_r0_delayr2_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi1_r0_delayr2_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi1_r0_delayr2_rdcnt_i, 5)));

    -- u0_m0_wo0_wi1_r0_delayr2_rdmux(MUX,1012)@10
    u0_m0_wo0_wi1_r0_delayr2_rdmux_s <= xIn_v;
    u0_m0_wo0_wi1_r0_delayr2_rdmux: PROCESS (u0_m0_wo0_wi1_r0_delayr2_rdmux_s, u0_m0_wo0_wi1_r0_delayr2_wraddr_q, u0_m0_wo0_wi1_r0_delayr2_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi1_r0_delayr2_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi1_r0_delayr2_rdmux_q <= u0_m0_wo0_wi1_r0_delayr2_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi1_r0_delayr2_rdmux_q <= u0_m0_wo0_wi1_r0_delayr2_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi1_r0_delayr2_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi1_r0_delayr2_wraddr(REG,1013)@10
    u0_m0_wo0_wi1_r0_delayr2_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi1_r0_delayr2_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi1_r0_delayr2_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi1_r0_delayr2_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi1_r0_delayr2_mem(DUALMEM,1010)@10
    u0_m0_wo0_wi1_r0_delayr2_mem_ia <= STD_LOGIC_VECTOR(xIn_1);
    u0_m0_wo0_wi1_r0_delayr2_mem_aa <= u0_m0_wo0_wi1_r0_delayr2_wraddr_q;
    u0_m0_wo0_wi1_r0_delayr2_mem_ab <= u0_m0_wo0_wi1_r0_delayr2_rdmux_q;
    u0_m0_wo0_wi1_r0_delayr2_mem_reset0 <= areset;
    u0_m0_wo0_wi1_r0_delayr2_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 5,
        numwords_a => 29,
        width_b => 10,
        widthad_b => 5,
        numwords_b => 29,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi1_r0_delayr2_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi1_r0_delayr2_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi1_r0_delayr2_mem_aa,
        data_a => u0_m0_wo0_wi1_r0_delayr2_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi1_r0_delayr2_mem_ab,
        q_b => u0_m0_wo0_wi1_r0_delayr2_mem_iq
    );
    u0_m0_wo0_wi1_r0_delayr2_mem_q <= u0_m0_wo0_wi1_r0_delayr2_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi1_r0_phasedelay2(DELAY,151)@10
    u0_m0_wo0_wi1_r0_phasedelay2_q <= u0_m0_wo0_wi1_r0_delayr2_mem_q;

    -- u0_m0_wo0_wi0_r0_delayr1(DELAY,109)@10
    u0_m0_wo0_wi0_r0_delayr1_q <= u0_m0_wo0_wi0_r0_phasedelay0_q;

    -- u0_m0_wo0_wi0_r0_delayr0_notEnable(LOGICAL,1006)@10
    u0_m0_wo0_wi0_r0_delayr0_notEnable_a <= xIn_v;
    u0_m0_wo0_wi0_r0_delayr0_notEnable_q <= not (u0_m0_wo0_wi0_r0_delayr0_notEnable_a);

    -- u0_m0_wo0_wi0_r0_delayr0_nor(LOGICAL,1007)@10
    u0_m0_wo0_wi0_r0_delayr0_nor_a <= u0_m0_wo0_wi0_r0_delayr0_notEnable_q;
    u0_m0_wo0_wi0_r0_delayr0_nor_b <= u0_m0_wo0_wi0_r0_delayr0_sticky_ena_q;
    u0_m0_wo0_wi0_r0_delayr0_nor_q <= not (u0_m0_wo0_wi0_r0_delayr0_nor_a or u0_m0_wo0_wi0_r0_delayr0_nor_b);

    -- u0_m0_wo0_wi0_r0_delayr0_mem_top(CONSTANT,1003)
    u0_m0_wo0_wi0_r0_delayr0_mem_top_q <= "011101";

    -- u0_m0_wo0_wi0_r0_delayr0_cmp(LOGICAL,1004)@10
    u0_m0_wo0_wi0_r0_delayr0_cmp_a <= u0_m0_wo0_wi0_r0_delayr0_mem_top_q;
    u0_m0_wo0_wi0_r0_delayr0_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_delayr0_rdmux_q);
    u0_m0_wo0_wi0_r0_delayr0_cmp_q <= "1" WHEN u0_m0_wo0_wi0_r0_delayr0_cmp_a = u0_m0_wo0_wi0_r0_delayr0_cmp_b ELSE "0";

    -- u0_m0_wo0_wi0_r0_delayr0_cmpReg(REG,1005)@10
    u0_m0_wo0_wi0_r0_delayr0_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr0_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi0_r0_delayr0_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr0_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr0_sticky_ena(REG,1008)@10
    u0_m0_wo0_wi0_r0_delayr0_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr0_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi0_r0_delayr0_nor_q = "1") THEN
                u0_m0_wo0_wi0_r0_delayr0_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr0_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr0_enaAnd(LOGICAL,1009)@10
    u0_m0_wo0_wi0_r0_delayr0_enaAnd_a <= u0_m0_wo0_wi0_r0_delayr0_sticky_ena_q;
    u0_m0_wo0_wi0_r0_delayr0_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi0_r0_delayr0_enaAnd_q <= u0_m0_wo0_wi0_r0_delayr0_enaAnd_a and u0_m0_wo0_wi0_r0_delayr0_enaAnd_b;

    -- u0_m0_wo0_wi0_r0_delayr0_rdcnt(COUNTER,1000)@10
    -- every=1, low=0, high=29, step=1, init=1
    u0_m0_wo0_wi0_r0_delayr0_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr0_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi0_r0_delayr0_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi0_r0_delayr0_rdcnt_i = TO_UNSIGNED(28, 5)) THEN
                    u0_m0_wo0_wi0_r0_delayr0_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_delayr0_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_delayr0_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_delayr0_rdcnt_i <= u0_m0_wo0_wi0_r0_delayr0_rdcnt_i - 29;
                ELSE
                    u0_m0_wo0_wi0_r0_delayr0_rdcnt_i <= u0_m0_wo0_wi0_r0_delayr0_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_delayr0_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_delayr0_rdcnt_i, 5)));

    -- u0_m0_wo0_wi0_r0_delayr0_rdmux(MUX,1001)@10
    u0_m0_wo0_wi0_r0_delayr0_rdmux_s <= xIn_v;
    u0_m0_wo0_wi0_r0_delayr0_rdmux: PROCESS (u0_m0_wo0_wi0_r0_delayr0_rdmux_s, u0_m0_wo0_wi0_r0_delayr0_wraddr_q, u0_m0_wo0_wi0_r0_delayr0_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi0_r0_delayr0_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi0_r0_delayr0_rdmux_q <= u0_m0_wo0_wi0_r0_delayr0_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi0_r0_delayr0_rdmux_q <= u0_m0_wo0_wi0_r0_delayr0_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi0_r0_delayr0_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr0_wraddr(REG,1002)@10
    u0_m0_wo0_wi0_r0_delayr0_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr0_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_delayr0_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr0_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr0_mem(DUALMEM,999)@10
    u0_m0_wo0_wi0_r0_delayr0_mem_ia <= STD_LOGIC_VECTOR(xIn_0);
    u0_m0_wo0_wi0_r0_delayr0_mem_aa <= u0_m0_wo0_wi0_r0_delayr0_wraddr_q;
    u0_m0_wo0_wi0_r0_delayr0_mem_ab <= u0_m0_wo0_wi0_r0_delayr0_rdmux_q;
    u0_m0_wo0_wi0_r0_delayr0_mem_reset0 <= areset;
    u0_m0_wo0_wi0_r0_delayr0_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 10,
        widthad_a => 5,
        numwords_a => 30,
        width_b => 10,
        widthad_b => 5,
        numwords_b => 30,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi0_r0_delayr0_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi0_r0_delayr0_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi0_r0_delayr0_mem_aa,
        data_a => u0_m0_wo0_wi0_r0_delayr0_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi0_r0_delayr0_mem_ab,
        q_b => u0_m0_wo0_wi0_r0_delayr0_mem_iq
    );
    u0_m0_wo0_wi0_r0_delayr0_mem_q <= u0_m0_wo0_wi0_r0_delayr0_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi0_r0_phasedelay0(DELAY,108)@10
    u0_m0_wo0_wi0_r0_phasedelay0_q <= u0_m0_wo0_wi0_r0_delayr0_mem_q;

    -- u0_m0_wo0_cma0(CHAINMULTADD,986)@10
    -- altera synthesis_off
    u0_m0_wo0_cma0_k0 <= (
        0 => TO_SIGNED(9,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k1 <= (
        0 => TO_SIGNED(127,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k2 <= (
        0 => TO_SIGNED(127,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k3 <= (
        0 => TO_SIGNED(9,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k4 <= (
        0 => TO_SIGNED(125,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k5 <= (
        0 => TO_SIGNED(10,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k6 <= (
        0 => TO_SIGNED(122,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k7 <= (
        0 => TO_SIGNED(12,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k8 <= (
        0 => TO_SIGNED(117,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k9 <= (
        0 => TO_SIGNED(16,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k10 <= (
        0 => TO_SIGNED(112,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k11 <= (
        0 => TO_SIGNED(21,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k12 <= (
        0 => TO_SIGNED(105,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k13 <= (
        0 => TO_SIGNED(27,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k14 <= (
        0 => TO_SIGNED(97,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k15 <= (
        0 => TO_SIGNED(34,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k16 <= (
        0 => TO_SIGNED(88,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k17 <= (
        0 => TO_SIGNED(42,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k18 <= (
        0 => TO_SIGNED(79,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k19 <= (
        0 => TO_SIGNED(51,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k20 <= (
        0 => TO_SIGNED(69,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k21 <= (
        0 => TO_SIGNED(60,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k22 <= (
        0 => TO_SIGNED(60,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k23 <= (
        0 => TO_SIGNED(69,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k24 <= (
        0 => TO_SIGNED(51,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k25 <= (
        0 => TO_SIGNED(79,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k26 <= (
        0 => TO_SIGNED(42,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k27 <= (
        0 => TO_SIGNED(88,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k28 <= (
        0 => TO_SIGNED(34,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k29 <= (
        0 => TO_SIGNED(97,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k30 <= (
        0 => TO_SIGNED(27,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k31 <= (
        0 => TO_SIGNED(105,11),
        others => (others => '0'));
    -- altera synthesis_on
    u0_m0_wo0_cma0_r(0) <= u0_m0_wo0_cma0_k0(TO_INTEGER(u0_m0_wo0_cma0_c0(0)));
    u0_m0_wo0_cma0_r(1) <= u0_m0_wo0_cma0_k1(TO_INTEGER(u0_m0_wo0_cma0_c0(1)));
    u0_m0_wo0_cma0_r(2) <= u0_m0_wo0_cma0_k2(TO_INTEGER(u0_m0_wo0_cma0_c0(2)));
    u0_m0_wo0_cma0_r(3) <= u0_m0_wo0_cma0_k3(TO_INTEGER(u0_m0_wo0_cma0_c0(3)));
    u0_m0_wo0_cma0_r(4) <= u0_m0_wo0_cma0_k4(TO_INTEGER(u0_m0_wo0_cma0_c0(4)));
    u0_m0_wo0_cma0_r(5) <= u0_m0_wo0_cma0_k5(TO_INTEGER(u0_m0_wo0_cma0_c0(5)));
    u0_m0_wo0_cma0_r(6) <= u0_m0_wo0_cma0_k6(TO_INTEGER(u0_m0_wo0_cma0_c0(6)));
    u0_m0_wo0_cma0_r(7) <= u0_m0_wo0_cma0_k7(TO_INTEGER(u0_m0_wo0_cma0_c0(7)));
    u0_m0_wo0_cma0_r(8) <= u0_m0_wo0_cma0_k8(TO_INTEGER(u0_m0_wo0_cma0_c0(8)));
    u0_m0_wo0_cma0_r(9) <= u0_m0_wo0_cma0_k9(TO_INTEGER(u0_m0_wo0_cma0_c0(9)));
    u0_m0_wo0_cma0_r(10) <= u0_m0_wo0_cma0_k10(TO_INTEGER(u0_m0_wo0_cma0_c0(10)));
    u0_m0_wo0_cma0_r(11) <= u0_m0_wo0_cma0_k11(TO_INTEGER(u0_m0_wo0_cma0_c0(11)));
    u0_m0_wo0_cma0_r(12) <= u0_m0_wo0_cma0_k12(TO_INTEGER(u0_m0_wo0_cma0_c0(12)));
    u0_m0_wo0_cma0_r(13) <= u0_m0_wo0_cma0_k13(TO_INTEGER(u0_m0_wo0_cma0_c0(13)));
    u0_m0_wo0_cma0_r(14) <= u0_m0_wo0_cma0_k14(TO_INTEGER(u0_m0_wo0_cma0_c0(14)));
    u0_m0_wo0_cma0_r(15) <= u0_m0_wo0_cma0_k15(TO_INTEGER(u0_m0_wo0_cma0_c0(15)));
    u0_m0_wo0_cma0_r(16) <= u0_m0_wo0_cma0_k16(TO_INTEGER(u0_m0_wo0_cma0_c0(16)));
    u0_m0_wo0_cma0_r(17) <= u0_m0_wo0_cma0_k17(TO_INTEGER(u0_m0_wo0_cma0_c0(17)));
    u0_m0_wo0_cma0_r(18) <= u0_m0_wo0_cma0_k18(TO_INTEGER(u0_m0_wo0_cma0_c0(18)));
    u0_m0_wo0_cma0_r(19) <= u0_m0_wo0_cma0_k19(TO_INTEGER(u0_m0_wo0_cma0_c0(19)));
    u0_m0_wo0_cma0_r(20) <= u0_m0_wo0_cma0_k20(TO_INTEGER(u0_m0_wo0_cma0_c0(20)));
    u0_m0_wo0_cma0_r(21) <= u0_m0_wo0_cma0_k21(TO_INTEGER(u0_m0_wo0_cma0_c0(21)));
    u0_m0_wo0_cma0_r(22) <= u0_m0_wo0_cma0_k22(TO_INTEGER(u0_m0_wo0_cma0_c0(22)));
    u0_m0_wo0_cma0_r(23) <= u0_m0_wo0_cma0_k23(TO_INTEGER(u0_m0_wo0_cma0_c0(23)));
    u0_m0_wo0_cma0_r(24) <= u0_m0_wo0_cma0_k24(TO_INTEGER(u0_m0_wo0_cma0_c0(24)));
    u0_m0_wo0_cma0_r(25) <= u0_m0_wo0_cma0_k25(TO_INTEGER(u0_m0_wo0_cma0_c0(25)));
    u0_m0_wo0_cma0_r(26) <= u0_m0_wo0_cma0_k26(TO_INTEGER(u0_m0_wo0_cma0_c0(26)));
    u0_m0_wo0_cma0_r(27) <= u0_m0_wo0_cma0_k27(TO_INTEGER(u0_m0_wo0_cma0_c0(27)));
    u0_m0_wo0_cma0_r(28) <= u0_m0_wo0_cma0_k28(TO_INTEGER(u0_m0_wo0_cma0_c0(28)));
    u0_m0_wo0_cma0_r(29) <= u0_m0_wo0_cma0_k29(TO_INTEGER(u0_m0_wo0_cma0_c0(29)));
    u0_m0_wo0_cma0_r(30) <= u0_m0_wo0_cma0_k30(TO_INTEGER(u0_m0_wo0_cma0_c0(30)));
    u0_m0_wo0_cma0_r(31) <= u0_m0_wo0_cma0_k31(TO_INTEGER(u0_m0_wo0_cma0_c0(31)));
    u0_m0_wo0_cma0_p(0) <= u0_m0_wo0_cma0_a0(0) * u0_m0_wo0_cma0_r(0);
    u0_m0_wo0_cma0_p(1) <= u0_m0_wo0_cma0_a0(1) * u0_m0_wo0_cma0_r(1);
    u0_m0_wo0_cma0_p(2) <= u0_m0_wo0_cma0_a0(2) * u0_m0_wo0_cma0_r(2);
    u0_m0_wo0_cma0_p(3) <= u0_m0_wo0_cma0_a0(3) * u0_m0_wo0_cma0_r(3);
    u0_m0_wo0_cma0_p(4) <= u0_m0_wo0_cma0_a0(4) * u0_m0_wo0_cma0_r(4);
    u0_m0_wo0_cma0_p(5) <= u0_m0_wo0_cma0_a0(5) * u0_m0_wo0_cma0_r(5);
    u0_m0_wo0_cma0_p(6) <= u0_m0_wo0_cma0_a0(6) * u0_m0_wo0_cma0_r(6);
    u0_m0_wo0_cma0_p(7) <= u0_m0_wo0_cma0_a0(7) * u0_m0_wo0_cma0_r(7);
    u0_m0_wo0_cma0_p(8) <= u0_m0_wo0_cma0_a0(8) * u0_m0_wo0_cma0_r(8);
    u0_m0_wo0_cma0_p(9) <= u0_m0_wo0_cma0_a0(9) * u0_m0_wo0_cma0_r(9);
    u0_m0_wo0_cma0_p(10) <= u0_m0_wo0_cma0_a0(10) * u0_m0_wo0_cma0_r(10);
    u0_m0_wo0_cma0_p(11) <= u0_m0_wo0_cma0_a0(11) * u0_m0_wo0_cma0_r(11);
    u0_m0_wo0_cma0_p(12) <= u0_m0_wo0_cma0_a0(12) * u0_m0_wo0_cma0_r(12);
    u0_m0_wo0_cma0_p(13) <= u0_m0_wo0_cma0_a0(13) * u0_m0_wo0_cma0_r(13);
    u0_m0_wo0_cma0_p(14) <= u0_m0_wo0_cma0_a0(14) * u0_m0_wo0_cma0_r(14);
    u0_m0_wo0_cma0_p(15) <= u0_m0_wo0_cma0_a0(15) * u0_m0_wo0_cma0_r(15);
    u0_m0_wo0_cma0_p(16) <= u0_m0_wo0_cma0_a0(16) * u0_m0_wo0_cma0_r(16);
    u0_m0_wo0_cma0_p(17) <= u0_m0_wo0_cma0_a0(17) * u0_m0_wo0_cma0_r(17);
    u0_m0_wo0_cma0_p(18) <= u0_m0_wo0_cma0_a0(18) * u0_m0_wo0_cma0_r(18);
    u0_m0_wo0_cma0_p(19) <= u0_m0_wo0_cma0_a0(19) * u0_m0_wo0_cma0_r(19);
    u0_m0_wo0_cma0_p(20) <= u0_m0_wo0_cma0_a0(20) * u0_m0_wo0_cma0_r(20);
    u0_m0_wo0_cma0_p(21) <= u0_m0_wo0_cma0_a0(21) * u0_m0_wo0_cma0_r(21);
    u0_m0_wo0_cma0_p(22) <= u0_m0_wo0_cma0_a0(22) * u0_m0_wo0_cma0_r(22);
    u0_m0_wo0_cma0_p(23) <= u0_m0_wo0_cma0_a0(23) * u0_m0_wo0_cma0_r(23);
    u0_m0_wo0_cma0_p(24) <= u0_m0_wo0_cma0_a0(24) * u0_m0_wo0_cma0_r(24);
    u0_m0_wo0_cma0_p(25) <= u0_m0_wo0_cma0_a0(25) * u0_m0_wo0_cma0_r(25);
    u0_m0_wo0_cma0_p(26) <= u0_m0_wo0_cma0_a0(26) * u0_m0_wo0_cma0_r(26);
    u0_m0_wo0_cma0_p(27) <= u0_m0_wo0_cma0_a0(27) * u0_m0_wo0_cma0_r(27);
    u0_m0_wo0_cma0_p(28) <= u0_m0_wo0_cma0_a0(28) * u0_m0_wo0_cma0_r(28);
    u0_m0_wo0_cma0_p(29) <= u0_m0_wo0_cma0_a0(29) * u0_m0_wo0_cma0_r(29);
    u0_m0_wo0_cma0_p(30) <= u0_m0_wo0_cma0_a0(30) * u0_m0_wo0_cma0_r(30);
    u0_m0_wo0_cma0_p(31) <= u0_m0_wo0_cma0_a0(31) * u0_m0_wo0_cma0_r(31);
    u0_m0_wo0_cma0_u(0) <= RESIZE(u0_m0_wo0_cma0_p(0),26);
    u0_m0_wo0_cma0_u(1) <= RESIZE(u0_m0_wo0_cma0_p(1),26);
    u0_m0_wo0_cma0_u(2) <= RESIZE(u0_m0_wo0_cma0_p(2),26);
    u0_m0_wo0_cma0_u(3) <= RESIZE(u0_m0_wo0_cma0_p(3),26);
    u0_m0_wo0_cma0_u(4) <= RESIZE(u0_m0_wo0_cma0_p(4),26);
    u0_m0_wo0_cma0_u(5) <= RESIZE(u0_m0_wo0_cma0_p(5),26);
    u0_m0_wo0_cma0_u(6) <= RESIZE(u0_m0_wo0_cma0_p(6),26);
    u0_m0_wo0_cma0_u(7) <= RESIZE(u0_m0_wo0_cma0_p(7),26);
    u0_m0_wo0_cma0_u(8) <= RESIZE(u0_m0_wo0_cma0_p(8),26);
    u0_m0_wo0_cma0_u(9) <= RESIZE(u0_m0_wo0_cma0_p(9),26);
    u0_m0_wo0_cma0_u(10) <= RESIZE(u0_m0_wo0_cma0_p(10),26);
    u0_m0_wo0_cma0_u(11) <= RESIZE(u0_m0_wo0_cma0_p(11),26);
    u0_m0_wo0_cma0_u(12) <= RESIZE(u0_m0_wo0_cma0_p(12),26);
    u0_m0_wo0_cma0_u(13) <= RESIZE(u0_m0_wo0_cma0_p(13),26);
    u0_m0_wo0_cma0_u(14) <= RESIZE(u0_m0_wo0_cma0_p(14),26);
    u0_m0_wo0_cma0_u(15) <= RESIZE(u0_m0_wo0_cma0_p(15),26);
    u0_m0_wo0_cma0_u(16) <= RESIZE(u0_m0_wo0_cma0_p(16),26);
    u0_m0_wo0_cma0_u(17) <= RESIZE(u0_m0_wo0_cma0_p(17),26);
    u0_m0_wo0_cma0_u(18) <= RESIZE(u0_m0_wo0_cma0_p(18),26);
    u0_m0_wo0_cma0_u(19) <= RESIZE(u0_m0_wo0_cma0_p(19),26);
    u0_m0_wo0_cma0_u(20) <= RESIZE(u0_m0_wo0_cma0_p(20),26);
    u0_m0_wo0_cma0_u(21) <= RESIZE(u0_m0_wo0_cma0_p(21),26);
    u0_m0_wo0_cma0_u(22) <= RESIZE(u0_m0_wo0_cma0_p(22),26);
    u0_m0_wo0_cma0_u(23) <= RESIZE(u0_m0_wo0_cma0_p(23),26);
    u0_m0_wo0_cma0_u(24) <= RESIZE(u0_m0_wo0_cma0_p(24),26);
    u0_m0_wo0_cma0_u(25) <= RESIZE(u0_m0_wo0_cma0_p(25),26);
    u0_m0_wo0_cma0_u(26) <= RESIZE(u0_m0_wo0_cma0_p(26),26);
    u0_m0_wo0_cma0_u(27) <= RESIZE(u0_m0_wo0_cma0_p(27),26);
    u0_m0_wo0_cma0_u(28) <= RESIZE(u0_m0_wo0_cma0_p(28),26);
    u0_m0_wo0_cma0_u(29) <= RESIZE(u0_m0_wo0_cma0_p(29),26);
    u0_m0_wo0_cma0_u(30) <= RESIZE(u0_m0_wo0_cma0_p(30),26);
    u0_m0_wo0_cma0_u(31) <= RESIZE(u0_m0_wo0_cma0_p(31),26);
    u0_m0_wo0_cma0_w(0) <= u0_m0_wo0_cma0_u(0);
    u0_m0_wo0_cma0_w(1) <= u0_m0_wo0_cma0_u(1);
    u0_m0_wo0_cma0_w(2) <= u0_m0_wo0_cma0_u(2);
    u0_m0_wo0_cma0_w(3) <= u0_m0_wo0_cma0_u(3);
    u0_m0_wo0_cma0_w(4) <= u0_m0_wo0_cma0_u(4);
    u0_m0_wo0_cma0_w(5) <= u0_m0_wo0_cma0_u(5);
    u0_m0_wo0_cma0_w(6) <= u0_m0_wo0_cma0_u(6);
    u0_m0_wo0_cma0_w(7) <= u0_m0_wo0_cma0_u(7);
    u0_m0_wo0_cma0_w(8) <= u0_m0_wo0_cma0_u(8);
    u0_m0_wo0_cma0_w(9) <= u0_m0_wo0_cma0_u(9);
    u0_m0_wo0_cma0_w(10) <= u0_m0_wo0_cma0_u(10);
    u0_m0_wo0_cma0_w(11) <= u0_m0_wo0_cma0_u(11);
    u0_m0_wo0_cma0_w(12) <= u0_m0_wo0_cma0_u(12);
    u0_m0_wo0_cma0_w(13) <= u0_m0_wo0_cma0_u(13);
    u0_m0_wo0_cma0_w(14) <= u0_m0_wo0_cma0_u(14);
    u0_m0_wo0_cma0_w(15) <= u0_m0_wo0_cma0_u(15);
    u0_m0_wo0_cma0_w(16) <= u0_m0_wo0_cma0_u(16);
    u0_m0_wo0_cma0_w(17) <= u0_m0_wo0_cma0_u(17);
    u0_m0_wo0_cma0_w(18) <= u0_m0_wo0_cma0_u(18);
    u0_m0_wo0_cma0_w(19) <= u0_m0_wo0_cma0_u(19);
    u0_m0_wo0_cma0_w(20) <= u0_m0_wo0_cma0_u(20);
    u0_m0_wo0_cma0_w(21) <= u0_m0_wo0_cma0_u(21);
    u0_m0_wo0_cma0_w(22) <= u0_m0_wo0_cma0_u(22);
    u0_m0_wo0_cma0_w(23) <= u0_m0_wo0_cma0_u(23);
    u0_m0_wo0_cma0_w(24) <= u0_m0_wo0_cma0_u(24);
    u0_m0_wo0_cma0_w(25) <= u0_m0_wo0_cma0_u(25);
    u0_m0_wo0_cma0_w(26) <= u0_m0_wo0_cma0_u(26);
    u0_m0_wo0_cma0_w(27) <= u0_m0_wo0_cma0_u(27);
    u0_m0_wo0_cma0_w(28) <= u0_m0_wo0_cma0_u(28);
    u0_m0_wo0_cma0_w(29) <= u0_m0_wo0_cma0_u(29);
    u0_m0_wo0_cma0_w(30) <= u0_m0_wo0_cma0_u(30);
    u0_m0_wo0_cma0_w(31) <= u0_m0_wo0_cma0_u(31);
    u0_m0_wo0_cma0_x(0) <= u0_m0_wo0_cma0_w(0);
    u0_m0_wo0_cma0_x(1) <= u0_m0_wo0_cma0_w(1);
    u0_m0_wo0_cma0_x(2) <= u0_m0_wo0_cma0_w(2);
    u0_m0_wo0_cma0_x(3) <= u0_m0_wo0_cma0_w(3);
    u0_m0_wo0_cma0_x(4) <= u0_m0_wo0_cma0_w(4);
    u0_m0_wo0_cma0_x(5) <= u0_m0_wo0_cma0_w(5);
    u0_m0_wo0_cma0_x(6) <= u0_m0_wo0_cma0_w(6);
    u0_m0_wo0_cma0_x(7) <= u0_m0_wo0_cma0_w(7);
    u0_m0_wo0_cma0_x(8) <= u0_m0_wo0_cma0_w(8);
    u0_m0_wo0_cma0_x(9) <= u0_m0_wo0_cma0_w(9);
    u0_m0_wo0_cma0_x(10) <= u0_m0_wo0_cma0_w(10);
    u0_m0_wo0_cma0_x(11) <= u0_m0_wo0_cma0_w(11);
    u0_m0_wo0_cma0_x(12) <= u0_m0_wo0_cma0_w(12);
    u0_m0_wo0_cma0_x(13) <= u0_m0_wo0_cma0_w(13);
    u0_m0_wo0_cma0_x(14) <= u0_m0_wo0_cma0_w(14);
    u0_m0_wo0_cma0_x(15) <= u0_m0_wo0_cma0_w(15);
    u0_m0_wo0_cma0_x(16) <= u0_m0_wo0_cma0_w(16);
    u0_m0_wo0_cma0_x(17) <= u0_m0_wo0_cma0_w(17);
    u0_m0_wo0_cma0_x(18) <= u0_m0_wo0_cma0_w(18);
    u0_m0_wo0_cma0_x(19) <= u0_m0_wo0_cma0_w(19);
    u0_m0_wo0_cma0_x(20) <= u0_m0_wo0_cma0_w(20);
    u0_m0_wo0_cma0_x(21) <= u0_m0_wo0_cma0_w(21);
    u0_m0_wo0_cma0_x(22) <= u0_m0_wo0_cma0_w(22);
    u0_m0_wo0_cma0_x(23) <= u0_m0_wo0_cma0_w(23);
    u0_m0_wo0_cma0_x(24) <= u0_m0_wo0_cma0_w(24);
    u0_m0_wo0_cma0_x(25) <= u0_m0_wo0_cma0_w(25);
    u0_m0_wo0_cma0_x(26) <= u0_m0_wo0_cma0_w(26);
    u0_m0_wo0_cma0_x(27) <= u0_m0_wo0_cma0_w(27);
    u0_m0_wo0_cma0_x(28) <= u0_m0_wo0_cma0_w(28);
    u0_m0_wo0_cma0_x(29) <= u0_m0_wo0_cma0_w(29);
    u0_m0_wo0_cma0_x(30) <= u0_m0_wo0_cma0_w(30);
    u0_m0_wo0_cma0_x(31) <= u0_m0_wo0_cma0_w(31);
    u0_m0_wo0_cma0_y(0) <= u0_m0_wo0_cma0_s(1) + u0_m0_wo0_cma0_x(0);
    u0_m0_wo0_cma0_y(1) <= u0_m0_wo0_cma0_s(2) + u0_m0_wo0_cma0_x(1);
    u0_m0_wo0_cma0_y(2) <= u0_m0_wo0_cma0_s(3) + u0_m0_wo0_cma0_x(2);
    u0_m0_wo0_cma0_y(3) <= u0_m0_wo0_cma0_s(4) + u0_m0_wo0_cma0_x(3);
    u0_m0_wo0_cma0_y(4) <= u0_m0_wo0_cma0_s(5) + u0_m0_wo0_cma0_x(4);
    u0_m0_wo0_cma0_y(5) <= u0_m0_wo0_cma0_s(6) + u0_m0_wo0_cma0_x(5);
    u0_m0_wo0_cma0_y(6) <= u0_m0_wo0_cma0_s(7) + u0_m0_wo0_cma0_x(6);
    u0_m0_wo0_cma0_y(7) <= u0_m0_wo0_cma0_s(8) + u0_m0_wo0_cma0_x(7);
    u0_m0_wo0_cma0_y(8) <= u0_m0_wo0_cma0_s(9) + u0_m0_wo0_cma0_x(8);
    u0_m0_wo0_cma0_y(9) <= u0_m0_wo0_cma0_s(10) + u0_m0_wo0_cma0_x(9);
    u0_m0_wo0_cma0_y(10) <= u0_m0_wo0_cma0_s(11) + u0_m0_wo0_cma0_x(10);
    u0_m0_wo0_cma0_y(11) <= u0_m0_wo0_cma0_s(12) + u0_m0_wo0_cma0_x(11);
    u0_m0_wo0_cma0_y(12) <= u0_m0_wo0_cma0_s(13) + u0_m0_wo0_cma0_x(12);
    u0_m0_wo0_cma0_y(13) <= u0_m0_wo0_cma0_s(14) + u0_m0_wo0_cma0_x(13);
    u0_m0_wo0_cma0_y(14) <= u0_m0_wo0_cma0_s(15) + u0_m0_wo0_cma0_x(14);
    u0_m0_wo0_cma0_y(15) <= u0_m0_wo0_cma0_s(16) + u0_m0_wo0_cma0_x(15);
    u0_m0_wo0_cma0_y(16) <= u0_m0_wo0_cma0_s(17) + u0_m0_wo0_cma0_x(16);
    u0_m0_wo0_cma0_y(17) <= u0_m0_wo0_cma0_s(18) + u0_m0_wo0_cma0_x(17);
    u0_m0_wo0_cma0_y(18) <= u0_m0_wo0_cma0_s(19) + u0_m0_wo0_cma0_x(18);
    u0_m0_wo0_cma0_y(19) <= u0_m0_wo0_cma0_s(20) + u0_m0_wo0_cma0_x(19);
    u0_m0_wo0_cma0_y(20) <= u0_m0_wo0_cma0_s(21) + u0_m0_wo0_cma0_x(20);
    u0_m0_wo0_cma0_y(21) <= u0_m0_wo0_cma0_s(22) + u0_m0_wo0_cma0_x(21);
    u0_m0_wo0_cma0_y(22) <= u0_m0_wo0_cma0_s(23) + u0_m0_wo0_cma0_x(22);
    u0_m0_wo0_cma0_y(23) <= u0_m0_wo0_cma0_s(24) + u0_m0_wo0_cma0_x(23);
    u0_m0_wo0_cma0_y(24) <= u0_m0_wo0_cma0_s(25) + u0_m0_wo0_cma0_x(24);
    u0_m0_wo0_cma0_y(25) <= u0_m0_wo0_cma0_s(26) + u0_m0_wo0_cma0_x(25);
    u0_m0_wo0_cma0_y(26) <= u0_m0_wo0_cma0_s(27) + u0_m0_wo0_cma0_x(26);
    u0_m0_wo0_cma0_y(27) <= u0_m0_wo0_cma0_s(28) + u0_m0_wo0_cma0_x(27);
    u0_m0_wo0_cma0_y(28) <= u0_m0_wo0_cma0_s(29) + u0_m0_wo0_cma0_x(28);
    u0_m0_wo0_cma0_y(29) <= u0_m0_wo0_cma0_s(30) + u0_m0_wo0_cma0_x(29);
    u0_m0_wo0_cma0_y(30) <= u0_m0_wo0_cma0_s(31) + u0_m0_wo0_cma0_x(30);
    u0_m0_wo0_cma0_y(31) <= u0_m0_wo0_cma0_x(31);
    u0_m0_wo0_cma0_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma0_a0 <= (others => (others => '0'));
            u0_m0_wo0_cma0_c0 <= (others => (others => '0'));
            u0_m0_wo0_cma0_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                u0_m0_wo0_cma0_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_phasedelay0_q),10);
                u0_m0_wo0_cma0_a0(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_delayr1_q),10);
                u0_m0_wo0_cma0_a0(2) <= RESIZE(SIGNED(u0_m0_wo0_wi1_r0_phasedelay2_q),10);
                u0_m0_wo0_cma0_a0(3) <= RESIZE(SIGNED(u0_m0_wo0_wi1_r0_delayr3_q),10);
                u0_m0_wo0_cma0_a0(4) <= RESIZE(SIGNED(u0_m0_wo0_wi2_r0_phasedelay4_q),10);
                u0_m0_wo0_cma0_a0(5) <= RESIZE(SIGNED(u0_m0_wo0_wi2_r0_delayr5_q),10);
                u0_m0_wo0_cma0_a0(6) <= RESIZE(SIGNED(u0_m0_wo0_wi3_r0_phasedelay6_q),10);
                u0_m0_wo0_cma0_a0(7) <= RESIZE(SIGNED(u0_m0_wo0_wi3_r0_delayr7_q),10);
                u0_m0_wo0_cma0_a0(8) <= RESIZE(SIGNED(u0_m0_wo0_wi4_r0_phasedelay8_q),10);
                u0_m0_wo0_cma0_a0(9) <= RESIZE(SIGNED(u0_m0_wo0_wi4_r0_delayr9_q),10);
                u0_m0_wo0_cma0_a0(10) <= RESIZE(SIGNED(u0_m0_wo0_wi5_r0_phasedelay10_q),10);
                u0_m0_wo0_cma0_a0(11) <= RESIZE(SIGNED(u0_m0_wo0_wi5_r0_delayr11_q),10);
                u0_m0_wo0_cma0_a0(12) <= RESIZE(SIGNED(u0_m0_wo0_wi6_r0_phasedelay12_q),10);
                u0_m0_wo0_cma0_a0(13) <= RESIZE(SIGNED(u0_m0_wo0_wi6_r0_delayr13_q),10);
                u0_m0_wo0_cma0_a0(14) <= RESIZE(SIGNED(u0_m0_wo0_wi7_r0_phasedelay14_q),10);
                u0_m0_wo0_cma0_a0(15) <= RESIZE(SIGNED(u0_m0_wo0_wi7_r0_delayr15_q),10);
                u0_m0_wo0_cma0_a0(16) <= RESIZE(SIGNED(u0_m0_wo0_wi8_r0_phasedelay16_q),10);
                u0_m0_wo0_cma0_a0(17) <= RESIZE(SIGNED(u0_m0_wo0_wi8_r0_delayr17_q),10);
                u0_m0_wo0_cma0_a0(18) <= RESIZE(SIGNED(u0_m0_wo0_wi9_r0_phasedelay18_q),10);
                u0_m0_wo0_cma0_a0(19) <= RESIZE(SIGNED(u0_m0_wo0_wi9_r0_delayr19_q),10);
                u0_m0_wo0_cma0_a0(20) <= RESIZE(SIGNED(u0_m0_wo0_wi10_r0_phasedelay20_q),10);
                u0_m0_wo0_cma0_a0(21) <= RESIZE(SIGNED(u0_m0_wo0_wi10_r0_delayr21_q),10);
                u0_m0_wo0_cma0_a0(22) <= RESIZE(SIGNED(u0_m0_wo0_wi11_r0_phasedelay22_q),10);
                u0_m0_wo0_cma0_a0(23) <= RESIZE(SIGNED(u0_m0_wo0_wi11_r0_delayr23_q),10);
                u0_m0_wo0_cma0_a0(24) <= RESIZE(SIGNED(u0_m0_wo0_wi12_r0_phasedelay24_q),10);
                u0_m0_wo0_cma0_a0(25) <= RESIZE(SIGNED(u0_m0_wo0_wi12_r0_delayr25_q),10);
                u0_m0_wo0_cma0_a0(26) <= RESIZE(SIGNED(u0_m0_wo0_wi13_r0_phasedelay26_q),10);
                u0_m0_wo0_cma0_a0(27) <= RESIZE(SIGNED(u0_m0_wo0_wi13_r0_delayr27_q),10);
                u0_m0_wo0_cma0_a0(28) <= RESIZE(SIGNED(u0_m0_wo0_wi14_r0_phasedelay28_q),10);
                u0_m0_wo0_cma0_a0(29) <= RESIZE(SIGNED(u0_m0_wo0_wi14_r0_delayr29_q),10);
                u0_m0_wo0_cma0_a0(30) <= RESIZE(SIGNED(u0_m0_wo0_wi15_r0_phasedelay30_q),10);
                u0_m0_wo0_cma0_a0(31) <= RESIZE(SIGNED(u0_m0_wo0_wi15_r0_delayr31_q),10);
                u0_m0_wo0_cma0_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(7) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(8) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(9) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(10) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(11) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(12) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(13) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(14) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(15) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(16) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(17) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(18) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(19) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(20) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(21) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(22) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(23) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(24) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(25) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(26) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(27) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(28) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(29) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(30) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c0(31) <= RESIZE(UNSIGNED(GND_q),3);
            END IF;
            IF (d_u0_m0_wo0_compute_q_11_q = "1") THEN
                u0_m0_wo0_cma0_s(0) <= u0_m0_wo0_cma0_y(0);
                u0_m0_wo0_cma0_s(1) <= u0_m0_wo0_cma0_y(1);
                u0_m0_wo0_cma0_s(2) <= u0_m0_wo0_cma0_y(2);
                u0_m0_wo0_cma0_s(3) <= u0_m0_wo0_cma0_y(3);
                u0_m0_wo0_cma0_s(4) <= u0_m0_wo0_cma0_y(4);
                u0_m0_wo0_cma0_s(5) <= u0_m0_wo0_cma0_y(5);
                u0_m0_wo0_cma0_s(6) <= u0_m0_wo0_cma0_y(6);
                u0_m0_wo0_cma0_s(7) <= u0_m0_wo0_cma0_y(7);
                u0_m0_wo0_cma0_s(8) <= u0_m0_wo0_cma0_y(8);
                u0_m0_wo0_cma0_s(9) <= u0_m0_wo0_cma0_y(9);
                u0_m0_wo0_cma0_s(10) <= u0_m0_wo0_cma0_y(10);
                u0_m0_wo0_cma0_s(11) <= u0_m0_wo0_cma0_y(11);
                u0_m0_wo0_cma0_s(12) <= u0_m0_wo0_cma0_y(12);
                u0_m0_wo0_cma0_s(13) <= u0_m0_wo0_cma0_y(13);
                u0_m0_wo0_cma0_s(14) <= u0_m0_wo0_cma0_y(14);
                u0_m0_wo0_cma0_s(15) <= u0_m0_wo0_cma0_y(15);
                u0_m0_wo0_cma0_s(16) <= u0_m0_wo0_cma0_y(16);
                u0_m0_wo0_cma0_s(17) <= u0_m0_wo0_cma0_y(17);
                u0_m0_wo0_cma0_s(18) <= u0_m0_wo0_cma0_y(18);
                u0_m0_wo0_cma0_s(19) <= u0_m0_wo0_cma0_y(19);
                u0_m0_wo0_cma0_s(20) <= u0_m0_wo0_cma0_y(20);
                u0_m0_wo0_cma0_s(21) <= u0_m0_wo0_cma0_y(21);
                u0_m0_wo0_cma0_s(22) <= u0_m0_wo0_cma0_y(22);
                u0_m0_wo0_cma0_s(23) <= u0_m0_wo0_cma0_y(23);
                u0_m0_wo0_cma0_s(24) <= u0_m0_wo0_cma0_y(24);
                u0_m0_wo0_cma0_s(25) <= u0_m0_wo0_cma0_y(25);
                u0_m0_wo0_cma0_s(26) <= u0_m0_wo0_cma0_y(26);
                u0_m0_wo0_cma0_s(27) <= u0_m0_wo0_cma0_y(27);
                u0_m0_wo0_cma0_s(28) <= u0_m0_wo0_cma0_y(28);
                u0_m0_wo0_cma0_s(29) <= u0_m0_wo0_cma0_y(29);
                u0_m0_wo0_cma0_s(30) <= u0_m0_wo0_cma0_y(30);
                u0_m0_wo0_cma0_s(31) <= u0_m0_wo0_cma0_y(31);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma0_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma0_s(0)(25 downto 0)), xout => u0_m0_wo0_cma0_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma0_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma0_qq(25 downto 0));

    -- u0_m0_wo0_mtree_add0_0(ADD,988)@12
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR(u0_m0_wo0_cma0_q(23 downto 0));
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cma1_q);
    u0_m0_wo0_mtree_add0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(23 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- d_u0_m0_wo0_compute_q_12(DELAY,998)@11
    d_u0_m0_wo0_compute_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_11_q, xout => d_u0_m0_wo0_compute_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_sys_delay_notEnable(LOGICAL,1215)@12
    u0_m0_wo0_sys_delay_notEnable_a <= d_u0_m0_wo0_compute_q_12_q;
    u0_m0_wo0_sys_delay_notEnable_q <= not (u0_m0_wo0_sys_delay_notEnable_a);

    -- u0_m0_wo0_sys_delay_nor(LOGICAL,1216)@12
    u0_m0_wo0_sys_delay_nor_a <= u0_m0_wo0_sys_delay_notEnable_q;
    u0_m0_wo0_sys_delay_nor_b <= u0_m0_wo0_sys_delay_sticky_ena_q;
    u0_m0_wo0_sys_delay_nor_q <= not (u0_m0_wo0_sys_delay_nor_a or u0_m0_wo0_sys_delay_nor_b);

    -- u0_m0_wo0_sys_delay_mem_top(CONSTANT,1212)
    u0_m0_wo0_sys_delay_mem_top_q <= "011101";

    -- u0_m0_wo0_sys_delay_cmp(LOGICAL,1213)@12
    u0_m0_wo0_sys_delay_cmp_a <= u0_m0_wo0_sys_delay_mem_top_q;
    u0_m0_wo0_sys_delay_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_sys_delay_rdmux_q);
    u0_m0_wo0_sys_delay_cmp_q <= "1" WHEN u0_m0_wo0_sys_delay_cmp_a = u0_m0_wo0_sys_delay_cmp_b ELSE "0";

    -- u0_m0_wo0_sys_delay_cmpReg(REG,1214)@12
    u0_m0_wo0_sys_delay_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sys_delay_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_12_q = "1") THEN
                u0_m0_wo0_sys_delay_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_sys_delay_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_sys_delay_sticky_ena(REG,1217)@12
    u0_m0_wo0_sys_delay_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sys_delay_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_sys_delay_nor_q = "1") THEN
                u0_m0_wo0_sys_delay_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_sys_delay_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_sys_delay_enaAnd(LOGICAL,1218)@12
    u0_m0_wo0_sys_delay_enaAnd_a <= u0_m0_wo0_sys_delay_sticky_ena_q;
    u0_m0_wo0_sys_delay_enaAnd_b <= d_u0_m0_wo0_compute_q_12_q;
    u0_m0_wo0_sys_delay_enaAnd_q <= u0_m0_wo0_sys_delay_enaAnd_a and u0_m0_wo0_sys_delay_enaAnd_b;

    -- u0_m0_wo0_sys_delay_rdcnt(COUNTER,1209)@12
    -- every=1, low=0, high=29, step=1, init=1
    u0_m0_wo0_sys_delay_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sys_delay_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_sys_delay_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_12_q = "1") THEN
                IF (u0_m0_wo0_sys_delay_rdcnt_i = TO_UNSIGNED(28, 5)) THEN
                    u0_m0_wo0_sys_delay_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_sys_delay_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_sys_delay_rdcnt_eq = '1') THEN
                    u0_m0_wo0_sys_delay_rdcnt_i <= u0_m0_wo0_sys_delay_rdcnt_i - 29;
                ELSE
                    u0_m0_wo0_sys_delay_rdcnt_i <= u0_m0_wo0_sys_delay_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_sys_delay_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_sys_delay_rdcnt_i, 5)));

    -- u0_m0_wo0_sys_delay_rdmux(MUX,1210)@12
    u0_m0_wo0_sys_delay_rdmux_s <= d_u0_m0_wo0_compute_q_12_q;
    u0_m0_wo0_sys_delay_rdmux: PROCESS (u0_m0_wo0_sys_delay_rdmux_s, u0_m0_wo0_sys_delay_wraddr_q, u0_m0_wo0_sys_delay_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_sys_delay_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_sys_delay_rdmux_q <= u0_m0_wo0_sys_delay_wraddr_q;
            WHEN "1" => u0_m0_wo0_sys_delay_rdmux_q <= u0_m0_wo0_sys_delay_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_sys_delay_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_sys_delay_wraddr(REG,1211)@12
    u0_m0_wo0_sys_delay_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sys_delay_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sys_delay_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_sys_delay_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_sys_delay_mem(DUALMEM,1208)@12
    u0_m0_wo0_sys_delay_mem_ia <= STD_LOGIC_VECTOR(d_u0_m0_wo0_compute_q_12_q);
    u0_m0_wo0_sys_delay_mem_aa <= u0_m0_wo0_sys_delay_wraddr_q;
    u0_m0_wo0_sys_delay_mem_ab <= u0_m0_wo0_sys_delay_rdmux_q;
    u0_m0_wo0_sys_delay_mem_reset0 <= areset;
    u0_m0_wo0_sys_delay_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 1,
        widthad_a => 5,
        numwords_a => 30,
        width_b => 1,
        widthad_b => 5,
        numwords_b => 30,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_sys_delay_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_sys_delay_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_sys_delay_mem_aa,
        data_a => u0_m0_wo0_sys_delay_mem_ia,
        wren_a => d_u0_m0_wo0_compute_q_12_q(0),
        address_b => u0_m0_wo0_sys_delay_mem_ab,
        q_b => u0_m0_wo0_sys_delay_mem_iq
    );
    u0_m0_wo0_sys_delay_mem_q <= u0_m0_wo0_sys_delay_mem_iq(0 downto 0);

    -- u0_m0_wo0_sys_and(LOGICAL,990)@12
    u0_m0_wo0_sys_and_a <= u0_m0_wo0_sys_delay_mem_q;
    u0_m0_wo0_sys_and_b <= d_u0_m0_wo0_compute_q_12_q;
    u0_m0_wo0_sys_and_q <= u0_m0_wo0_sys_and_a and u0_m0_wo0_sys_and_b;

    -- u0_m0_wo0_oseq_gated_reg(REG,991)@12
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_sys_and_q);
        END IF;
    END PROCESS;

    -- out0_m0_wo0_lineup_select_delay_0(DELAY,993)@13
    out0_m0_wo0_lineup_select_delay_0_q <= u0_m0_wo0_oseq_gated_reg_q;

    -- out0_m0_wo0_assign_id41(DELAY,995)@13
    out0_m0_wo0_assign_id41_q <= out0_m0_wo0_lineup_select_delay_0_q;

    -- xOut(PORTOUT,996)@13
    xOut_v <= out0_m0_wo0_assign_id41_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add0_0_q;

END normal;
