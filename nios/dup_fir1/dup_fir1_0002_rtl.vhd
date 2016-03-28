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

-- VHDL created from dup_fir1_0002_rtl
-- VHDL created on Sun Mar 27 11:20:55 2016


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

entity dup_fir1_0002_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(29 downto 0);  -- sfix30
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(39 downto 0);  -- sfix40
        clk : in std_logic;
        areset : in std_logic
    );
end dup_fir1_0002_rtl;

architecture normal of dup_fir1_0002_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_in0_m0_wi0_wo0_assign_id1_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_count : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_run_pre_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_out : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_ctrl : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_memread_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra2_count0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra2_count0_i : UNSIGNED (0 downto 0);
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_wi0_r0_ra2_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra2_count0_sc : SIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra2_count0_sc : signal is true;
    signal u0_m0_wo0_wi0_r0_we2_seq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_we2_seq_eq : std_logic;
    signal u0_m0_wo0_wi0_r0_wa0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_i : UNSIGNED (0 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_wa2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_wa2_i : UNSIGNED (0 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa2_i : signal is true;
    signal u0_m0_wo0_wi0_r0_memr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr1_ia : STD_LOGIC_VECTOR (59 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_iq : STD_LOGIC_VECTOR (59 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_q : STD_LOGIC_VECTOR (59 downto 0);
    signal u0_m0_wo0_ca2_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_ca2_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_ca2_i : signal is true;
    signal u0_m0_wo0_ca2_eq : std_logic;
    attribute preserve of u0_m0_wo0_ca2_eq : signal is true;
    signal u0_m0_wo0_cm0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_result_add_0_0_a : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_result_add_0_0_b : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_result_add_0_0_o : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_result_add_0_0_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_a : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_b : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_o : STD_LOGIC_VECTOR (39 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_q : STD_LOGIC_VECTOR (39 downto 0);
    type u0_m0_wo0_mtree_mult1_2_im0_cma_a_type is array(0 to 0) of UNSIGNED(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_cma_a0 : u0_m0_wo0_mtree_mult1_2_im0_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_mult1_2_im0_cma_a0 : signal is true;
    type u0_m0_wo0_mtree_mult1_2_im0_cma_c_type is array(0 to 0) of SIGNED(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_cma_c0 : u0_m0_wo0_mtree_mult1_2_im0_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_mult1_2_im0_cma_c0 : signal is true;
    type u0_m0_wo0_mtree_mult1_2_im0_cma_l_type is array(0 to 0) of SIGNED(18 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_cma_l : u0_m0_wo0_mtree_mult1_2_im0_cma_l_type;
    type u0_m0_wo0_mtree_mult1_2_im0_cma_p_type is array(0 to 0) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_cma_p : u0_m0_wo0_mtree_mult1_2_im0_cma_p_type;
    type u0_m0_wo0_mtree_mult1_2_im0_cma_u_type is array(0 to 0) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_cma_u : u0_m0_wo0_mtree_mult1_2_im0_cma_u_type;
    type u0_m0_wo0_mtree_mult1_2_im0_cma_w_type is array(0 to 0) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_cma_w : u0_m0_wo0_mtree_mult1_2_im0_cma_w_type;
    type u0_m0_wo0_mtree_mult1_2_im0_cma_x_type is array(0 to 0) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_cma_x : u0_m0_wo0_mtree_mult1_2_im0_cma_x_type;
    type u0_m0_wo0_mtree_mult1_2_im0_cma_y_type is array(0 to 0) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_cma_y : u0_m0_wo0_mtree_mult1_2_im0_cma_y_type;
    type u0_m0_wo0_mtree_mult1_2_im0_cma_s_type is array(0 to 0) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_cma_s : u0_m0_wo0_mtree_mult1_2_im0_cma_s_type;
    signal u0_m0_wo0_mtree_mult1_2_im0_cma_qq : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_cma_q : STD_LOGIC_VECTOR (25 downto 0);
    type u0_m0_wo0_mtree_mult1_2_im3_cma_a_type is array(0 to 0) of SIGNED(11 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_cma_a0 : u0_m0_wo0_mtree_mult1_2_im3_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_mult1_2_im3_cma_a0 : signal is true;
    type u0_m0_wo0_mtree_mult1_2_im3_cma_c_type is array(0 to 0) of SIGNED(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_cma_c0 : u0_m0_wo0_mtree_mult1_2_im3_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_mult1_2_im3_cma_c0 : signal is true;
    type u0_m0_wo0_mtree_mult1_2_im3_cma_p_type is array(0 to 0) of SIGNED(22 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_cma_p : u0_m0_wo0_mtree_mult1_2_im3_cma_p_type;
    type u0_m0_wo0_mtree_mult1_2_im3_cma_u_type is array(0 to 0) of SIGNED(22 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_cma_u : u0_m0_wo0_mtree_mult1_2_im3_cma_u_type;
    type u0_m0_wo0_mtree_mult1_2_im3_cma_w_type is array(0 to 0) of SIGNED(22 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_cma_w : u0_m0_wo0_mtree_mult1_2_im3_cma_w_type;
    type u0_m0_wo0_mtree_mult1_2_im3_cma_x_type is array(0 to 0) of SIGNED(22 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_cma_x : u0_m0_wo0_mtree_mult1_2_im3_cma_x_type;
    type u0_m0_wo0_mtree_mult1_2_im3_cma_y_type is array(0 to 0) of SIGNED(22 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_cma_y : u0_m0_wo0_mtree_mult1_2_im3_cma_y_type;
    type u0_m0_wo0_mtree_mult1_2_im3_cma_s_type is array(0 to 0) of SIGNED(22 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_cma_s : u0_m0_wo0_mtree_mult1_2_im3_cma_s_type;
    signal u0_m0_wo0_mtree_mult1_2_im3_cma_qq : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_cma_q : STD_LOGIC_VECTOR (19 downto 0);
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_a_type is array(0 to 1) of UNSIGNED(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_a0 : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_a0 : signal is true;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_c_type is array(0 to 1) of SIGNED(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_c0 : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_c0 : signal is true;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_l_type is array(0 to 1) of SIGNED(18 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_l : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_l_type;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_p_type is array(0 to 1) of SIGNED(29 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_p : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_p_type;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_u_type is array(0 to 1) of SIGNED(30 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_u : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_u_type;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_w_type is array(0 to 0) of SIGNED(30 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_w : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_w_type;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_x_type is array(0 to 0) of SIGNED(30 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_x : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_x_type;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_y_type is array(0 to 0) of SIGNED(30 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_y : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_y_type;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_s_type is array(0 to 0) of SIGNED(30 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_s : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_s_type;
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_qq : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_q : STD_LOGIC_VECTOR (26 downto 0);
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_a_type is array(0 to 1) of SIGNED(11 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_a0 : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_a_type;
    attribute preserve of u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_a0 : signal is true;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_c_type is array(0 to 1) of SIGNED(10 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_c0 : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_c_type;
    attribute preserve of u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_c0 : signal is true;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_p_type is array(0 to 1) of SIGNED(22 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_p : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_p_type;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_u_type is array(0 to 1) of SIGNED(23 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_u : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_u_type;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_w_type is array(0 to 0) of SIGNED(23 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_w : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_w_type;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_x_type is array(0 to 0) of SIGNED(23 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_x : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_x_type;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_y_type is array(0 to 0) of SIGNED(23 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_y : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_y_type;
    type u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_s_type is array(0 to 0) of SIGNED(23 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_s : u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_s_type;
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_qq : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_q : STD_LOGIC_VECTOR (20 downto 0);
    signal d_xIn_0_13_mem_reset0 : std_logic;
    signal d_xIn_0_13_mem_ia : STD_LOGIC_VECTOR (29 downto 0);
    signal d_xIn_0_13_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_mem_iq : STD_LOGIC_VECTOR (29 downto 0);
    signal d_xIn_0_13_mem_q : STD_LOGIC_VECTOR (29 downto 0);
    signal d_xIn_0_13_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of d_xIn_0_13_rdcnt_i : signal is true;
    signal d_xIn_0_13_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of d_xIn_0_13_sticky_ena_q : signal is true;
    signal d_xIn_0_13_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a0_in : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a0_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a18_in : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a18_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_in : STD_LOGIC_VECTOR (59 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_c : STD_LOGIC_VECTOR (29 downto 0);
    signal out0_m0_wo0_lineup_select_delay_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_align_7_q : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_align_7_q_int : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_shiftup_a18_b0_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_shiftup_a18_b0_q_int : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_wi0_r0_join1_q : STD_LOGIC_VECTOR (59 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a0_in : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a0_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a18_in : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a18_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_bs5_in : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_bs5_b : STD_LOGIC_VECTOR (11 downto 0);
    signal out0_m0_wo0_assign_id3_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- xIn(PORTIN,2)@10

    -- u0_m0_wo0_run(ENABLEGENERATOR,9)@10
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & xIn_v & u0_m0_wo0_run_enable_q;
    u0_m0_wo0_run_enable_q <= u0_m0_wo0_run_out;
    u0_m0_wo0_run: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : SIGNED(0 downto 0);
        variable u0_m0_wo0_run_inc : SIGNED(6 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(-1, 1);
            u0_m0_wo0_run_count <= "0000000";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_run_ctrl) IS
                WHEN "000" | "001" => u0_m0_wo0_run_inc := "0000000";
                WHEN "010" | "011" => u0_m0_wo0_run_inc := "1101100";
                WHEN "100" => u0_m0_wo0_run_inc := "0000001";
                WHEN "101" => u0_m0_wo0_run_inc := "0000001";
                WHEN "110" => u0_m0_wo0_run_inc := "1101101";
                WHEN "111" => u0_m0_wo0_run_inc := "1101101";
                WHEN OTHERS => 
            END CASE;
            u0_m0_wo0_run_count <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_run_count) + SIGNED(u0_m0_wo0_run_inc));
            u0_m0_wo0_run_q <= u0_m0_wo0_run_out;
        END IF;
    END PROCESS;
    u0_m0_wo0_run_pre_ena_q <= u0_m0_wo0_run_count(6 downto 6);
    u0_m0_wo0_run_out <= u0_m0_wo0_run_pre_ena_q and VCC_q;

    -- u0_m0_wo0_memread(DELAY,10)@12
    u0_m0_wo0_memread : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_run_q, xout => u0_m0_wo0_memread_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,11)@12
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_ca2(COUNTER,21)@12
    -- every=1, low=0, high=19, step=1, init=0
    u0_m0_wo0_ca2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca2_i <= TO_UNSIGNED(0, 5);
            u0_m0_wo0_ca2_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_ca2_i = TO_UNSIGNED(18, 5)) THEN
                    u0_m0_wo0_ca2_eq <= '1';
                ELSE
                    u0_m0_wo0_ca2_eq <= '0';
                END IF;
                IF (u0_m0_wo0_ca2_eq = '1') THEN
                    u0_m0_wo0_ca2_i <= u0_m0_wo0_ca2_i - 19;
                ELSE
                    u0_m0_wo0_ca2_i <= u0_m0_wo0_ca2_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca2_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca2_i, 5)));

    -- u0_m0_wo0_cm2(LOOKUP,24)@12
    u0_m0_wo0_cm2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm2_q <= "01001010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca2_q) IS
                WHEN "00000" => u0_m0_wo0_cm2_q <= "01001010";
                WHEN "00001" => u0_m0_wo0_cm2_q <= "01000101";
                WHEN "00010" => u0_m0_wo0_cm2_q <= "00111111";
                WHEN "00011" => u0_m0_wo0_cm2_q <= "00111001";
                WHEN "00100" => u0_m0_wo0_cm2_q <= "00110100";
                WHEN "00101" => u0_m0_wo0_cm2_q <= "00101110";
                WHEN "00110" => u0_m0_wo0_cm2_q <= "00101001";
                WHEN "00111" => u0_m0_wo0_cm2_q <= "00100100";
                WHEN "01000" => u0_m0_wo0_cm2_q <= "00011111";
                WHEN "01001" => u0_m0_wo0_cm2_q <= "00011010";
                WHEN "01010" => u0_m0_wo0_cm2_q <= "00010110";
                WHEN "01011" => u0_m0_wo0_cm2_q <= "00111001";
                WHEN "01100" => u0_m0_wo0_cm2_q <= "00000000";
                WHEN "01101" => u0_m0_wo0_cm2_q <= "00000000";
                WHEN "01110" => u0_m0_wo0_cm2_q <= "00000000";
                WHEN "01111" => u0_m0_wo0_cm2_q <= "00000000";
                WHEN "10000" => u0_m0_wo0_cm2_q <= "00000000";
                WHEN "10001" => u0_m0_wo0_cm2_q <= "00000000";
                WHEN "10010" => u0_m0_wo0_cm2_q <= "00000000";
                WHEN "10011" => u0_m0_wo0_cm2_q <= "00000000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm2_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_memread_q_13(DELAY,64)@12
    d_u0_m0_wo0_memread_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => d_u0_m0_wo0_memread_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_ra2_count0(COUNTER,13)@13
    -- every=20, low=0, high=1, step=1, init=0
    u0_m0_wo0_wi0_r0_ra2_count0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra2_count0_i <= TO_UNSIGNED(0, 1);
            u0_m0_wo0_wi0_r0_ra2_count0_sc <= TO_SIGNED(18, 6);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_13_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra2_count0_sc(5) = '1') THEN
                    u0_m0_wo0_wi0_r0_ra2_count0_sc <= u0_m0_wo0_wi0_r0_ra2_count0_sc - (-19);
                ELSE
                    u0_m0_wo0_wi0_r0_ra2_count0_sc <= u0_m0_wo0_wi0_r0_ra2_count0_sc + (-1);
                END IF;
                IF (u0_m0_wo0_wi0_r0_ra2_count0_sc(5) = '1') THEN
                    u0_m0_wo0_wi0_r0_ra2_count0_i <= u0_m0_wo0_wi0_r0_ra2_count0_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra2_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra2_count0_i, 1)));

    -- d_xIn_0_13_notEnable(LOGICAL,70)@10
    d_xIn_0_13_notEnable_a <= VCC_q;
    d_xIn_0_13_notEnable_q <= not (d_xIn_0_13_notEnable_a);

    -- d_xIn_0_13_nor(LOGICAL,71)@10
    d_xIn_0_13_nor_a <= d_xIn_0_13_notEnable_q;
    d_xIn_0_13_nor_b <= d_xIn_0_13_sticky_ena_q;
    d_xIn_0_13_nor_q <= not (d_xIn_0_13_nor_a or d_xIn_0_13_nor_b);

    -- d_xIn_0_13_cmpReg(REG,69)@10
    d_xIn_0_13_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- d_xIn_0_13_sticky_ena(REG,72)@10
    d_xIn_0_13_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_xIn_0_13_nor_q = "1") THEN
                d_xIn_0_13_sticky_ena_q <= STD_LOGIC_VECTOR(d_xIn_0_13_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- d_xIn_0_13_enaAnd(LOGICAL,73)@10
    d_xIn_0_13_enaAnd_a <= d_xIn_0_13_sticky_ena_q;
    d_xIn_0_13_enaAnd_b <= VCC_q;
    d_xIn_0_13_enaAnd_q <= d_xIn_0_13_enaAnd_a and d_xIn_0_13_enaAnd_b;

    -- d_xIn_0_13_rdcnt(COUNTER,67)@10
    -- every=1, low=0, high=1, step=1, init=1
    d_xIn_0_13_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_rdcnt_i <= TO_UNSIGNED(1, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_rdcnt_i <= d_xIn_0_13_rdcnt_i + 1;
        END IF;
    END PROCESS;
    d_xIn_0_13_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(d_xIn_0_13_rdcnt_i, 1)));

    -- d_xIn_0_13_wraddr(REG,68)@10
    d_xIn_0_13_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_wraddr_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_wraddr_q <= STD_LOGIC_VECTOR(d_xIn_0_13_rdcnt_q);
        END IF;
    END PROCESS;

    -- d_xIn_0_13_mem(DUALMEM,66)@10
    d_xIn_0_13_mem_ia <= STD_LOGIC_VECTOR(xIn_0);
    d_xIn_0_13_mem_aa <= d_xIn_0_13_wraddr_q;
    d_xIn_0_13_mem_ab <= d_xIn_0_13_rdcnt_q;
    d_xIn_0_13_mem_reset0 <= areset;
    d_xIn_0_13_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 30,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 30,
        widthad_b => 1,
        numwords_b => 2,
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
        clocken1 => d_xIn_0_13_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => d_xIn_0_13_mem_reset0,
        clock1 => clk,
        address_a => d_xIn_0_13_mem_aa,
        data_a => d_xIn_0_13_mem_ia,
        wren_a => VCC_q(0),
        address_b => d_xIn_0_13_mem_ab,
        q_b => d_xIn_0_13_mem_iq
    );
    d_xIn_0_13_mem_q <= d_xIn_0_13_mem_iq(29 downto 0);

    -- d_in0_m0_wi0_wo0_assign_id1_q_13(DELAY,63)@10
    d_in0_m0_wi0_wo0_assign_id1_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_id1_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_wa0(COUNTER,15)@13
    -- every=1, low=0, high=1, step=1, init=0
    u0_m0_wo0_wi0_r0_wa0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa0_i <= TO_UNSIGNED(0, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa0_i, 1)));

    -- u0_m0_wo0_wi0_r0_memr0(DUALMEM,17)@13
    u0_m0_wo0_wi0_r0_memr0_ia <= STD_LOGIC_VECTOR(d_xIn_0_13_mem_q);
    u0_m0_wo0_wi0_r0_memr0_aa <= u0_m0_wo0_wi0_r0_wa0_q;
    u0_m0_wo0_wi0_r0_memr0_ab <= u0_m0_wo0_wi0_r0_ra2_count0_q;
    u0_m0_wo0_wi0_r0_memr0_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 30,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 30,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "NONE",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_wi0_r0_memr0_aa,
        data_a => u0_m0_wo0_wi0_r0_memr0_ia,
        wren_a => d_in0_m0_wi0_wo0_assign_id1_q_13_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr0_ab,
        q_b => u0_m0_wo0_wi0_r0_memr0_iq
    );
    u0_m0_wo0_wi0_r0_memr0_q <= u0_m0_wo0_wi0_r0_memr0_iq(29 downto 0);

    -- u0_m0_wo0_wi0_r0_join1(BITJOIN,18)@13
    u0_m0_wo0_wi0_r0_join1_q <= u0_m0_wo0_wi0_r0_split1_b & u0_m0_wo0_wi0_r0_memr0_q;

    -- u0_m0_wo0_wi0_r0_we2_seq(SEQUENCE,14)@12
    u0_m0_wo0_wi0_r0_we2_seq: PROCESS (clk, areset)
        variable u0_m0_wo0_wi0_r0_we2_seq_c : SIGNED(6 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_we2_seq_c := "0010001";
            u0_m0_wo0_wi0_r0_we2_seq_q <= "0";
            u0_m0_wo0_wi0_r0_we2_seq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_we2_seq_c = "0000000") THEN
                    u0_m0_wo0_wi0_r0_we2_seq_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_we2_seq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_we2_seq_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_we2_seq_c := u0_m0_wo0_wi0_r0_we2_seq_c + 19;
                ELSE
                    u0_m0_wo0_wi0_r0_we2_seq_c := u0_m0_wo0_wi0_r0_we2_seq_c - 1;
                END IF;
                u0_m0_wo0_wi0_r0_we2_seq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_we2_seq_c(6 downto 6));
            ELSE
                u0_m0_wo0_wi0_r0_we2_seq_q <= "0";
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_wa2(COUNTER,16)@13
    -- every=1, low=0, high=1, step=1, init=1
    u0_m0_wo0_wi0_r0_wa2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa2_i <= TO_UNSIGNED(1, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi0_r0_we2_seq_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa2_i <= u0_m0_wo0_wi0_r0_wa2_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa2_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa2_i, 1)));

    -- u0_m0_wo0_wi0_r0_memr1(DUALMEM,20)@13
    u0_m0_wo0_wi0_r0_memr1_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join1_q);
    u0_m0_wo0_wi0_r0_memr1_aa <= u0_m0_wo0_wi0_r0_wa2_q;
    u0_m0_wo0_wi0_r0_memr1_ab <= u0_m0_wo0_wi0_r0_ra2_count0_q;
    u0_m0_wo0_wi0_r0_memr1_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 60,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 60,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "NONE",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_wi0_r0_memr1_aa,
        data_a => u0_m0_wo0_wi0_r0_memr1_ia,
        wren_a => u0_m0_wo0_wi0_r0_we2_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr1_ab,
        q_b => u0_m0_wo0_wi0_r0_memr1_iq
    );
    u0_m0_wo0_wi0_r0_memr1_q <= u0_m0_wo0_wi0_r0_memr1_iq(59 downto 0);

    -- u0_m0_wo0_wi0_r0_split1(BITSELECT,19)@13
    u0_m0_wo0_wi0_r0_split1_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q);
    u0_m0_wo0_wi0_r0_split1_b <= u0_m0_wo0_wi0_r0_split1_in(29 downto 0);
    u0_m0_wo0_wi0_r0_split1_c <= u0_m0_wo0_wi0_r0_split1_in(59 downto 30);

    -- u0_m0_wo0_mtree_mult1_2_bs5(BITSELECT,42)@13
    u0_m0_wo0_mtree_mult1_2_bs5_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split1_c);
    u0_m0_wo0_mtree_mult1_2_bs5_b <= u0_m0_wo0_mtree_mult1_2_bs5_in(29 downto 18);

    -- u0_m0_wo0_mtree_mult1_2_im3_cma(CHAINMULTADD,59)@13
    u0_m0_wo0_mtree_mult1_2_im3_cma_p(0) <= u0_m0_wo0_mtree_mult1_2_im3_cma_a0(0) * u0_m0_wo0_mtree_mult1_2_im3_cma_c0(0);
    u0_m0_wo0_mtree_mult1_2_im3_cma_u(0) <= RESIZE(u0_m0_wo0_mtree_mult1_2_im3_cma_p(0),23);
    u0_m0_wo0_mtree_mult1_2_im3_cma_w(0) <= u0_m0_wo0_mtree_mult1_2_im3_cma_u(0);
    u0_m0_wo0_mtree_mult1_2_im3_cma_x(0) <= u0_m0_wo0_mtree_mult1_2_im3_cma_w(0);
    u0_m0_wo0_mtree_mult1_2_im3_cma_y(0) <= u0_m0_wo0_mtree_mult1_2_im3_cma_x(0);
    u0_m0_wo0_mtree_mult1_2_im3_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_2_im3_cma_a0 <= (others => (others => '0'));
            u0_m0_wo0_mtree_mult1_2_im3_cma_c0 <= (others => (others => '0'));
            u0_m0_wo0_mtree_mult1_2_im3_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_2_im3_cma_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_mtree_mult1_2_bs5_b),12);
            u0_m0_wo0_mtree_mult1_2_im3_cma_c0(0) <= RESIZE(SIGNED(u0_m0_wo0_cm2_q),11);
            u0_m0_wo0_mtree_mult1_2_im3_cma_s(0) <= u0_m0_wo0_mtree_mult1_2_im3_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_2_im3_cma_delay : dspba_delay
    GENERIC MAP ( width => 23, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_2_im3_cma_s(0)(22 downto 0)), xout => u0_m0_wo0_mtree_mult1_2_im3_cma_qq, clk => clk, aclr => areset );
    u0_m0_wo0_mtree_mult1_2_im3_cma_q <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_2_im3_cma_qq(19 downto 0));

    -- u0_m0_wo0_mtree_mult1_2_align_7(BITSHIFT,44)@15
    u0_m0_wo0_mtree_mult1_2_align_7_q_int <= u0_m0_wo0_mtree_mult1_2_im3_cma_q & "000000000000000000";
    u0_m0_wo0_mtree_mult1_2_align_7_q <= u0_m0_wo0_mtree_mult1_2_align_7_q_int(37 downto 0);

    -- u0_m0_wo0_mtree_mult1_2_bs2(BITSELECT,39)@13
    u0_m0_wo0_mtree_mult1_2_bs2_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split1_c(17 downto 0));
    u0_m0_wo0_mtree_mult1_2_bs2_b <= u0_m0_wo0_mtree_mult1_2_bs2_in(17 downto 0);

    -- u0_m0_wo0_mtree_mult1_2_im0_cma(CHAINMULTADD,58)@13
    u0_m0_wo0_mtree_mult1_2_im0_cma_l(0) <= SIGNED(RESIZE(u0_m0_wo0_mtree_mult1_2_im0_cma_a0(0),19));
    u0_m0_wo0_mtree_mult1_2_im0_cma_p(0) <= u0_m0_wo0_mtree_mult1_2_im0_cma_l(0) * u0_m0_wo0_mtree_mult1_2_im0_cma_c0(0);
    u0_m0_wo0_mtree_mult1_2_im0_cma_u(0) <= RESIZE(u0_m0_wo0_mtree_mult1_2_im0_cma_p(0),30);
    u0_m0_wo0_mtree_mult1_2_im0_cma_w(0) <= u0_m0_wo0_mtree_mult1_2_im0_cma_u(0);
    u0_m0_wo0_mtree_mult1_2_im0_cma_x(0) <= u0_m0_wo0_mtree_mult1_2_im0_cma_w(0);
    u0_m0_wo0_mtree_mult1_2_im0_cma_y(0) <= u0_m0_wo0_mtree_mult1_2_im0_cma_x(0);
    u0_m0_wo0_mtree_mult1_2_im0_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_2_im0_cma_a0 <= (others => (others => '0'));
            u0_m0_wo0_mtree_mult1_2_im0_cma_c0 <= (others => (others => '0'));
            u0_m0_wo0_mtree_mult1_2_im0_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_2_im0_cma_a0(0) <= RESIZE(UNSIGNED(u0_m0_wo0_mtree_mult1_2_bs2_b),18);
            u0_m0_wo0_mtree_mult1_2_im0_cma_c0(0) <= RESIZE(SIGNED(u0_m0_wo0_cm2_q),11);
            u0_m0_wo0_mtree_mult1_2_im0_cma_s(0) <= u0_m0_wo0_mtree_mult1_2_im0_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_2_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 29, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_2_im0_cma_s(0)(28 downto 0)), xout => u0_m0_wo0_mtree_mult1_2_im0_cma_qq, clk => clk, aclr => areset );
    u0_m0_wo0_mtree_mult1_2_im0_cma_q <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_2_im0_cma_qq(25 downto 0));

    -- u0_m0_wo0_mtree_mult1_2_result_add_0_0(ADD,46)@15
    u0_m0_wo0_mtree_mult1_2_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 26 => u0_m0_wo0_mtree_mult1_2_im0_cma_q(25)) & u0_m0_wo0_mtree_mult1_2_im0_cma_q));
    u0_m0_wo0_mtree_mult1_2_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 38 => u0_m0_wo0_mtree_mult1_2_align_7_q(37)) & u0_m0_wo0_mtree_mult1_2_align_7_q));
    u0_m0_wo0_mtree_mult1_2_result_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_2_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_2_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_2_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_2_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_2_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_2_result_add_0_0_o(38 downto 0);

    -- u0_m0_wo0_cm0(LOOKUP,22)@12
    u0_m0_wo0_cm0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm0_q <= "00111001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca2_q) IS
                WHEN "00000" => u0_m0_wo0_cm0_q <= "00111001";
                WHEN "00001" => u0_m0_wo0_cm0_q <= "00010110";
                WHEN "00010" => u0_m0_wo0_cm0_q <= "00011010";
                WHEN "00011" => u0_m0_wo0_cm0_q <= "00011111";
                WHEN "00100" => u0_m0_wo0_cm0_q <= "00100100";
                WHEN "00101" => u0_m0_wo0_cm0_q <= "00101001";
                WHEN "00110" => u0_m0_wo0_cm0_q <= "00101110";
                WHEN "00111" => u0_m0_wo0_cm0_q <= "00110100";
                WHEN "01000" => u0_m0_wo0_cm0_q <= "00111001";
                WHEN "01001" => u0_m0_wo0_cm0_q <= "00111111";
                WHEN "01010" => u0_m0_wo0_cm0_q <= "01000101";
                WHEN "01011" => u0_m0_wo0_cm0_q <= "01001010";
                WHEN "01100" => u0_m0_wo0_cm0_q <= "01010000";
                WHEN "01101" => u0_m0_wo0_cm0_q <= "01010110";
                WHEN "01110" => u0_m0_wo0_cm0_q <= "01011011";
                WHEN "01111" => u0_m0_wo0_cm0_q <= "01100001";
                WHEN "10000" => u0_m0_wo0_cm0_q <= "01100110";
                WHEN "10001" => u0_m0_wo0_cm0_q <= "01101010";
                WHEN "10010" => u0_m0_wo0_cm0_q <= "01101110";
                WHEN "10011" => u0_m0_wo0_cm0_q <= "01110010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm0_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a0(BITSELECT,47)@13
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a0_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr0_q(17 downto 0));
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a0_b <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a0_in(17 downto 0);

    -- u0_m0_wo0_cm1(LOOKUP,23)@12
    u0_m0_wo0_cm1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm1_q <= "01110110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca2_q) IS
                WHEN "00000" => u0_m0_wo0_cm1_q <= "01110110";
                WHEN "00001" => u0_m0_wo0_cm1_q <= "01111001";
                WHEN "00010" => u0_m0_wo0_cm1_q <= "01111011";
                WHEN "00011" => u0_m0_wo0_cm1_q <= "01111101";
                WHEN "00100" => u0_m0_wo0_cm1_q <= "01111110";
                WHEN "00101" => u0_m0_wo0_cm1_q <= "01111111";
                WHEN "00110" => u0_m0_wo0_cm1_q <= "01111111";
                WHEN "00111" => u0_m0_wo0_cm1_q <= "01111110";
                WHEN "01000" => u0_m0_wo0_cm1_q <= "01111101";
                WHEN "01001" => u0_m0_wo0_cm1_q <= "01111011";
                WHEN "01010" => u0_m0_wo0_cm1_q <= "01111001";
                WHEN "01011" => u0_m0_wo0_cm1_q <= "01110110";
                WHEN "01100" => u0_m0_wo0_cm1_q <= "01110010";
                WHEN "01101" => u0_m0_wo0_cm1_q <= "01101110";
                WHEN "01110" => u0_m0_wo0_cm1_q <= "01101010";
                WHEN "01111" => u0_m0_wo0_cm1_q <= "01100110";
                WHEN "10000" => u0_m0_wo0_cm1_q <= "01100001";
                WHEN "10001" => u0_m0_wo0_cm1_q <= "01011011";
                WHEN "10010" => u0_m0_wo0_cm1_q <= "01010110";
                WHEN "10011" => u0_m0_wo0_cm1_q <= "01010000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm1_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a0(BITSELECT,50)@13
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a0_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split1_b(17 downto 0));
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a0_b <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a0_in(17 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma(CHAINMULTADD,60)@13
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_l(0) <= SIGNED(RESIZE(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_a0(0),19));
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_l(1) <= SIGNED(RESIZE(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_a0(1),19));
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_p(0) <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_l(0) * u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_c0(0);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_p(1) <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_l(1) * u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_c0(1);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_u(0) <= RESIZE(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_p(0),31);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_u(1) <= RESIZE(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_p(1),31);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_w(0) <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_u(0) + u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_u(1);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_x(0) <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_w(0);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_y(0) <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_x(0);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_a0 <= (others => (others => '0'));
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_c0 <= (others => (others => '0'));
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_a0(0) <= RESIZE(UNSIGNED(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a0_b),18);
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_a0(1) <= RESIZE(UNSIGNED(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a0_b),18);
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_c0(0) <= RESIZE(SIGNED(u0_m0_wo0_cm1_q),11);
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_c0(1) <= RESIZE(SIGNED(u0_m0_wo0_cm0_q),11);
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_s(0) <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_delay : dspba_delay
    GENERIC MAP ( width => 30, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_s(0)(29 downto 0)), xout => u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_qq, clk => clk, aclr => areset );
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_q <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_qq(26 downto 0));

    -- u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a18(BITSELECT,48)@13
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a18_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr0_q);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a18_b <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a18_in(29 downto 18);

    -- u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a18(BITSELECT,51)@13
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a18_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split1_b);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a18_b <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a18_in(29 downto 18);

    -- u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma(CHAINMULTADD,61)@13
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_p(0) <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_a0(0) * u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_c0(0);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_p(1) <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_a0(1) * u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_c0(1);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_u(0) <= RESIZE(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_p(0),24);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_u(1) <= RESIZE(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_p(1),24);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_w(0) <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_u(0) + u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_u(1);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_x(0) <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_w(0);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_y(0) <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_x(0);
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_a0 <= (others => (others => '0'));
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_c0 <= (others => (others => '0'));
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_replace_split_a18_b),12);
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_a0(1) <= RESIZE(SIGNED(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_replace_split_a18_b),12);
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_c0(0) <= RESIZE(SIGNED(u0_m0_wo0_cm1_q),11);
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_c0(1) <= RESIZE(SIGNED(u0_m0_wo0_cm0_q),11);
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_s(0) <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_y(0);
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_delay : dspba_delay
    GENERIC MAP ( width => 24, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_s(0)(23 downto 0)), xout => u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_qq, clk => clk, aclr => areset );
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_q <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_qq(20 downto 0));

    -- u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_shiftup_a18_b0(BITSHIFT,55)@15
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_shiftup_a18_b0_q_int <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_0_mpart_a18_b0_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_a18_b0_add_u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_1_mpart_a18_b0_merged_cma_q & "000000000000000000";
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_shiftup_a18_b0_q <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_shiftup_a18_b0_q_int(38 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0(ADD,56)@15
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 39 => u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_shiftup_a18_b0_q(38)) & u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_shiftup_a18_b0_q));
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 27 => u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_q(26)) & u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_replace_cma_q));
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_q <= u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_o(39 downto 0);

    -- u0_m0_wo0_mtree_add1_0(ADD,29)@16
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_u0_m0_wo0_mtree_add0_0_u0_m0_wo0_mtree_mult1_1_merged_adder_tree_add_0_0_q);
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((39 downto 39 => u0_m0_wo0_mtree_mult1_2_result_add_0_0_q(38)) & u0_m0_wo0_mtree_mult1_2_result_add_0_0_q));
    u0_m0_wo0_mtree_add1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(39 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- d_u0_m0_wo0_compute_q_16(DELAY,65)@12
    d_u0_m0_wo0_compute_q_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_oseq_gated_reg(REG,30)@16
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(d_u0_m0_wo0_compute_q_16_q);
        END IF;
    END PROCESS;

    -- out0_m0_wo0_lineup_select_delay_0(DELAY,32)@17
    out0_m0_wo0_lineup_select_delay_0_q <= u0_m0_wo0_oseq_gated_reg_q;

    -- out0_m0_wo0_assign_id3(DELAY,34)@17
    out0_m0_wo0_assign_id3_q <= out0_m0_wo0_lineup_select_delay_0_q;

    -- xOut(PORTOUT,35)@17
    xOut_v <= out0_m0_wo0_assign_id3_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add1_0_q;

END normal;
