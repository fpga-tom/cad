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

-- VHDL created from ddc_fir1_0002_rtl
-- VHDL created on Wed Jan  6 16:08:18 2016


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

entity ddc_fir1_0002_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(23 downto 0);  -- sfix24
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(38 downto 0);  -- sfix39
        clk : in std_logic;
        areset : in std_logic
    );
end ddc_fir1_0002_rtl;

architecture normal of ddc_fir1_0002_rtl is

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
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_i : UNSIGNED (4 downto 0);
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count0_sc : SIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_sc : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count1_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count1_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count1_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_a : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_o : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_memr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_ca5_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_ca5_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_ca5_i : signal is true;
    signal u0_m0_wo0_ca5_eq : std_logic;
    attribute preserve of u0_m0_wo0_ca5_eq : signal is true;
    signal u0_m0_wo0_cm0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm2_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm3_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm4_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm5_q : STD_LOGIC_VECTOR (7 downto 0);
    type u0_m0_wo0_cma0_a_type is array(0 to 5) of SIGNED(23 downto 0);
    signal u0_m0_wo0_cma0_a0 : u0_m0_wo0_cma0_a_type;
    attribute preserve of u0_m0_wo0_cma0_a0 : signal is true;
    type u0_m0_wo0_cma0_c_type is array(0 to 5) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma0_c0 : u0_m0_wo0_cma0_c_type;
    attribute preserve of u0_m0_wo0_cma0_c0 : signal is true;
    type u0_m0_wo0_cma0_p_type is array(0 to 5) of SIGNED(34 downto 0);
    signal u0_m0_wo0_cma0_p : u0_m0_wo0_cma0_p_type;
    type u0_m0_wo0_cma0_u_type is array(0 to 5) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_u : u0_m0_wo0_cma0_u_type;
    type u0_m0_wo0_cma0_w_type is array(0 to 5) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_w : u0_m0_wo0_cma0_w_type;
    type u0_m0_wo0_cma0_x_type is array(0 to 5) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_x : u0_m0_wo0_cma0_x_type;
    type u0_m0_wo0_cma0_y_type is array(0 to 5) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_y : u0_m0_wo0_cma0_y_type;
    type u0_m0_wo0_cma0_z_type is array(0 to 0) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_z : u0_m0_wo0_cma0_z_type;
    signal u0_m0_wo0_cma0_anl : std_logic_vector(0 to 0);
    type u0_m0_wo0_cma0_s_type is array(0 to 5) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_s : u0_m0_wo0_cma0_s_type;
    signal u0_m0_wo0_cma0_qq : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_cma0_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_delayr1_mem_ia : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_mem_iq : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_mem_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_delayr1_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr1_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_delayr1_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr1_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_delayr1_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr3_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_delayr3_mem_ia : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_mem_iq : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_mem_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_delayr3_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr3_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_delayr3_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr3_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_delayr3_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr5_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_delayr5_mem_ia : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_mem_iq : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_mem_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_delayr5_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr5_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_delayr5_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_delayr5_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_delayr5_sticky_ena_q : signal is true;
    signal d_xIn_0_13_mem_reset0 : std_logic;
    signal d_xIn_0_13_mem_ia : STD_LOGIC_VECTOR (23 downto 0);
    signal d_xIn_0_13_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_mem_iq : STD_LOGIC_VECTOR (23 downto 0);
    signal d_xIn_0_13_mem_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_xIn_0_13_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of d_xIn_0_13_rdcnt_i : signal is true;
    signal d_xIn_0_13_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of d_xIn_0_13_sticky_ena_q : signal is true;
    signal u0_m0_wo0_oseq_gated_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_lut_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_resize_in : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_resize_b : STD_LOGIC_VECTOR (4 downto 0);
    signal out0_m0_wo0_lineup_select_delay_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_in : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_c : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_split3_in : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_wi0_r0_split3_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_split3_c : STD_LOGIC_VECTOR (23 downto 0);
    signal out0_m0_wo0_assign_id3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_join1_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_wi0_r0_join3_q : STD_LOGIC_VECTOR (47 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- xIn(PORTIN,2)@10

    -- u0_m0_wo0_run(ENABLEGENERATOR,9)@10
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & xIn_v & u0_m0_wo0_run_enable_q;
    u0_m0_wo0_run: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : SIGNED(5 downto 0);
        variable u0_m0_wo0_run_inc : SIGNED(6 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(18, 6);
            u0_m0_wo0_run_enable_q <= "0";
            u0_m0_wo0_run_count <= "0000000";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(5) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-19);
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + (-1);
                END IF;
                u0_m0_wo0_run_enable_q <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(5 downto 5));
            ELSE
                u0_m0_wo0_run_enable_q <= "0";
            END IF;
            CASE (u0_m0_wo0_run_ctrl) IS
                WHEN "000" | "001" => u0_m0_wo0_run_inc := "0000000";
                WHEN "010" | "011" => u0_m0_wo0_run_inc := "1111111";
                WHEN "100" => u0_m0_wo0_run_inc := "0000000";
                WHEN "101" => u0_m0_wo0_run_inc := "0010100";
                WHEN "110" => u0_m0_wo0_run_inc := "1111111";
                WHEN "111" => u0_m0_wo0_run_inc := "0010011";
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

    -- u0_m0_wo0_ca5(COUNTER,28)@12
    -- every=1, low=0, high=19, step=1, init=5
    u0_m0_wo0_ca5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca5_i <= TO_UNSIGNED(5, 5);
            u0_m0_wo0_ca5_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_ca5_i = TO_UNSIGNED(18, 5)) THEN
                    u0_m0_wo0_ca5_eq <= '1';
                ELSE
                    u0_m0_wo0_ca5_eq <= '0';
                END IF;
                IF (u0_m0_wo0_ca5_eq = '1') THEN
                    u0_m0_wo0_ca5_i <= u0_m0_wo0_ca5_i - 19;
                ELSE
                    u0_m0_wo0_ca5_i <= u0_m0_wo0_ca5_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca5_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca5_i, 5)));

    -- u0_m0_wo0_cm5(LOOKUP,34)@12
    u0_m0_wo0_cm5: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm5_q <= "00000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca5_q) IS
                WHEN "00000" => u0_m0_wo0_cm5_q <= "00000000";
                WHEN "00001" => u0_m0_wo0_cm5_q <= "00000000";
                WHEN "00010" => u0_m0_wo0_cm5_q <= "00000000";
                WHEN "00011" => u0_m0_wo0_cm5_q <= "00000000";
                WHEN "00100" => u0_m0_wo0_cm5_q <= "00000000";
                WHEN "00101" => u0_m0_wo0_cm5_q <= "00000000";
                WHEN "00110" => u0_m0_wo0_cm5_q <= "00000001";
                WHEN "00111" => u0_m0_wo0_cm5_q <= "00000001";
                WHEN "01000" => u0_m0_wo0_cm5_q <= "00000001";
                WHEN "01001" => u0_m0_wo0_cm5_q <= "00000010";
                WHEN "01010" => u0_m0_wo0_cm5_q <= "00000010";
                WHEN "01011" => u0_m0_wo0_cm5_q <= "00000011";
                WHEN "01100" => u0_m0_wo0_cm5_q <= "00000100";
                WHEN "01101" => u0_m0_wo0_cm5_q <= "00000100";
                WHEN "01110" => u0_m0_wo0_cm5_q <= "00000101";
                WHEN "01111" => u0_m0_wo0_cm5_q <= "00000110";
                WHEN "10000" => u0_m0_wo0_cm5_q <= "00000111";
                WHEN "10001" => u0_m0_wo0_cm5_q <= "00001001";
                WHEN "10010" => u0_m0_wo0_cm5_q <= "00001010";
                WHEN "10011" => u0_m0_wo0_cm5_q <= "00001100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm5_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr5_notEnable(LOGICAL,80)@13
    u0_m0_wo0_wi0_r0_delayr5_notEnable_a <= d_u0_m0_wo0_compute_q_13_q;
    u0_m0_wo0_wi0_r0_delayr5_notEnable_q <= not (u0_m0_wo0_wi0_r0_delayr5_notEnable_a);

    -- u0_m0_wo0_wi0_r0_delayr5_nor(LOGICAL,81)@13
    u0_m0_wo0_wi0_r0_delayr5_nor_a <= u0_m0_wo0_wi0_r0_delayr5_notEnable_q;
    u0_m0_wo0_wi0_r0_delayr5_nor_b <= u0_m0_wo0_wi0_r0_delayr5_sticky_ena_q;
    u0_m0_wo0_wi0_r0_delayr5_nor_q <= not (u0_m0_wo0_wi0_r0_delayr5_nor_a or u0_m0_wo0_wi0_r0_delayr5_nor_b);

    -- u0_m0_wo0_wi0_r0_delayr5_mem_top(CONSTANT,77)
    u0_m0_wo0_wi0_r0_delayr5_mem_top_q <= "010001";

    -- u0_m0_wo0_wi0_r0_delayr5_cmp(LOGICAL,78)@13
    u0_m0_wo0_wi0_r0_delayr5_cmp_a <= u0_m0_wo0_wi0_r0_delayr5_mem_top_q;
    u0_m0_wo0_wi0_r0_delayr5_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_delayr5_rdmux_q);
    u0_m0_wo0_wi0_r0_delayr5_cmp_q <= "1" WHEN u0_m0_wo0_wi0_r0_delayr5_cmp_a = u0_m0_wo0_wi0_r0_delayr5_cmp_b ELSE "0";

    -- u0_m0_wo0_wi0_r0_delayr5_cmpReg(REG,79)@13
    u0_m0_wo0_wi0_r0_delayr5_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr5_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_delayr5_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr5_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr5_sticky_ena(REG,82)@13
    u0_m0_wo0_wi0_r0_delayr5_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr5_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi0_r0_delayr5_nor_q = "1") THEN
                u0_m0_wo0_wi0_r0_delayr5_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr5_enaAnd(LOGICAL,83)@13
    u0_m0_wo0_wi0_r0_delayr5_enaAnd_a <= u0_m0_wo0_wi0_r0_delayr5_sticky_ena_q;
    u0_m0_wo0_wi0_r0_delayr5_enaAnd_b <= d_u0_m0_wo0_compute_q_13_q;
    u0_m0_wo0_wi0_r0_delayr5_enaAnd_q <= u0_m0_wo0_wi0_r0_delayr5_enaAnd_a and u0_m0_wo0_wi0_r0_delayr5_enaAnd_b;

    -- u0_m0_wo0_wi0_r0_delayr5_rdcnt(COUNTER,74)@13
    -- every=1, low=0, high=17, step=1, init=1
    u0_m0_wo0_wi0_r0_delayr5_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr5_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi0_r0_delayr5_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_13_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_delayr5_rdcnt_i = TO_UNSIGNED(16, 5)) THEN
                    u0_m0_wo0_wi0_r0_delayr5_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_delayr5_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_delayr5_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_delayr5_rdcnt_i <= u0_m0_wo0_wi0_r0_delayr5_rdcnt_i - 17;
                ELSE
                    u0_m0_wo0_wi0_r0_delayr5_rdcnt_i <= u0_m0_wo0_wi0_r0_delayr5_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_delayr5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_delayr5_rdcnt_i, 5)));

    -- u0_m0_wo0_wi0_r0_delayr5_rdmux(MUX,75)@13
    u0_m0_wo0_wi0_r0_delayr5_rdmux_s <= d_u0_m0_wo0_compute_q_13_q;
    u0_m0_wo0_wi0_r0_delayr5_rdmux: PROCESS (u0_m0_wo0_wi0_r0_delayr5_rdmux_s, u0_m0_wo0_wi0_r0_delayr5_wraddr_q, u0_m0_wo0_wi0_r0_delayr5_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi0_r0_delayr5_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi0_r0_delayr5_rdmux_q <= u0_m0_wo0_wi0_r0_delayr5_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi0_r0_delayr5_rdmux_q <= u0_m0_wo0_wi0_r0_delayr5_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi0_r0_delayr5_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr5_wraddr(REG,76)@13
    u0_m0_wo0_wi0_r0_delayr5_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr5_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_delayr5_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr5_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr5_mem(DUALMEM,73)@13
    u0_m0_wo0_wi0_r0_delayr5_mem_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split3_c);
    u0_m0_wo0_wi0_r0_delayr5_mem_aa <= u0_m0_wo0_wi0_r0_delayr5_wraddr_q;
    u0_m0_wo0_wi0_r0_delayr5_mem_ab <= u0_m0_wo0_wi0_r0_delayr5_rdmux_q;
    u0_m0_wo0_wi0_r0_delayr5_mem_reset0 <= areset;
    u0_m0_wo0_wi0_r0_delayr5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 24,
        widthad_a => 5,
        numwords_a => 18,
        width_b => 24,
        widthad_b => 5,
        numwords_b => 18,
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
        clocken1 => u0_m0_wo0_wi0_r0_delayr5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi0_r0_delayr5_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi0_r0_delayr5_mem_aa,
        data_a => u0_m0_wo0_wi0_r0_delayr5_mem_ia,
        wren_a => d_u0_m0_wo0_compute_q_13_q(0),
        address_b => u0_m0_wo0_wi0_r0_delayr5_mem_ab,
        q_b => u0_m0_wo0_wi0_r0_delayr5_mem_iq
    );
    u0_m0_wo0_wi0_r0_delayr5_mem_q <= u0_m0_wo0_wi0_r0_delayr5_mem_iq(23 downto 0);

    -- u0_m0_wo0_cm4(LOOKUP,33)@12
    u0_m0_wo0_cm4: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm4_q <= "01001010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca5_q) IS
                WHEN "00000" => u0_m0_wo0_cm4_q <= "01001010";
                WHEN "00001" => u0_m0_wo0_cm4_q <= "00001110";
                WHEN "00010" => u0_m0_wo0_cm4_q <= "00001111";
                WHEN "00011" => u0_m0_wo0_cm4_q <= "00010001";
                WHEN "00100" => u0_m0_wo0_cm4_q <= "00010100";
                WHEN "00101" => u0_m0_wo0_cm4_q <= "00010110";
                WHEN "00110" => u0_m0_wo0_cm4_q <= "00011001";
                WHEN "00111" => u0_m0_wo0_cm4_q <= "00011011";
                WHEN "01000" => u0_m0_wo0_cm4_q <= "00011110";
                WHEN "01001" => u0_m0_wo0_cm4_q <= "00100001";
                WHEN "01010" => u0_m0_wo0_cm4_q <= "00100100";
                WHEN "01011" => u0_m0_wo0_cm4_q <= "00100111";
                WHEN "01100" => u0_m0_wo0_cm4_q <= "00101011";
                WHEN "01101" => u0_m0_wo0_cm4_q <= "00101110";
                WHEN "01110" => u0_m0_wo0_cm4_q <= "00110010";
                WHEN "01111" => u0_m0_wo0_cm4_q <= "00110110";
                WHEN "10000" => u0_m0_wo0_cm4_q <= "00111010";
                WHEN "10001" => u0_m0_wo0_cm4_q <= "00111110";
                WHEN "10010" => u0_m0_wo0_cm4_q <= "01000010";
                WHEN "10011" => u0_m0_wo0_cm4_q <= "01000110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm4_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_cm3(LOOKUP,32)@12
    u0_m0_wo0_cm3: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm3_q <= "01111110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca5_q) IS
                WHEN "00000" => u0_m0_wo0_cm3_q <= "01111110";
                WHEN "00001" => u0_m0_wo0_cm3_q <= "01111110";
                WHEN "00010" => u0_m0_wo0_cm3_q <= "01001110";
                WHEN "00011" => u0_m0_wo0_cm3_q <= "01010010";
                WHEN "00100" => u0_m0_wo0_cm3_q <= "01010110";
                WHEN "00101" => u0_m0_wo0_cm3_q <= "01011001";
                WHEN "00110" => u0_m0_wo0_cm3_q <= "01011101";
                WHEN "00111" => u0_m0_wo0_cm3_q <= "01100001";
                WHEN "01000" => u0_m0_wo0_cm3_q <= "01100100";
                WHEN "01001" => u0_m0_wo0_cm3_q <= "01101000";
                WHEN "01010" => u0_m0_wo0_cm3_q <= "01101011";
                WHEN "01011" => u0_m0_wo0_cm3_q <= "01101110";
                WHEN "01100" => u0_m0_wo0_cm3_q <= "01110001";
                WHEN "01101" => u0_m0_wo0_cm3_q <= "01110100";
                WHEN "01110" => u0_m0_wo0_cm3_q <= "01110110";
                WHEN "01111" => u0_m0_wo0_cm3_q <= "01111000";
                WHEN "10000" => u0_m0_wo0_cm3_q <= "01111010";
                WHEN "10001" => u0_m0_wo0_cm3_q <= "01111011";
                WHEN "10010" => u0_m0_wo0_cm3_q <= "01111101";
                WHEN "10011" => u0_m0_wo0_cm3_q <= "01111110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm3_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr3_notEnable(LOGICAL,69)@13
    u0_m0_wo0_wi0_r0_delayr3_notEnable_a <= d_u0_m0_wo0_compute_q_13_q;
    u0_m0_wo0_wi0_r0_delayr3_notEnable_q <= not (u0_m0_wo0_wi0_r0_delayr3_notEnable_a);

    -- u0_m0_wo0_wi0_r0_delayr3_nor(LOGICAL,70)@13
    u0_m0_wo0_wi0_r0_delayr3_nor_a <= u0_m0_wo0_wi0_r0_delayr3_notEnable_q;
    u0_m0_wo0_wi0_r0_delayr3_nor_b <= u0_m0_wo0_wi0_r0_delayr3_sticky_ena_q;
    u0_m0_wo0_wi0_r0_delayr3_nor_q <= not (u0_m0_wo0_wi0_r0_delayr3_nor_a or u0_m0_wo0_wi0_r0_delayr3_nor_b);

    -- u0_m0_wo0_wi0_r0_delayr3_mem_top(CONSTANT,66)
    u0_m0_wo0_wi0_r0_delayr3_mem_top_q <= "010001";

    -- u0_m0_wo0_wi0_r0_delayr3_cmp(LOGICAL,67)@13
    u0_m0_wo0_wi0_r0_delayr3_cmp_a <= u0_m0_wo0_wi0_r0_delayr3_mem_top_q;
    u0_m0_wo0_wi0_r0_delayr3_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_delayr3_rdmux_q);
    u0_m0_wo0_wi0_r0_delayr3_cmp_q <= "1" WHEN u0_m0_wo0_wi0_r0_delayr3_cmp_a = u0_m0_wo0_wi0_r0_delayr3_cmp_b ELSE "0";

    -- u0_m0_wo0_wi0_r0_delayr3_cmpReg(REG,68)@13
    u0_m0_wo0_wi0_r0_delayr3_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr3_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_delayr3_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr3_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr3_sticky_ena(REG,71)@13
    u0_m0_wo0_wi0_r0_delayr3_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr3_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi0_r0_delayr3_nor_q = "1") THEN
                u0_m0_wo0_wi0_r0_delayr3_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr3_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr3_enaAnd(LOGICAL,72)@13
    u0_m0_wo0_wi0_r0_delayr3_enaAnd_a <= u0_m0_wo0_wi0_r0_delayr3_sticky_ena_q;
    u0_m0_wo0_wi0_r0_delayr3_enaAnd_b <= d_u0_m0_wo0_compute_q_13_q;
    u0_m0_wo0_wi0_r0_delayr3_enaAnd_q <= u0_m0_wo0_wi0_r0_delayr3_enaAnd_a and u0_m0_wo0_wi0_r0_delayr3_enaAnd_b;

    -- u0_m0_wo0_wi0_r0_delayr3_rdcnt(COUNTER,63)@13
    -- every=1, low=0, high=17, step=1, init=1
    u0_m0_wo0_wi0_r0_delayr3_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr3_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi0_r0_delayr3_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_13_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_delayr3_rdcnt_i = TO_UNSIGNED(16, 5)) THEN
                    u0_m0_wo0_wi0_r0_delayr3_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_delayr3_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_delayr3_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_delayr3_rdcnt_i <= u0_m0_wo0_wi0_r0_delayr3_rdcnt_i - 17;
                ELSE
                    u0_m0_wo0_wi0_r0_delayr3_rdcnt_i <= u0_m0_wo0_wi0_r0_delayr3_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_delayr3_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_delayr3_rdcnt_i, 5)));

    -- u0_m0_wo0_wi0_r0_delayr3_rdmux(MUX,64)@13
    u0_m0_wo0_wi0_r0_delayr3_rdmux_s <= d_u0_m0_wo0_compute_q_13_q;
    u0_m0_wo0_wi0_r0_delayr3_rdmux: PROCESS (u0_m0_wo0_wi0_r0_delayr3_rdmux_s, u0_m0_wo0_wi0_r0_delayr3_wraddr_q, u0_m0_wo0_wi0_r0_delayr3_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi0_r0_delayr3_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi0_r0_delayr3_rdmux_q <= u0_m0_wo0_wi0_r0_delayr3_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi0_r0_delayr3_rdmux_q <= u0_m0_wo0_wi0_r0_delayr3_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi0_r0_delayr3_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_join3(BITJOIN,24)@13
    u0_m0_wo0_wi0_r0_join3_q <= u0_m0_wo0_wi0_r0_split3_b & u0_m0_wo0_wi0_r0_split1_c;

    -- u0_m0_wo0_wi0_r0_delayr3_wraddr(REG,65)@13
    u0_m0_wo0_wi0_r0_delayr3_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr3_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_delayr3_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr3_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr3_mem(DUALMEM,62)@13
    u0_m0_wo0_wi0_r0_delayr3_mem_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join3_q);
    u0_m0_wo0_wi0_r0_delayr3_mem_aa <= u0_m0_wo0_wi0_r0_delayr3_wraddr_q;
    u0_m0_wo0_wi0_r0_delayr3_mem_ab <= u0_m0_wo0_wi0_r0_delayr3_rdmux_q;
    u0_m0_wo0_wi0_r0_delayr3_mem_reset0 <= areset;
    u0_m0_wo0_wi0_r0_delayr3_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 48,
        widthad_a => 5,
        numwords_a => 18,
        width_b => 48,
        widthad_b => 5,
        numwords_b => 18,
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
        clocken1 => u0_m0_wo0_wi0_r0_delayr3_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi0_r0_delayr3_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi0_r0_delayr3_mem_aa,
        data_a => u0_m0_wo0_wi0_r0_delayr3_mem_ia,
        wren_a => d_u0_m0_wo0_compute_q_13_q(0),
        address_b => u0_m0_wo0_wi0_r0_delayr3_mem_ab,
        q_b => u0_m0_wo0_wi0_r0_delayr3_mem_iq
    );
    u0_m0_wo0_wi0_r0_delayr3_mem_q <= u0_m0_wo0_wi0_r0_delayr3_mem_iq(47 downto 0);

    -- u0_m0_wo0_wi0_r0_split3(BITSELECT,25)@13
    u0_m0_wo0_wi0_r0_split3_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr3_mem_q);
    u0_m0_wo0_wi0_r0_split3_b <= u0_m0_wo0_wi0_r0_split3_in(23 downto 0);
    u0_m0_wo0_wi0_r0_split3_c <= u0_m0_wo0_wi0_r0_split3_in(47 downto 24);

    -- u0_m0_wo0_cm2(LOOKUP,31)@12
    u0_m0_wo0_cm2: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm2_q <= "01010110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca5_q) IS
                WHEN "00000" => u0_m0_wo0_cm2_q <= "01010110";
                WHEN "00001" => u0_m0_wo0_cm2_q <= "01010010";
                WHEN "00010" => u0_m0_wo0_cm2_q <= "01001110";
                WHEN "00011" => u0_m0_wo0_cm2_q <= "01111110";
                WHEN "00100" => u0_m0_wo0_cm2_q <= "01111110";
                WHEN "00101" => u0_m0_wo0_cm2_q <= "01111110";
                WHEN "00110" => u0_m0_wo0_cm2_q <= "01111101";
                WHEN "00111" => u0_m0_wo0_cm2_q <= "01111011";
                WHEN "01000" => u0_m0_wo0_cm2_q <= "01111010";
                WHEN "01001" => u0_m0_wo0_cm2_q <= "01111000";
                WHEN "01010" => u0_m0_wo0_cm2_q <= "01110110";
                WHEN "01011" => u0_m0_wo0_cm2_q <= "01110100";
                WHEN "01100" => u0_m0_wo0_cm2_q <= "01110001";
                WHEN "01101" => u0_m0_wo0_cm2_q <= "01101110";
                WHEN "01110" => u0_m0_wo0_cm2_q <= "01101011";
                WHEN "01111" => u0_m0_wo0_cm2_q <= "01101000";
                WHEN "10000" => u0_m0_wo0_cm2_q <= "01100100";
                WHEN "10001" => u0_m0_wo0_cm2_q <= "01100001";
                WHEN "10010" => u0_m0_wo0_cm2_q <= "01011101";
                WHEN "10011" => u0_m0_wo0_cm2_q <= "01011001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm2_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_cm1(LOOKUP,30)@12
    u0_m0_wo0_cm1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm1_q <= "00010100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca5_q) IS
                WHEN "00000" => u0_m0_wo0_cm1_q <= "00010100";
                WHEN "00001" => u0_m0_wo0_cm1_q <= "00010001";
                WHEN "00010" => u0_m0_wo0_cm1_q <= "00001111";
                WHEN "00011" => u0_m0_wo0_cm1_q <= "00001110";
                WHEN "00100" => u0_m0_wo0_cm1_q <= "01001010";
                WHEN "00101" => u0_m0_wo0_cm1_q <= "01000110";
                WHEN "00110" => u0_m0_wo0_cm1_q <= "01000010";
                WHEN "00111" => u0_m0_wo0_cm1_q <= "00111110";
                WHEN "01000" => u0_m0_wo0_cm1_q <= "00111010";
                WHEN "01001" => u0_m0_wo0_cm1_q <= "00110110";
                WHEN "01010" => u0_m0_wo0_cm1_q <= "00110010";
                WHEN "01011" => u0_m0_wo0_cm1_q <= "00101110";
                WHEN "01100" => u0_m0_wo0_cm1_q <= "00101011";
                WHEN "01101" => u0_m0_wo0_cm1_q <= "00100111";
                WHEN "01110" => u0_m0_wo0_cm1_q <= "00100100";
                WHEN "01111" => u0_m0_wo0_cm1_q <= "00100001";
                WHEN "10000" => u0_m0_wo0_cm1_q <= "00011110";
                WHEN "10001" => u0_m0_wo0_cm1_q <= "00011011";
                WHEN "10010" => u0_m0_wo0_cm1_q <= "00011001";
                WHEN "10011" => u0_m0_wo0_cm1_q <= "00010110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm1_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr1_notEnable(LOGICAL,58)@13
    u0_m0_wo0_wi0_r0_delayr1_notEnable_a <= d_u0_m0_wo0_compute_q_13_q;
    u0_m0_wo0_wi0_r0_delayr1_notEnable_q <= not (u0_m0_wo0_wi0_r0_delayr1_notEnable_a);

    -- u0_m0_wo0_wi0_r0_delayr1_nor(LOGICAL,59)@13
    u0_m0_wo0_wi0_r0_delayr1_nor_a <= u0_m0_wo0_wi0_r0_delayr1_notEnable_q;
    u0_m0_wo0_wi0_r0_delayr1_nor_b <= u0_m0_wo0_wi0_r0_delayr1_sticky_ena_q;
    u0_m0_wo0_wi0_r0_delayr1_nor_q <= not (u0_m0_wo0_wi0_r0_delayr1_nor_a or u0_m0_wo0_wi0_r0_delayr1_nor_b);

    -- u0_m0_wo0_wi0_r0_delayr1_mem_top(CONSTANT,55)
    u0_m0_wo0_wi0_r0_delayr1_mem_top_q <= "010001";

    -- u0_m0_wo0_wi0_r0_delayr1_cmp(LOGICAL,56)@13
    u0_m0_wo0_wi0_r0_delayr1_cmp_a <= u0_m0_wo0_wi0_r0_delayr1_mem_top_q;
    u0_m0_wo0_wi0_r0_delayr1_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_delayr1_rdmux_q);
    u0_m0_wo0_wi0_r0_delayr1_cmp_q <= "1" WHEN u0_m0_wo0_wi0_r0_delayr1_cmp_a = u0_m0_wo0_wi0_r0_delayr1_cmp_b ELSE "0";

    -- u0_m0_wo0_wi0_r0_delayr1_cmpReg(REG,57)@13
    u0_m0_wo0_wi0_r0_delayr1_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr1_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_delayr1_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr1_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr1_sticky_ena(REG,60)@13
    u0_m0_wo0_wi0_r0_delayr1_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr1_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi0_r0_delayr1_nor_q = "1") THEN
                u0_m0_wo0_wi0_r0_delayr1_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr1_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr1_enaAnd(LOGICAL,61)@13
    u0_m0_wo0_wi0_r0_delayr1_enaAnd_a <= u0_m0_wo0_wi0_r0_delayr1_sticky_ena_q;
    u0_m0_wo0_wi0_r0_delayr1_enaAnd_b <= d_u0_m0_wo0_compute_q_13_q;
    u0_m0_wo0_wi0_r0_delayr1_enaAnd_q <= u0_m0_wo0_wi0_r0_delayr1_enaAnd_a and u0_m0_wo0_wi0_r0_delayr1_enaAnd_b;

    -- u0_m0_wo0_wi0_r0_delayr1_rdcnt(COUNTER,52)@13
    -- every=1, low=0, high=17, step=1, init=1
    u0_m0_wo0_wi0_r0_delayr1_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr1_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi0_r0_delayr1_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_13_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_delayr1_rdcnt_i = TO_UNSIGNED(16, 5)) THEN
                    u0_m0_wo0_wi0_r0_delayr1_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_delayr1_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_delayr1_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_delayr1_rdcnt_i <= u0_m0_wo0_wi0_r0_delayr1_rdcnt_i - 17;
                ELSE
                    u0_m0_wo0_wi0_r0_delayr1_rdcnt_i <= u0_m0_wo0_wi0_r0_delayr1_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_delayr1_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_delayr1_rdcnt_i, 5)));

    -- u0_m0_wo0_wi0_r0_delayr1_rdmux(MUX,53)@13
    u0_m0_wo0_wi0_r0_delayr1_rdmux_s <= d_u0_m0_wo0_compute_q_13_q;
    u0_m0_wo0_wi0_r0_delayr1_rdmux: PROCESS (u0_m0_wo0_wi0_r0_delayr1_rdmux_s, u0_m0_wo0_wi0_r0_delayr1_wraddr_q, u0_m0_wo0_wi0_r0_delayr1_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi0_r0_delayr1_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi0_r0_delayr1_rdmux_q <= u0_m0_wo0_wi0_r0_delayr1_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi0_r0_delayr1_rdmux_q <= u0_m0_wo0_wi0_r0_delayr1_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi0_r0_delayr1_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_join1(BITJOIN,21)@13
    u0_m0_wo0_wi0_r0_join1_q <= u0_m0_wo0_wi0_r0_split1_b & u0_m0_wo0_wi0_r0_memr0_q;

    -- u0_m0_wo0_wi0_r0_delayr1_wraddr(REG,54)@13
    u0_m0_wo0_wi0_r0_delayr1_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr1_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_delayr1_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr1_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr1_mem(DUALMEM,51)@13
    u0_m0_wo0_wi0_r0_delayr1_mem_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join1_q);
    u0_m0_wo0_wi0_r0_delayr1_mem_aa <= u0_m0_wo0_wi0_r0_delayr1_wraddr_q;
    u0_m0_wo0_wi0_r0_delayr1_mem_ab <= u0_m0_wo0_wi0_r0_delayr1_rdmux_q;
    u0_m0_wo0_wi0_r0_delayr1_mem_reset0 <= areset;
    u0_m0_wo0_wi0_r0_delayr1_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 48,
        widthad_a => 5,
        numwords_a => 18,
        width_b => 48,
        widthad_b => 5,
        numwords_b => 18,
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
        clocken1 => u0_m0_wo0_wi0_r0_delayr1_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi0_r0_delayr1_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi0_r0_delayr1_mem_aa,
        data_a => u0_m0_wo0_wi0_r0_delayr1_mem_ia,
        wren_a => d_u0_m0_wo0_compute_q_13_q(0),
        address_b => u0_m0_wo0_wi0_r0_delayr1_mem_ab,
        q_b => u0_m0_wo0_wi0_r0_delayr1_mem_iq
    );
    u0_m0_wo0_wi0_r0_delayr1_mem_q <= u0_m0_wo0_wi0_r0_delayr1_mem_iq(47 downto 0);

    -- u0_m0_wo0_wi0_r0_split1(BITSELECT,22)@13
    u0_m0_wo0_wi0_r0_split1_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr1_mem_q);
    u0_m0_wo0_wi0_r0_split1_b <= u0_m0_wo0_wi0_r0_split1_in(23 downto 0);
    u0_m0_wo0_wi0_r0_split1_c <= u0_m0_wo0_wi0_r0_split1_in(47 downto 24);

    -- u0_m0_wo0_cm0(LOOKUP,29)@12
    u0_m0_wo0_cm0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm0_q <= "00000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca5_q) IS
                WHEN "00000" => u0_m0_wo0_cm0_q <= "00000000";
                WHEN "00001" => u0_m0_wo0_cm0_q <= "00000000";
                WHEN "00010" => u0_m0_wo0_cm0_q <= "00000000";
                WHEN "00011" => u0_m0_wo0_cm0_q <= "00000000";
                WHEN "00100" => u0_m0_wo0_cm0_q <= "00000000";
                WHEN "00101" => u0_m0_wo0_cm0_q <= "00001100";
                WHEN "00110" => u0_m0_wo0_cm0_q <= "00001010";
                WHEN "00111" => u0_m0_wo0_cm0_q <= "00001001";
                WHEN "01000" => u0_m0_wo0_cm0_q <= "00000111";
                WHEN "01001" => u0_m0_wo0_cm0_q <= "00000110";
                WHEN "01010" => u0_m0_wo0_cm0_q <= "00000101";
                WHEN "01011" => u0_m0_wo0_cm0_q <= "00000100";
                WHEN "01100" => u0_m0_wo0_cm0_q <= "00000100";
                WHEN "01101" => u0_m0_wo0_cm0_q <= "00000011";
                WHEN "01110" => u0_m0_wo0_cm0_q <= "00000010";
                WHEN "01111" => u0_m0_wo0_cm0_q <= "00000010";
                WHEN "10000" => u0_m0_wo0_cm0_q <= "00000001";
                WHEN "10001" => u0_m0_wo0_cm0_q <= "00000001";
                WHEN "10010" => u0_m0_wo0_cm0_q <= "00000001";
                WHEN "10011" => u0_m0_wo0_cm0_q <= "00000000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm0_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count1(COUNTER,14)@12
    -- every=1, low=0, high=19, step=1, init=1
    u0_m0_wo0_wi0_r0_ra0_count1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count1_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi0_r0_ra0_count1_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count1_i = TO_UNSIGNED(18, 5)) THEN
                    u0_m0_wo0_wi0_r0_ra0_count1_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count1_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_ra0_count1_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_ra0_count1_i <= u0_m0_wo0_wi0_r0_ra0_count1_i - 19;
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count1_i <= u0_m0_wo0_wi0_r0_ra0_count1_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count1_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count1_i, 5)));

    -- u0_m0_wo0_wi0_r0_ra0_count1_lut(LOOKUP,15)@12
    u0_m0_wo0_wi0_r0_ra0_count1_lut: PROCESS (u0_m0_wo0_wi0_r0_ra0_count1_q)
    BEGIN
        -- Begin reserved scope level
        CASE (u0_m0_wo0_wi0_r0_ra0_count1_q) IS
            WHEN "00000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001001";
            WHEN "00001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001010";
            WHEN "00010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001011";
            WHEN "00011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001100";
            WHEN "00100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001101";
            WHEN "00101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001110";
            WHEN "00110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001111";
            WHEN "00111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010000";
            WHEN "01000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010001";
            WHEN "01001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010010";
            WHEN "01010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010011";
            WHEN "01011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010100";
            WHEN "01100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010101";
            WHEN "01101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010110";
            WHEN "01110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010111";
            WHEN "01111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "011000";
            WHEN "10000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "011001";
            WHEN "10001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "011010";
            WHEN "10010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "011011";
            WHEN "10011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "011100";
            WHEN OTHERS => -- unreachable
                           u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count1_lutreg(REG,16)@12
    u0_m0_wo0_wi0_r0_ra0_count1_lutreg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q <= "001001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count1_lut_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count0(COUNTER,13)@12
    -- every=20, low=0, high=31, step=-12, init=0
    u0_m0_wo0_wi0_r0_ra0_count0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_i <= TO_UNSIGNED(0, 5);
            u0_m0_wo0_wi0_r0_ra0_count0_sc <= TO_SIGNED(18, 6);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count0_sc(5) = '1') THEN
                    u0_m0_wo0_wi0_r0_ra0_count0_sc <= u0_m0_wo0_wi0_r0_ra0_count0_sc - (-19);
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count0_sc <= u0_m0_wo0_wi0_r0_ra0_count0_sc + (-1);
                END IF;
                IF (u0_m0_wo0_wi0_r0_ra0_count0_sc(5) = '1') THEN
                    u0_m0_wo0_wi0_r0_ra0_count0_i <= u0_m0_wo0_wi0_r0_ra0_count0_i - 12;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_i, 6)));

    -- u0_m0_wo0_wi0_r0_ra0_add_0_0(ADD,17)@12
    u0_m0_wo0_wi0_r0_ra0_add_0_0_a <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra0_count0_q);
    u0_m0_wo0_wi0_r0_ra0_add_0_0_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q);
    u0_m0_wo0_wi0_r0_ra0_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_r0_ra0_add_0_0_a) + UNSIGNED(u0_m0_wo0_wi0_r0_ra0_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_add_0_0_q <= u0_m0_wo0_wi0_r0_ra0_add_0_0_o(6 downto 0);

    -- u0_m0_wo0_wi0_r0_ra0_resize(BITSELECT,18)@13
    u0_m0_wo0_wi0_r0_ra0_resize_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_add_0_0_q(4 downto 0));
    u0_m0_wo0_wi0_r0_ra0_resize_b <= u0_m0_wo0_wi0_r0_ra0_resize_in(4 downto 0);

    -- d_xIn_0_13_notEnable(LOGICAL,88)@10
    d_xIn_0_13_notEnable_a <= VCC_q;
    d_xIn_0_13_notEnable_q <= not (d_xIn_0_13_notEnable_a);

    -- d_xIn_0_13_nor(LOGICAL,89)@10
    d_xIn_0_13_nor_a <= d_xIn_0_13_notEnable_q;
    d_xIn_0_13_nor_b <= d_xIn_0_13_sticky_ena_q;
    d_xIn_0_13_nor_q <= not (d_xIn_0_13_nor_a or d_xIn_0_13_nor_b);

    -- d_xIn_0_13_cmpReg(REG,87)@10
    d_xIn_0_13_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- d_xIn_0_13_sticky_ena(REG,90)@10
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

    -- d_xIn_0_13_enaAnd(LOGICAL,91)@10
    d_xIn_0_13_enaAnd_a <= d_xIn_0_13_sticky_ena_q;
    d_xIn_0_13_enaAnd_b <= VCC_q;
    d_xIn_0_13_enaAnd_q <= d_xIn_0_13_enaAnd_a and d_xIn_0_13_enaAnd_b;

    -- d_xIn_0_13_rdcnt(COUNTER,85)@10
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

    -- d_xIn_0_13_wraddr(REG,86)@10
    d_xIn_0_13_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_wraddr_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_wraddr_q <= STD_LOGIC_VECTOR(d_xIn_0_13_rdcnt_q);
        END IF;
    END PROCESS;

    -- d_xIn_0_13_mem(DUALMEM,84)@10
    d_xIn_0_13_mem_ia <= STD_LOGIC_VECTOR(xIn_0);
    d_xIn_0_13_mem_aa <= d_xIn_0_13_wraddr_q;
    d_xIn_0_13_mem_ab <= d_xIn_0_13_rdcnt_q;
    d_xIn_0_13_mem_reset0 <= areset;
    d_xIn_0_13_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 24,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 24,
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
    d_xIn_0_13_mem_q <= d_xIn_0_13_mem_iq(23 downto 0);

    -- d_in0_m0_wi0_wo0_assign_id1_q_13(DELAY,47)@10
    d_in0_m0_wi0_wo0_assign_id1_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_id1_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_wa0(COUNTER,19)@13
    -- every=1, low=0, high=31, step=1, init=28
    u0_m0_wo0_wi0_r0_wa0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa0_i <= TO_UNSIGNED(28, 5);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa0_i, 5)));

    -- u0_m0_wo0_wi0_r0_memr0(DUALMEM,20)@13
    u0_m0_wo0_wi0_r0_memr0_ia <= STD_LOGIC_VECTOR(d_xIn_0_13_mem_q);
    u0_m0_wo0_wi0_r0_memr0_aa <= u0_m0_wo0_wi0_r0_wa0_q;
    u0_m0_wo0_wi0_r0_memr0_ab <= u0_m0_wo0_wi0_r0_ra0_resize_b;
    u0_m0_wo0_wi0_r0_memr0_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 24,
        widthad_a => 5,
        numwords_a => 32,
        width_b => 24,
        widthad_b => 5,
        numwords_b => 32,
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
    u0_m0_wo0_wi0_r0_memr0_q <= u0_m0_wo0_wi0_r0_memr0_iq(23 downto 0);

    -- u0_m0_wo0_aseq(SEQUENCE,36)@12
    u0_m0_wo0_aseq: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : SIGNED(6 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "0000000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "0000000") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 19;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_aseq_c(6 downto 6));
            END IF;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_compute_q_14(DELAY,50)@13
    d_u0_m0_wo0_compute_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_13_q, xout => d_u0_m0_wo0_compute_q_14_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_13(DELAY,49)@12
    d_u0_m0_wo0_compute_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cma0(CHAINMULTADD,35)@13
    u0_m0_wo0_cma0_p(0) <= u0_m0_wo0_cma0_a0(0) * u0_m0_wo0_cma0_c0(0);
    u0_m0_wo0_cma0_p(1) <= u0_m0_wo0_cma0_a0(1) * u0_m0_wo0_cma0_c0(1);
    u0_m0_wo0_cma0_p(2) <= u0_m0_wo0_cma0_a0(2) * u0_m0_wo0_cma0_c0(2);
    u0_m0_wo0_cma0_p(3) <= u0_m0_wo0_cma0_a0(3) * u0_m0_wo0_cma0_c0(3);
    u0_m0_wo0_cma0_p(4) <= u0_m0_wo0_cma0_a0(4) * u0_m0_wo0_cma0_c0(4);
    u0_m0_wo0_cma0_p(5) <= u0_m0_wo0_cma0_a0(5) * u0_m0_wo0_cma0_c0(5);
    u0_m0_wo0_cma0_u(0) <= RESIZE(u0_m0_wo0_cma0_p(0),64);
    u0_m0_wo0_cma0_u(1) <= RESIZE(u0_m0_wo0_cma0_p(1),64);
    u0_m0_wo0_cma0_u(2) <= RESIZE(u0_m0_wo0_cma0_p(2),64);
    u0_m0_wo0_cma0_u(3) <= RESIZE(u0_m0_wo0_cma0_p(3),64);
    u0_m0_wo0_cma0_u(4) <= RESIZE(u0_m0_wo0_cma0_p(4),64);
    u0_m0_wo0_cma0_u(5) <= RESIZE(u0_m0_wo0_cma0_p(5),64);
    u0_m0_wo0_cma0_w(0) <= u0_m0_wo0_cma0_u(0);
    u0_m0_wo0_cma0_w(1) <= u0_m0_wo0_cma0_u(1);
    u0_m0_wo0_cma0_w(2) <= u0_m0_wo0_cma0_u(2);
    u0_m0_wo0_cma0_w(3) <= u0_m0_wo0_cma0_u(3);
    u0_m0_wo0_cma0_w(4) <= u0_m0_wo0_cma0_u(4);
    u0_m0_wo0_cma0_w(5) <= u0_m0_wo0_cma0_u(5);
    u0_m0_wo0_cma0_x(0) <= u0_m0_wo0_cma0_w(0);
    u0_m0_wo0_cma0_x(1) <= u0_m0_wo0_cma0_w(1);
    u0_m0_wo0_cma0_x(2) <= u0_m0_wo0_cma0_w(2);
    u0_m0_wo0_cma0_x(3) <= u0_m0_wo0_cma0_w(3);
    u0_m0_wo0_cma0_x(4) <= u0_m0_wo0_cma0_w(4);
    u0_m0_wo0_cma0_x(5) <= u0_m0_wo0_cma0_w(5);
    u0_m0_wo0_cma0_y(0) <= u0_m0_wo0_cma0_s(1) + u0_m0_wo0_cma0_x(0);
    u0_m0_wo0_cma0_y(1) <= u0_m0_wo0_cma0_s(2) + u0_m0_wo0_cma0_x(1);
    u0_m0_wo0_cma0_y(2) <= u0_m0_wo0_cma0_s(3) + u0_m0_wo0_cma0_x(2);
    u0_m0_wo0_cma0_y(3) <= u0_m0_wo0_cma0_s(4) + u0_m0_wo0_cma0_x(3);
    u0_m0_wo0_cma0_y(4) <= u0_m0_wo0_cma0_s(5) + u0_m0_wo0_cma0_x(4);
    u0_m0_wo0_cma0_y(5) <= u0_m0_wo0_cma0_x(5);
    u0_m0_wo0_cma0_z(0) <= u0_m0_wo0_cma0_s(0) WHEN u0_m0_wo0_cma0_anl(0) = '1' ELSE "0000000000000000000000000000000000000000000000000000000000000000";
    u0_m0_wo0_cma0_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma0_a0 <= (others => (others => '0'));
            u0_m0_wo0_cma0_c0 <= (others => (others => '0'));
            u0_m0_wo0_cma0_anl <= (others => '0');
            u0_m0_wo0_cma0_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_13_q = "1") THEN
                u0_m0_wo0_cma0_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_memr0_q),24);
                u0_m0_wo0_cma0_a0(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split1_b),24);
                u0_m0_wo0_cma0_a0(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split1_c),24);
                u0_m0_wo0_cma0_a0(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split3_b),24);
                u0_m0_wo0_cma0_a0(4) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_split3_c),24);
                u0_m0_wo0_cma0_a0(5) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_delayr5_mem_q),24);
                u0_m0_wo0_cma0_c0(0) <= RESIZE(SIGNED(u0_m0_wo0_cm0_q),11);
                u0_m0_wo0_cma0_c0(1) <= RESIZE(SIGNED(u0_m0_wo0_cm1_q),11);
                u0_m0_wo0_cma0_c0(2) <= RESIZE(SIGNED(u0_m0_wo0_cm2_q),11);
                u0_m0_wo0_cma0_c0(3) <= RESIZE(SIGNED(u0_m0_wo0_cm3_q),11);
                u0_m0_wo0_cma0_c0(4) <= RESIZE(SIGNED(u0_m0_wo0_cm4_q),11);
                u0_m0_wo0_cma0_c0(5) <= RESIZE(SIGNED(u0_m0_wo0_cm5_q),11);
                u0_m0_wo0_cma0_anl(0) <= not(u0_m0_wo0_aseq_q(0));
            END IF;
            IF (d_u0_m0_wo0_compute_q_14_q = "1") THEN
                u0_m0_wo0_cma0_s(0) <= u0_m0_wo0_cma0_z(0) + u0_m0_wo0_cma0_y(0);
                u0_m0_wo0_cma0_s(1) <= u0_m0_wo0_cma0_y(1);
                u0_m0_wo0_cma0_s(2) <= u0_m0_wo0_cma0_y(2);
                u0_m0_wo0_cma0_s(3) <= u0_m0_wo0_cma0_y(3);
                u0_m0_wo0_cma0_s(4) <= u0_m0_wo0_cma0_y(4);
                u0_m0_wo0_cma0_s(5) <= u0_m0_wo0_cma0_y(5);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma0_delay : dspba_delay
    GENERIC MAP ( width => 39, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma0_s(0)(38 downto 0)), xout => u0_m0_wo0_cma0_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma0_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma0_qq(38 downto 0));

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_oseq(SEQUENCE,38)@13
    u0_m0_wo0_oseq: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(6 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "0010011";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_13_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "0000000") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 19;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_c(6 downto 6));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_oseq_gated(LOGICAL,39)@14
    u0_m0_wo0_oseq_gated_a <= u0_m0_wo0_oseq_q;
    u0_m0_wo0_oseq_gated_b <= d_u0_m0_wo0_compute_q_14_q;
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_gated_a and u0_m0_wo0_oseq_gated_b;

    -- u0_m0_wo0_oseq_gated_reg(REG,40)@14
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- out0_m0_wo0_lineup_select_delay_0(DELAY,42)@15
    out0_m0_wo0_lineup_select_delay_0_q <= u0_m0_wo0_oseq_gated_reg_q;

    -- out0_m0_wo0_assign_id3(DELAY,44)@15
    out0_m0_wo0_assign_id3_q <= out0_m0_wo0_lineup_select_delay_0_q;

    -- xOut(PORTOUT,45)@15
    xOut_v <= out0_m0_wo0_assign_id3_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_cma0_q;

END normal;
