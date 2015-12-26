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

-- VHDL created from channelizer_fir_rtl
-- VHDL created on Sat Dec 26 16:17:07 2015


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

entity channelizer_fir_rtl is
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
        xOut_0 : out std_logic_vector(25 downto 0);  -- sfix26
        clk : in std_logic;
        areset : in std_logic
    );
end channelizer_fir_rtl;

architecture normal of channelizer_fir_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_19_12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_xIn_18_12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_xIn_17_12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_xIn_16_12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal d_in0_m0_wi0_wo0_assign_id1_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
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
        0 => TO_SIGNED(19,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k1 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(51,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k2 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(87,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k3 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(116,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k4 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(127,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k5 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(115,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k6 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(85,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k7 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(49,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k8 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(49,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k9 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(85,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k10 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(115,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k11 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(127,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k12 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(116,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k13 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(87,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k14 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(51,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k15 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(19,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k16 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(47,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k17 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(84,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k18 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(114,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k19 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k20 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(117,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k21 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(89,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k22 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(53,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k23 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(21,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k24 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(46,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k25 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(82,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k26 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(113,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k27 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k28 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(118,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k29 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(91,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k30 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(55,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k31 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(22,11),
        others => (others => '0'));
    type u0_m0_wo0_cma0_s_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma0_s : u0_m0_wo0_cma0_s_type;
    signal u0_m0_wo0_cma0_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_cma0_q : STD_LOGIC_VECTOR (25 downto 0);
    type u0_m0_wo0_cma1_a_type is array(0 to 31) of SIGNED(9 downto 0);
    signal u0_m0_wo0_cma1_a0 : u0_m0_wo0_cma1_a_type;
    attribute preserve of u0_m0_wo0_cma1_a0 : signal is true;
    type u0_m0_wo0_cma1_c_type is array(0 to 31) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_cma1_c0 : u0_m0_wo0_cma1_c_type;
    attribute preserve of u0_m0_wo0_cma1_c0 : signal is true;
    type u0_m0_wo0_cma1_r_type is array(0 to 31) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma1_r : u0_m0_wo0_cma1_r_type;
    type u0_m0_wo0_cma1_p_type is array(0 to 31) of SIGNED(20 downto 0);
    signal u0_m0_wo0_cma1_p : u0_m0_wo0_cma1_p_type;
    type u0_m0_wo0_cma1_u_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma1_u : u0_m0_wo0_cma1_u_type;
    type u0_m0_wo0_cma1_w_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma1_w : u0_m0_wo0_cma1_w_type;
    type u0_m0_wo0_cma1_x_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma1_x : u0_m0_wo0_cma1_x_type;
    type u0_m0_wo0_cma1_y_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma1_y : u0_m0_wo0_cma1_y_type;
    type u0_m0_wo0_cma1_romtype is array(0 to 7) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma1_k0 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(44,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k1 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(80,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k2 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(111,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k3 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k4 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(119,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k5 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(92,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k6 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(56,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k7 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(23,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k8 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(42,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k9 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(78,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k10 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(110,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k11 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k12 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(120,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k13 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(94,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k14 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(58,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k15 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(25,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k16 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(41,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k17 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(77,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k18 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(109,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k19 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k20 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(121,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k21 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(96,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k22 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(60,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k23 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(26,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k24 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(39,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k25 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(75,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k26 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(107,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k27 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(125,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k28 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(121,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k29 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(97,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k30 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(62,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k31 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(28,11),
        others => (others => '0'));
    type u0_m0_wo0_cma1_s_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma1_s : u0_m0_wo0_cma1_s_type;
    signal u0_m0_wo0_cma1_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_cma1_q : STD_LOGIC_VECTOR (25 downto 0);
    type u0_m0_wo0_cma2_a_type is array(0 to 31) of SIGNED(9 downto 0);
    signal u0_m0_wo0_cma2_a0 : u0_m0_wo0_cma2_a_type;
    attribute preserve of u0_m0_wo0_cma2_a0 : signal is true;
    type u0_m0_wo0_cma2_c_type is array(0 to 31) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_cma2_c0 : u0_m0_wo0_cma2_c_type;
    attribute preserve of u0_m0_wo0_cma2_c0 : signal is true;
    type u0_m0_wo0_cma2_r_type is array(0 to 31) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma2_r : u0_m0_wo0_cma2_r_type;
    type u0_m0_wo0_cma2_p_type is array(0 to 31) of SIGNED(20 downto 0);
    signal u0_m0_wo0_cma2_p : u0_m0_wo0_cma2_p_type;
    type u0_m0_wo0_cma2_u_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma2_u : u0_m0_wo0_cma2_u_type;
    type u0_m0_wo0_cma2_w_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma2_w : u0_m0_wo0_cma2_w_type;
    type u0_m0_wo0_cma2_x_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma2_x : u0_m0_wo0_cma2_x_type;
    type u0_m0_wo0_cma2_y_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma2_y : u0_m0_wo0_cma2_y_type;
    type u0_m0_wo0_cma2_romtype is array(0 to 7) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma2_k0 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(37,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k1 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(73,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k2 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(106,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k3 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(125,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k4 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(122,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k5 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(99,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k6 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(64,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k7 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(29,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k8 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(36,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k9 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(71,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k10 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(105,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k11 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(124,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k12 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(123,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k13 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(100,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k14 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(66,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k15 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(31,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k16 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(34,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k17 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(69,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k18 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(103,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k19 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(124,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k20 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(123,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k21 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(102,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k22 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(67,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k23 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(32,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k24 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(32,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k25 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(67,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k26 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(102,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k27 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(123,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k28 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(124,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k29 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(103,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k30 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(69,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma2_k31 : u0_m0_wo0_cma2_romtype := (
        0 => TO_SIGNED(34,11),
        others => (others => '0'));
    type u0_m0_wo0_cma2_s_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma2_s : u0_m0_wo0_cma2_s_type;
    signal u0_m0_wo0_cma2_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_cma2_q : STD_LOGIC_VECTOR (25 downto 0);
    type u0_m0_wo0_cma3_a_type is array(0 to 31) of SIGNED(9 downto 0);
    signal u0_m0_wo0_cma3_a0 : u0_m0_wo0_cma3_a_type;
    attribute preserve of u0_m0_wo0_cma3_a0 : signal is true;
    type u0_m0_wo0_cma3_c_type is array(0 to 31) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_cma3_c0 : u0_m0_wo0_cma3_c_type;
    attribute preserve of u0_m0_wo0_cma3_c0 : signal is true;
    type u0_m0_wo0_cma3_r_type is array(0 to 31) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma3_r : u0_m0_wo0_cma3_r_type;
    type u0_m0_wo0_cma3_p_type is array(0 to 31) of SIGNED(20 downto 0);
    signal u0_m0_wo0_cma3_p : u0_m0_wo0_cma3_p_type;
    type u0_m0_wo0_cma3_u_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma3_u : u0_m0_wo0_cma3_u_type;
    type u0_m0_wo0_cma3_w_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma3_w : u0_m0_wo0_cma3_w_type;
    type u0_m0_wo0_cma3_x_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma3_x : u0_m0_wo0_cma3_x_type;
    type u0_m0_wo0_cma3_y_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma3_y : u0_m0_wo0_cma3_y_type;
    type u0_m0_wo0_cma3_romtype is array(0 to 7) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma3_k0 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(31,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k1 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(66,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k2 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(100,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k3 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(123,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k4 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(124,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k5 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(105,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k6 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(71,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k7 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(36,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k8 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(29,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k9 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(64,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k10 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(99,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k11 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(122,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k12 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(125,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k13 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(106,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k14 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(73,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k15 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(37,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k16 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(28,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k17 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(62,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k18 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(97,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k19 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(121,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k20 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(125,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k21 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(107,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k22 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(75,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k23 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(39,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k24 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(26,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k25 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(60,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k26 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(96,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k27 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(121,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k28 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k29 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(109,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k30 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(77,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma3_k31 : u0_m0_wo0_cma3_romtype := (
        0 => TO_SIGNED(41,11),
        others => (others => '0'));
    type u0_m0_wo0_cma3_s_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma3_s : u0_m0_wo0_cma3_s_type;
    signal u0_m0_wo0_cma3_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_cma3_q : STD_LOGIC_VECTOR (25 downto 0);
    type u0_m0_wo0_cma4_a_type is array(0 to 31) of SIGNED(9 downto 0);
    signal u0_m0_wo0_cma4_a0 : u0_m0_wo0_cma4_a_type;
    attribute preserve of u0_m0_wo0_cma4_a0 : signal is true;
    type u0_m0_wo0_cma4_c_type is array(0 to 31) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_cma4_c0 : u0_m0_wo0_cma4_c_type;
    attribute preserve of u0_m0_wo0_cma4_c0 : signal is true;
    type u0_m0_wo0_cma4_r_type is array(0 to 31) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma4_r : u0_m0_wo0_cma4_r_type;
    type u0_m0_wo0_cma4_p_type is array(0 to 31) of SIGNED(20 downto 0);
    signal u0_m0_wo0_cma4_p : u0_m0_wo0_cma4_p_type;
    type u0_m0_wo0_cma4_u_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma4_u : u0_m0_wo0_cma4_u_type;
    type u0_m0_wo0_cma4_w_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma4_w : u0_m0_wo0_cma4_w_type;
    type u0_m0_wo0_cma4_x_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma4_x : u0_m0_wo0_cma4_x_type;
    type u0_m0_wo0_cma4_y_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma4_y : u0_m0_wo0_cma4_y_type;
    type u0_m0_wo0_cma4_romtype is array(0 to 7) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma4_k0 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(25,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k1 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(58,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k2 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(94,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k3 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(120,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k4 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k5 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(110,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k6 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(78,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k7 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(42,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k8 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(23,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k9 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(56,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k10 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(92,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k11 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(119,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k12 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k13 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(111,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k14 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(80,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k15 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(44,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k16 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(22,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k17 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(55,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k18 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(91,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k19 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(118,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k20 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k21 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(113,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k22 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(82,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k23 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(46,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k24 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(21,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k25 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(53,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k26 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(89,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k27 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(117,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k28 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k29 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(114,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k30 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(84,11),
        others => (others => '0'));
    signal u0_m0_wo0_cma4_k31 : u0_m0_wo0_cma4_romtype := (
        0 => TO_SIGNED(47,11),
        others => (others => '0'));
    type u0_m0_wo0_cma4_s_type is array(0 to 31) of SIGNED(25 downto 0);
    signal u0_m0_wo0_cma4_s : u0_m0_wo0_cma4_s_type;
    signal u0_m0_wo0_cma4_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_cma4_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_1_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_1_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_1_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : STD_LOGIC_VECTOR (25 downto 0);
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
    signal u0_m0_wo0_wi1_r0_delayr8_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi1_r0_delayr8_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi1_r0_delayr8_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi1_r0_delayr8_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi1_r0_delayr8_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi1_r0_delayr8_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi1_r0_delayr8_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi2_r0_delayr16_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi2_r0_delayr16_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of u0_m0_wo0_wi2_r0_delayr16_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi2_r0_delayr16_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi2_r0_delayr16_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi2_r0_delayr16_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_mem_top_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi2_r0_delayr16_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi3_r0_delayr24_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi3_r0_delayr24_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of u0_m0_wo0_wi3_r0_delayr24_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi3_r0_delayr24_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi3_r0_delayr24_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi3_r0_delayr24_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_mem_top_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi3_r0_delayr24_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi4_r0_delayr32_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi4_r0_delayr32_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi4_r0_delayr32_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi4_r0_delayr32_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi4_r0_delayr32_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi4_r0_delayr32_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi4_r0_delayr32_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi5_r0_delayr40_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi5_r0_delayr40_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi5_r0_delayr40_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi5_r0_delayr40_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi5_r0_delayr40_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi5_r0_delayr40_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi5_r0_delayr40_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi6_r0_delayr48_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi6_r0_delayr48_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of u0_m0_wo0_wi6_r0_delayr48_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi6_r0_delayr48_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi6_r0_delayr48_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi6_r0_delayr48_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_mem_top_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi6_r0_delayr48_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi7_r0_delayr56_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi7_r0_delayr56_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of u0_m0_wo0_wi7_r0_delayr56_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi7_r0_delayr56_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi7_r0_delayr56_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi7_r0_delayr56_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_mem_top_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi7_r0_delayr56_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi8_r0_delayr64_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi8_r0_delayr64_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi8_r0_delayr64_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi8_r0_delayr64_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi8_r0_delayr64_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi8_r0_delayr64_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi8_r0_delayr64_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi9_r0_delayr72_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi9_r0_delayr72_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi9_r0_delayr72_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi9_r0_delayr72_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi9_r0_delayr72_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi9_r0_delayr72_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi9_r0_delayr72_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi10_r0_delayr80_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi10_r0_delayr80_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of u0_m0_wo0_wi10_r0_delayr80_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi10_r0_delayr80_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi10_r0_delayr80_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi10_r0_delayr80_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_mem_top_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi10_r0_delayr80_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi11_r0_delayr88_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi11_r0_delayr88_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of u0_m0_wo0_wi11_r0_delayr88_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi11_r0_delayr88_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi11_r0_delayr88_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi11_r0_delayr88_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_mem_top_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi11_r0_delayr88_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi12_r0_delayr96_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi12_r0_delayr96_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi12_r0_delayr96_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi12_r0_delayr96_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi12_r0_delayr96_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi12_r0_delayr96_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi12_r0_delayr96_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi13_r0_delayr104_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi13_r0_delayr104_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi13_r0_delayr104_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi13_r0_delayr104_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi13_r0_delayr104_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi13_r0_delayr104_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi13_r0_delayr104_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi14_r0_delayr112_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi14_r0_delayr112_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of u0_m0_wo0_wi14_r0_delayr112_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi14_r0_delayr112_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi14_r0_delayr112_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi14_r0_delayr112_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_mem_top_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi14_r0_delayr112_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi15_r0_delayr120_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi15_r0_delayr120_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of u0_m0_wo0_wi15_r0_delayr120_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi15_r0_delayr120_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi15_r0_delayr120_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi15_r0_delayr120_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_mem_top_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi15_r0_delayr120_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi16_r0_delayr128_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi16_r0_delayr128_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi16_r0_delayr128_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi16_r0_delayr128_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi16_r0_delayr128_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi16_r0_delayr128_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi16_r0_delayr128_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi17_r0_delayr136_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi17_r0_delayr136_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_mem_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_mem_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_rdcnt_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_rdcnt_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi17_r0_delayr136_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi17_r0_delayr136_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi17_r0_delayr136_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi17_r0_delayr136_wraddr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_mem_top_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi17_r0_delayr136_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi18_r0_delayr144_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi18_r0_delayr144_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_mem_aa : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_mem_ab : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_rdcnt_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_rdcnt_i : UNSIGNED (3 downto 0);
    attribute preserve of u0_m0_wo0_wi18_r0_delayr144_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi18_r0_delayr144_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi18_r0_delayr144_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi18_r0_delayr144_wraddr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_mem_top_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi18_r0_delayr144_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi19_r0_delayr152_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi19_r0_delayr152_mem_ia : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_mem_iq : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_mem_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of u0_m0_wo0_wi19_r0_delayr152_rdcnt_i : signal is true;
    signal u0_m0_wo0_wi19_r0_delayr152_rdcnt_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi19_r0_delayr152_rdcnt_eq : signal is true;
    signal u0_m0_wo0_wi19_r0_delayr152_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_mem_top_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute preserve of u0_m0_wo0_wi19_r0_delayr152_sticky_ena_q : signal is true;
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
    signal u0_m0_wo0_wi1_r0_delayr8_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr8_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_rdmux_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_cmp_a : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr16_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_rdmux_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_cmp_a : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr24_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr32_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr40_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_rdmux_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_cmp_a : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr48_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_rdmux_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_cmp_a : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr56_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr64_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr72_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_rdmux_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_cmp_a : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr80_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_rdmux_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_cmp_a : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr88_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr96_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr104_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_rdmux_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_cmp_a : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr112_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_rdmux_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_cmp_a : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr120_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr128_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_rdmux_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_cmp_a : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_cmp_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr136_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_rdmux_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_cmp_a : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_cmp_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr144_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_rdmux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_rdmux_q : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_cmp_a : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_cmp_b : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr152_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
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
    signal out0_m0_wo0_lineup_select_delay_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_phasedelay0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_phasedelay8_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_phasedelay16_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_phasedelay24_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_phasedelay32_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_phasedelay40_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_phasedelay48_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_phasedelay56_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_phasedelay64_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_phasedelay72_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_phasedelay80_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_phasedelay88_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_phasedelay96_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_phasedelay104_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_phasedelay112_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi15_r0_phasedelay120_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_phasedelay128_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_phasedelay136_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_phasedelay144_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_phasedelay152_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr4_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr6_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr7_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr9_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr10_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr11_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr12_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr13_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr14_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi1_r0_delayr15_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr17_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr18_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr19_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr20_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr21_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr22_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi2_r0_delayr23_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr25_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr26_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr27_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr28_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr29_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr30_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi3_r0_delayr31_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr33_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr34_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr35_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr36_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr37_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr38_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi4_r0_delayr39_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr41_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr42_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr43_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr44_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr45_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr46_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi5_r0_delayr47_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr49_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr50_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr51_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr52_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr53_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr54_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi6_r0_delayr55_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr57_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr58_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr59_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr60_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr61_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr62_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi7_r0_delayr63_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr65_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr66_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr67_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr68_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr69_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr70_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi8_r0_delayr71_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr73_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr74_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr75_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr76_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr77_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr78_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi9_r0_delayr79_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr81_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr82_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr83_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr84_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr85_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr86_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi10_r0_delayr87_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr89_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr90_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr91_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr92_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr93_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr94_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi11_r0_delayr95_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr97_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr98_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr99_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr100_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr101_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr102_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi12_r0_delayr103_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr105_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr106_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr107_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr108_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr109_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr110_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi13_r0_delayr111_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr113_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr114_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr115_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr116_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr117_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr118_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi14_r0_delayr119_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr121_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr122_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr123_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr124_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr125_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr126_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi15_r0_delayr127_q : STD_LOGIC_VECTOR (9 downto 0);
    signal out0_m0_wo0_assign_id41_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr129_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr137_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr145_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr153_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr130_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr138_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr146_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr154_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr131_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr139_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr147_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr155_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr132_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr140_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr148_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr156_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr133_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr141_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr149_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr157_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr134_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr142_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr150_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr158_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi16_r0_delayr135_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi17_r0_delayr143_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi18_r0_delayr151_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi19_r0_delayr159_q : STD_LOGIC_VECTOR (9 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- xIn(PORTIN,2)@10

    -- u0_m0_wo0_memread(DELAY,104)@10
    u0_m0_wo0_memread_q <= xIn_v;

    -- d_u0_m0_wo0_memread_q_12(DELAY,3528)@10
    d_u0_m0_wo0_memread_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => d_u0_m0_wo0_memread_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi19_r0_delayr159(DELAY,3345)@12
    u0_m0_wo0_wi19_r0_delayr159_q <= u0_m0_wo0_wi19_r0_delayr158_q;

    -- u0_m0_wo0_wi19_r0_delayr158(DELAY,3344)@12
    u0_m0_wo0_wi19_r0_delayr158_q <= u0_m0_wo0_wi19_r0_delayr157_q;

    -- u0_m0_wo0_wi19_r0_delayr157(DELAY,3343)@12
    u0_m0_wo0_wi19_r0_delayr157_q <= u0_m0_wo0_wi19_r0_delayr156_q;

    -- u0_m0_wo0_wi19_r0_delayr156(DELAY,3342)@12
    u0_m0_wo0_wi19_r0_delayr156_q <= u0_m0_wo0_wi19_r0_delayr155_q;

    -- u0_m0_wo0_wi19_r0_delayr155(DELAY,3341)@12
    u0_m0_wo0_wi19_r0_delayr155_q <= u0_m0_wo0_wi19_r0_delayr154_q;

    -- u0_m0_wo0_wi19_r0_delayr154(DELAY,3340)@12
    u0_m0_wo0_wi19_r0_delayr154_q <= u0_m0_wo0_wi19_r0_delayr153_q;

    -- u0_m0_wo0_wi19_r0_delayr153(DELAY,3339)@12
    u0_m0_wo0_wi19_r0_delayr153_q <= u0_m0_wo0_wi19_r0_phasedelay152_q;

    -- u0_m0_wo0_wi19_r0_delayr152_notEnable(LOGICAL,3749)@12
    u0_m0_wo0_wi19_r0_delayr152_notEnable_a <= d_in0_m0_wi0_wo0_assign_id1_q_12_q;
    u0_m0_wo0_wi19_r0_delayr152_notEnable_q <= not (u0_m0_wo0_wi19_r0_delayr152_notEnable_a);

    -- u0_m0_wo0_wi19_r0_delayr152_nor(LOGICAL,3750)@12
    u0_m0_wo0_wi19_r0_delayr152_nor_a <= u0_m0_wo0_wi19_r0_delayr152_notEnable_q;
    u0_m0_wo0_wi19_r0_delayr152_nor_b <= u0_m0_wo0_wi19_r0_delayr152_sticky_ena_q;
    u0_m0_wo0_wi19_r0_delayr152_nor_q <= not (u0_m0_wo0_wi19_r0_delayr152_nor_a or u0_m0_wo0_wi19_r0_delayr152_nor_b);

    -- u0_m0_wo0_wi19_r0_delayr152_mem_top(CONSTANT,3746)
    u0_m0_wo0_wi19_r0_delayr152_mem_top_q <= "0110";

    -- u0_m0_wo0_wi19_r0_delayr152_cmp(LOGICAL,3747)@12
    u0_m0_wo0_wi19_r0_delayr152_cmp_a <= u0_m0_wo0_wi19_r0_delayr152_mem_top_q;
    u0_m0_wo0_wi19_r0_delayr152_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi19_r0_delayr152_rdmux_q);
    u0_m0_wo0_wi19_r0_delayr152_cmp_q <= "1" WHEN u0_m0_wo0_wi19_r0_delayr152_cmp_a = u0_m0_wo0_wi19_r0_delayr152_cmp_b ELSE "0";

    -- u0_m0_wo0_wi19_r0_delayr152_cmpReg(REG,3748)@12
    u0_m0_wo0_wi19_r0_delayr152_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi19_r0_delayr152_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_12_q = "1") THEN
                u0_m0_wo0_wi19_r0_delayr152_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi19_r0_delayr152_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi19_r0_delayr152_sticky_ena(REG,3751)@12
    u0_m0_wo0_wi19_r0_delayr152_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi19_r0_delayr152_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi19_r0_delayr152_nor_q = "1") THEN
                u0_m0_wo0_wi19_r0_delayr152_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi19_r0_delayr152_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi19_r0_delayr152_enaAnd(LOGICAL,3752)@12
    u0_m0_wo0_wi19_r0_delayr152_enaAnd_a <= u0_m0_wo0_wi19_r0_delayr152_sticky_ena_q;
    u0_m0_wo0_wi19_r0_delayr152_enaAnd_b <= d_in0_m0_wi0_wo0_assign_id1_q_12_q;
    u0_m0_wo0_wi19_r0_delayr152_enaAnd_q <= u0_m0_wo0_wi19_r0_delayr152_enaAnd_a and u0_m0_wo0_wi19_r0_delayr152_enaAnd_b;

    -- u0_m0_wo0_wi19_r0_delayr152_rdcnt(COUNTER,3743)@12
    -- every=1, low=0, high=6, step=1, init=1
    u0_m0_wo0_wi19_r0_delayr152_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi19_r0_delayr152_rdcnt_i <= TO_UNSIGNED(1, 3);
            u0_m0_wo0_wi19_r0_delayr152_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_12_q = "1") THEN
                IF (u0_m0_wo0_wi19_r0_delayr152_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                    u0_m0_wo0_wi19_r0_delayr152_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi19_r0_delayr152_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi19_r0_delayr152_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi19_r0_delayr152_rdcnt_i <= u0_m0_wo0_wi19_r0_delayr152_rdcnt_i - 6;
                ELSE
                    u0_m0_wo0_wi19_r0_delayr152_rdcnt_i <= u0_m0_wo0_wi19_r0_delayr152_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi19_r0_delayr152_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi19_r0_delayr152_rdcnt_i, 3)));

    -- u0_m0_wo0_wi19_r0_delayr152_rdmux(MUX,3744)@12
    u0_m0_wo0_wi19_r0_delayr152_rdmux_s <= d_in0_m0_wi0_wo0_assign_id1_q_12_q;
    u0_m0_wo0_wi19_r0_delayr152_rdmux: PROCESS (u0_m0_wo0_wi19_r0_delayr152_rdmux_s, u0_m0_wo0_wi19_r0_delayr152_wraddr_q, u0_m0_wo0_wi19_r0_delayr152_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi19_r0_delayr152_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi19_r0_delayr152_rdmux_q <= u0_m0_wo0_wi19_r0_delayr152_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi19_r0_delayr152_rdmux_q <= u0_m0_wo0_wi19_r0_delayr152_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi19_r0_delayr152_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- d_xIn_19_12(DELAY,3526)@10
    d_xIn_19_12 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_19, xout => d_xIn_19_12_q, clk => clk, aclr => areset );

    -- d_in0_m0_wi0_wo0_assign_id1_q_12(DELAY,3527)@10
    d_in0_m0_wi0_wo0_assign_id1_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_id1_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi19_r0_delayr152_wraddr(REG,3745)@12
    u0_m0_wo0_wi19_r0_delayr152_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi19_r0_delayr152_wraddr_q <= "000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi19_r0_delayr152_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi19_r0_delayr152_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi19_r0_delayr152_mem(DUALMEM,3742)@12
    u0_m0_wo0_wi19_r0_delayr152_mem_ia <= STD_LOGIC_VECTOR(d_xIn_19_12_q);
    u0_m0_wo0_wi19_r0_delayr152_mem_aa <= u0_m0_wo0_wi19_r0_delayr152_wraddr_q;
    u0_m0_wo0_wi19_r0_delayr152_mem_ab <= u0_m0_wo0_wi19_r0_delayr152_rdmux_q;
    u0_m0_wo0_wi19_r0_delayr152_mem_reset0 <= areset;
    u0_m0_wo0_wi19_r0_delayr152_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi19_r0_delayr152_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi19_r0_delayr152_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi19_r0_delayr152_mem_aa,
        data_a => u0_m0_wo0_wi19_r0_delayr152_mem_ia,
        wren_a => d_in0_m0_wi0_wo0_assign_id1_q_12_q(0),
        address_b => u0_m0_wo0_wi19_r0_delayr152_mem_ab,
        q_b => u0_m0_wo0_wi19_r0_delayr152_mem_iq
    );
    u0_m0_wo0_wi19_r0_delayr152_mem_q <= u0_m0_wo0_wi19_r0_delayr152_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi19_r0_phasedelay152(DELAY,3187)@12
    u0_m0_wo0_wi19_r0_phasedelay152_q <= u0_m0_wo0_wi19_r0_delayr152_mem_q;

    -- u0_m0_wo0_wi18_r0_delayr151(DELAY,3175)@12
    u0_m0_wo0_wi18_r0_delayr151_q <= u0_m0_wo0_wi18_r0_delayr150_q;

    -- u0_m0_wo0_wi18_r0_delayr150(DELAY,3174)@12
    u0_m0_wo0_wi18_r0_delayr150_q <= u0_m0_wo0_wi18_r0_delayr149_q;

    -- u0_m0_wo0_wi18_r0_delayr149(DELAY,3173)@12
    u0_m0_wo0_wi18_r0_delayr149_q <= u0_m0_wo0_wi18_r0_delayr148_q;

    -- u0_m0_wo0_wi18_r0_delayr148(DELAY,3172)@12
    u0_m0_wo0_wi18_r0_delayr148_q <= u0_m0_wo0_wi18_r0_delayr147_q;

    -- u0_m0_wo0_wi18_r0_delayr147(DELAY,3171)@12
    u0_m0_wo0_wi18_r0_delayr147_q <= u0_m0_wo0_wi18_r0_delayr146_q;

    -- u0_m0_wo0_wi18_r0_delayr146(DELAY,3170)@12
    u0_m0_wo0_wi18_r0_delayr146_q <= u0_m0_wo0_wi18_r0_delayr145_q;

    -- u0_m0_wo0_wi18_r0_delayr145(DELAY,3169)@12
    u0_m0_wo0_wi18_r0_delayr145_q <= u0_m0_wo0_wi18_r0_phasedelay144_q;

    -- u0_m0_wo0_wi18_r0_delayr144_notEnable(LOGICAL,3738)@12
    u0_m0_wo0_wi18_r0_delayr144_notEnable_a <= d_in0_m0_wi0_wo0_assign_id1_q_12_q;
    u0_m0_wo0_wi18_r0_delayr144_notEnable_q <= not (u0_m0_wo0_wi18_r0_delayr144_notEnable_a);

    -- u0_m0_wo0_wi18_r0_delayr144_nor(LOGICAL,3739)@12
    u0_m0_wo0_wi18_r0_delayr144_nor_a <= u0_m0_wo0_wi18_r0_delayr144_notEnable_q;
    u0_m0_wo0_wi18_r0_delayr144_nor_b <= u0_m0_wo0_wi18_r0_delayr144_sticky_ena_q;
    u0_m0_wo0_wi18_r0_delayr144_nor_q <= not (u0_m0_wo0_wi18_r0_delayr144_nor_a or u0_m0_wo0_wi18_r0_delayr144_nor_b);

    -- u0_m0_wo0_wi18_r0_delayr144_mem_top(CONSTANT,3735)
    u0_m0_wo0_wi18_r0_delayr144_mem_top_q <= "01110";

    -- u0_m0_wo0_wi18_r0_delayr144_cmp(LOGICAL,3736)@12
    u0_m0_wo0_wi18_r0_delayr144_cmp_a <= u0_m0_wo0_wi18_r0_delayr144_mem_top_q;
    u0_m0_wo0_wi18_r0_delayr144_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi18_r0_delayr144_rdmux_q);
    u0_m0_wo0_wi18_r0_delayr144_cmp_q <= "1" WHEN u0_m0_wo0_wi18_r0_delayr144_cmp_a = u0_m0_wo0_wi18_r0_delayr144_cmp_b ELSE "0";

    -- u0_m0_wo0_wi18_r0_delayr144_cmpReg(REG,3737)@12
    u0_m0_wo0_wi18_r0_delayr144_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi18_r0_delayr144_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_12_q = "1") THEN
                u0_m0_wo0_wi18_r0_delayr144_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi18_r0_delayr144_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi18_r0_delayr144_sticky_ena(REG,3740)@12
    u0_m0_wo0_wi18_r0_delayr144_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi18_r0_delayr144_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi18_r0_delayr144_nor_q = "1") THEN
                u0_m0_wo0_wi18_r0_delayr144_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi18_r0_delayr144_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi18_r0_delayr144_enaAnd(LOGICAL,3741)@12
    u0_m0_wo0_wi18_r0_delayr144_enaAnd_a <= u0_m0_wo0_wi18_r0_delayr144_sticky_ena_q;
    u0_m0_wo0_wi18_r0_delayr144_enaAnd_b <= d_in0_m0_wi0_wo0_assign_id1_q_12_q;
    u0_m0_wo0_wi18_r0_delayr144_enaAnd_q <= u0_m0_wo0_wi18_r0_delayr144_enaAnd_a and u0_m0_wo0_wi18_r0_delayr144_enaAnd_b;

    -- u0_m0_wo0_wi18_r0_delayr144_rdcnt(COUNTER,3732)@12
    -- every=1, low=0, high=14, step=1, init=1
    u0_m0_wo0_wi18_r0_delayr144_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi18_r0_delayr144_rdcnt_i <= TO_UNSIGNED(1, 4);
            u0_m0_wo0_wi18_r0_delayr144_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_12_q = "1") THEN
                IF (u0_m0_wo0_wi18_r0_delayr144_rdcnt_i = TO_UNSIGNED(13, 4)) THEN
                    u0_m0_wo0_wi18_r0_delayr144_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi18_r0_delayr144_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi18_r0_delayr144_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi18_r0_delayr144_rdcnt_i <= u0_m0_wo0_wi18_r0_delayr144_rdcnt_i - 14;
                ELSE
                    u0_m0_wo0_wi18_r0_delayr144_rdcnt_i <= u0_m0_wo0_wi18_r0_delayr144_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi18_r0_delayr144_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi18_r0_delayr144_rdcnt_i, 4)));

    -- u0_m0_wo0_wi18_r0_delayr144_rdmux(MUX,3733)@12
    u0_m0_wo0_wi18_r0_delayr144_rdmux_s <= d_in0_m0_wi0_wo0_assign_id1_q_12_q;
    u0_m0_wo0_wi18_r0_delayr144_rdmux: PROCESS (u0_m0_wo0_wi18_r0_delayr144_rdmux_s, u0_m0_wo0_wi18_r0_delayr144_wraddr_q, u0_m0_wo0_wi18_r0_delayr144_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi18_r0_delayr144_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi18_r0_delayr144_rdmux_q <= u0_m0_wo0_wi18_r0_delayr144_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi18_r0_delayr144_rdmux_q <= u0_m0_wo0_wi18_r0_delayr144_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi18_r0_delayr144_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- d_xIn_18_12(DELAY,3525)@10
    d_xIn_18_12 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_18, xout => d_xIn_18_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi18_r0_delayr144_wraddr(REG,3734)@12
    u0_m0_wo0_wi18_r0_delayr144_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi18_r0_delayr144_wraddr_q <= "0000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi18_r0_delayr144_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi18_r0_delayr144_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi18_r0_delayr144_mem(DUALMEM,3731)@12
    u0_m0_wo0_wi18_r0_delayr144_mem_ia <= STD_LOGIC_VECTOR(d_xIn_18_12_q);
    u0_m0_wo0_wi18_r0_delayr144_mem_aa <= u0_m0_wo0_wi18_r0_delayr144_wraddr_q;
    u0_m0_wo0_wi18_r0_delayr144_mem_ab <= u0_m0_wo0_wi18_r0_delayr144_rdmux_q;
    u0_m0_wo0_wi18_r0_delayr144_mem_reset0 <= areset;
    u0_m0_wo0_wi18_r0_delayr144_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi18_r0_delayr144_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi18_r0_delayr144_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi18_r0_delayr144_mem_aa,
        data_a => u0_m0_wo0_wi18_r0_delayr144_mem_ia,
        wren_a => d_in0_m0_wi0_wo0_assign_id1_q_12_q(0),
        address_b => u0_m0_wo0_wi18_r0_delayr144_mem_ab,
        q_b => u0_m0_wo0_wi18_r0_delayr144_mem_iq
    );
    u0_m0_wo0_wi18_r0_delayr144_mem_q <= u0_m0_wo0_wi18_r0_delayr144_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi18_r0_phasedelay144(DELAY,3025)@12
    u0_m0_wo0_wi18_r0_phasedelay144_q <= u0_m0_wo0_wi18_r0_delayr144_mem_q;

    -- u0_m0_wo0_wi17_r0_delayr143(DELAY,3005)@12
    u0_m0_wo0_wi17_r0_delayr143_q <= u0_m0_wo0_wi17_r0_delayr142_q;

    -- u0_m0_wo0_wi17_r0_delayr142(DELAY,3004)@12
    u0_m0_wo0_wi17_r0_delayr142_q <= u0_m0_wo0_wi17_r0_delayr141_q;

    -- u0_m0_wo0_wi17_r0_delayr141(DELAY,3003)@12
    u0_m0_wo0_wi17_r0_delayr141_q <= u0_m0_wo0_wi17_r0_delayr140_q;

    -- u0_m0_wo0_wi17_r0_delayr140(DELAY,3002)@12
    u0_m0_wo0_wi17_r0_delayr140_q <= u0_m0_wo0_wi17_r0_delayr139_q;

    -- u0_m0_wo0_wi17_r0_delayr139(DELAY,3001)@12
    u0_m0_wo0_wi17_r0_delayr139_q <= u0_m0_wo0_wi17_r0_delayr138_q;

    -- u0_m0_wo0_wi17_r0_delayr138(DELAY,3000)@12
    u0_m0_wo0_wi17_r0_delayr138_q <= u0_m0_wo0_wi17_r0_delayr137_q;

    -- u0_m0_wo0_wi17_r0_delayr137(DELAY,2999)@12
    u0_m0_wo0_wi17_r0_delayr137_q <= u0_m0_wo0_wi17_r0_phasedelay136_q;

    -- u0_m0_wo0_wi17_r0_delayr136_notEnable(LOGICAL,3727)@12
    u0_m0_wo0_wi17_r0_delayr136_notEnable_a <= d_in0_m0_wi0_wo0_assign_id1_q_12_q;
    u0_m0_wo0_wi17_r0_delayr136_notEnable_q <= not (u0_m0_wo0_wi17_r0_delayr136_notEnable_a);

    -- u0_m0_wo0_wi17_r0_delayr136_nor(LOGICAL,3728)@12
    u0_m0_wo0_wi17_r0_delayr136_nor_a <= u0_m0_wo0_wi17_r0_delayr136_notEnable_q;
    u0_m0_wo0_wi17_r0_delayr136_nor_b <= u0_m0_wo0_wi17_r0_delayr136_sticky_ena_q;
    u0_m0_wo0_wi17_r0_delayr136_nor_q <= not (u0_m0_wo0_wi17_r0_delayr136_nor_a or u0_m0_wo0_wi17_r0_delayr136_nor_b);

    -- u0_m0_wo0_wi17_r0_delayr136_mem_top(CONSTANT,3724)
    u0_m0_wo0_wi17_r0_delayr136_mem_top_q <= "010110";

    -- u0_m0_wo0_wi17_r0_delayr136_cmp(LOGICAL,3725)@12
    u0_m0_wo0_wi17_r0_delayr136_cmp_a <= u0_m0_wo0_wi17_r0_delayr136_mem_top_q;
    u0_m0_wo0_wi17_r0_delayr136_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi17_r0_delayr136_rdmux_q);
    u0_m0_wo0_wi17_r0_delayr136_cmp_q <= "1" WHEN u0_m0_wo0_wi17_r0_delayr136_cmp_a = u0_m0_wo0_wi17_r0_delayr136_cmp_b ELSE "0";

    -- u0_m0_wo0_wi17_r0_delayr136_cmpReg(REG,3726)@12
    u0_m0_wo0_wi17_r0_delayr136_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi17_r0_delayr136_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_12_q = "1") THEN
                u0_m0_wo0_wi17_r0_delayr136_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi17_r0_delayr136_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi17_r0_delayr136_sticky_ena(REG,3729)@12
    u0_m0_wo0_wi17_r0_delayr136_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi17_r0_delayr136_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi17_r0_delayr136_nor_q = "1") THEN
                u0_m0_wo0_wi17_r0_delayr136_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi17_r0_delayr136_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi17_r0_delayr136_enaAnd(LOGICAL,3730)@12
    u0_m0_wo0_wi17_r0_delayr136_enaAnd_a <= u0_m0_wo0_wi17_r0_delayr136_sticky_ena_q;
    u0_m0_wo0_wi17_r0_delayr136_enaAnd_b <= d_in0_m0_wi0_wo0_assign_id1_q_12_q;
    u0_m0_wo0_wi17_r0_delayr136_enaAnd_q <= u0_m0_wo0_wi17_r0_delayr136_enaAnd_a and u0_m0_wo0_wi17_r0_delayr136_enaAnd_b;

    -- u0_m0_wo0_wi17_r0_delayr136_rdcnt(COUNTER,3721)@12
    -- every=1, low=0, high=22, step=1, init=1
    u0_m0_wo0_wi17_r0_delayr136_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi17_r0_delayr136_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi17_r0_delayr136_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_12_q = "1") THEN
                IF (u0_m0_wo0_wi17_r0_delayr136_rdcnt_i = TO_UNSIGNED(21, 5)) THEN
                    u0_m0_wo0_wi17_r0_delayr136_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi17_r0_delayr136_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi17_r0_delayr136_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi17_r0_delayr136_rdcnt_i <= u0_m0_wo0_wi17_r0_delayr136_rdcnt_i - 22;
                ELSE
                    u0_m0_wo0_wi17_r0_delayr136_rdcnt_i <= u0_m0_wo0_wi17_r0_delayr136_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi17_r0_delayr136_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi17_r0_delayr136_rdcnt_i, 5)));

    -- u0_m0_wo0_wi17_r0_delayr136_rdmux(MUX,3722)@12
    u0_m0_wo0_wi17_r0_delayr136_rdmux_s <= d_in0_m0_wi0_wo0_assign_id1_q_12_q;
    u0_m0_wo0_wi17_r0_delayr136_rdmux: PROCESS (u0_m0_wo0_wi17_r0_delayr136_rdmux_s, u0_m0_wo0_wi17_r0_delayr136_wraddr_q, u0_m0_wo0_wi17_r0_delayr136_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi17_r0_delayr136_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi17_r0_delayr136_rdmux_q <= u0_m0_wo0_wi17_r0_delayr136_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi17_r0_delayr136_rdmux_q <= u0_m0_wo0_wi17_r0_delayr136_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi17_r0_delayr136_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- d_xIn_17_12(DELAY,3524)@10
    d_xIn_17_12 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_17, xout => d_xIn_17_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi17_r0_delayr136_wraddr(REG,3723)@12
    u0_m0_wo0_wi17_r0_delayr136_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi17_r0_delayr136_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi17_r0_delayr136_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi17_r0_delayr136_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi17_r0_delayr136_mem(DUALMEM,3720)@12
    u0_m0_wo0_wi17_r0_delayr136_mem_ia <= STD_LOGIC_VECTOR(d_xIn_17_12_q);
    u0_m0_wo0_wi17_r0_delayr136_mem_aa <= u0_m0_wo0_wi17_r0_delayr136_wraddr_q;
    u0_m0_wo0_wi17_r0_delayr136_mem_ab <= u0_m0_wo0_wi17_r0_delayr136_rdmux_q;
    u0_m0_wo0_wi17_r0_delayr136_mem_reset0 <= areset;
    u0_m0_wo0_wi17_r0_delayr136_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi17_r0_delayr136_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi17_r0_delayr136_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi17_r0_delayr136_mem_aa,
        data_a => u0_m0_wo0_wi17_r0_delayr136_mem_ia,
        wren_a => d_in0_m0_wi0_wo0_assign_id1_q_12_q(0),
        address_b => u0_m0_wo0_wi17_r0_delayr136_mem_ab,
        q_b => u0_m0_wo0_wi17_r0_delayr136_mem_iq
    );
    u0_m0_wo0_wi17_r0_delayr136_mem_q <= u0_m0_wo0_wi17_r0_delayr136_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi17_r0_phasedelay136(DELAY,2863)@12
    u0_m0_wo0_wi17_r0_phasedelay136_q <= u0_m0_wo0_wi17_r0_delayr136_mem_q;

    -- u0_m0_wo0_wi16_r0_delayr135(DELAY,2835)@12
    u0_m0_wo0_wi16_r0_delayr135_q <= u0_m0_wo0_wi16_r0_delayr134_q;

    -- u0_m0_wo0_wi16_r0_delayr134(DELAY,2834)@12
    u0_m0_wo0_wi16_r0_delayr134_q <= u0_m0_wo0_wi16_r0_delayr133_q;

    -- u0_m0_wo0_wi16_r0_delayr133(DELAY,2833)@12
    u0_m0_wo0_wi16_r0_delayr133_q <= u0_m0_wo0_wi16_r0_delayr132_q;

    -- u0_m0_wo0_wi16_r0_delayr132(DELAY,2832)@12
    u0_m0_wo0_wi16_r0_delayr132_q <= u0_m0_wo0_wi16_r0_delayr131_q;

    -- u0_m0_wo0_wi16_r0_delayr131(DELAY,2831)@12
    u0_m0_wo0_wi16_r0_delayr131_q <= u0_m0_wo0_wi16_r0_delayr130_q;

    -- u0_m0_wo0_wi16_r0_delayr130(DELAY,2830)@12
    u0_m0_wo0_wi16_r0_delayr130_q <= u0_m0_wo0_wi16_r0_delayr129_q;

    -- u0_m0_wo0_wi16_r0_delayr129(DELAY,2829)@12
    u0_m0_wo0_wi16_r0_delayr129_q <= u0_m0_wo0_wi16_r0_phasedelay128_q;

    -- u0_m0_wo0_wi16_r0_delayr128_notEnable(LOGICAL,3716)@12
    u0_m0_wo0_wi16_r0_delayr128_notEnable_a <= d_in0_m0_wi0_wo0_assign_id1_q_12_q;
    u0_m0_wo0_wi16_r0_delayr128_notEnable_q <= not (u0_m0_wo0_wi16_r0_delayr128_notEnable_a);

    -- u0_m0_wo0_wi16_r0_delayr128_nor(LOGICAL,3717)@12
    u0_m0_wo0_wi16_r0_delayr128_nor_a <= u0_m0_wo0_wi16_r0_delayr128_notEnable_q;
    u0_m0_wo0_wi16_r0_delayr128_nor_b <= u0_m0_wo0_wi16_r0_delayr128_sticky_ena_q;
    u0_m0_wo0_wi16_r0_delayr128_nor_q <= not (u0_m0_wo0_wi16_r0_delayr128_nor_a or u0_m0_wo0_wi16_r0_delayr128_nor_b);

    -- u0_m0_wo0_wi16_r0_delayr128_mem_top(CONSTANT,3713)
    u0_m0_wo0_wi16_r0_delayr128_mem_top_q <= "011110";

    -- u0_m0_wo0_wi16_r0_delayr128_cmp(LOGICAL,3714)@12
    u0_m0_wo0_wi16_r0_delayr128_cmp_a <= u0_m0_wo0_wi16_r0_delayr128_mem_top_q;
    u0_m0_wo0_wi16_r0_delayr128_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi16_r0_delayr128_rdmux_q);
    u0_m0_wo0_wi16_r0_delayr128_cmp_q <= "1" WHEN u0_m0_wo0_wi16_r0_delayr128_cmp_a = u0_m0_wo0_wi16_r0_delayr128_cmp_b ELSE "0";

    -- u0_m0_wo0_wi16_r0_delayr128_cmpReg(REG,3715)@12
    u0_m0_wo0_wi16_r0_delayr128_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi16_r0_delayr128_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_12_q = "1") THEN
                u0_m0_wo0_wi16_r0_delayr128_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi16_r0_delayr128_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi16_r0_delayr128_sticky_ena(REG,3718)@12
    u0_m0_wo0_wi16_r0_delayr128_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi16_r0_delayr128_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi16_r0_delayr128_nor_q = "1") THEN
                u0_m0_wo0_wi16_r0_delayr128_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi16_r0_delayr128_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi16_r0_delayr128_enaAnd(LOGICAL,3719)@12
    u0_m0_wo0_wi16_r0_delayr128_enaAnd_a <= u0_m0_wo0_wi16_r0_delayr128_sticky_ena_q;
    u0_m0_wo0_wi16_r0_delayr128_enaAnd_b <= d_in0_m0_wi0_wo0_assign_id1_q_12_q;
    u0_m0_wo0_wi16_r0_delayr128_enaAnd_q <= u0_m0_wo0_wi16_r0_delayr128_enaAnd_a and u0_m0_wo0_wi16_r0_delayr128_enaAnd_b;

    -- u0_m0_wo0_wi16_r0_delayr128_rdcnt(COUNTER,3710)@12
    -- every=1, low=0, high=30, step=1, init=1
    u0_m0_wo0_wi16_r0_delayr128_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi16_r0_delayr128_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi16_r0_delayr128_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_12_q = "1") THEN
                IF (u0_m0_wo0_wi16_r0_delayr128_rdcnt_i = TO_UNSIGNED(29, 5)) THEN
                    u0_m0_wo0_wi16_r0_delayr128_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi16_r0_delayr128_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi16_r0_delayr128_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi16_r0_delayr128_rdcnt_i <= u0_m0_wo0_wi16_r0_delayr128_rdcnt_i - 30;
                ELSE
                    u0_m0_wo0_wi16_r0_delayr128_rdcnt_i <= u0_m0_wo0_wi16_r0_delayr128_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi16_r0_delayr128_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi16_r0_delayr128_rdcnt_i, 5)));

    -- u0_m0_wo0_wi16_r0_delayr128_rdmux(MUX,3711)@12
    u0_m0_wo0_wi16_r0_delayr128_rdmux_s <= d_in0_m0_wi0_wo0_assign_id1_q_12_q;
    u0_m0_wo0_wi16_r0_delayr128_rdmux: PROCESS (u0_m0_wo0_wi16_r0_delayr128_rdmux_s, u0_m0_wo0_wi16_r0_delayr128_wraddr_q, u0_m0_wo0_wi16_r0_delayr128_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi16_r0_delayr128_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi16_r0_delayr128_rdmux_q <= u0_m0_wo0_wi16_r0_delayr128_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi16_r0_delayr128_rdmux_q <= u0_m0_wo0_wi16_r0_delayr128_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi16_r0_delayr128_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- d_xIn_16_12(DELAY,3523)@10
    d_xIn_16_12 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_16, xout => d_xIn_16_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi16_r0_delayr128_wraddr(REG,3712)@12
    u0_m0_wo0_wi16_r0_delayr128_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi16_r0_delayr128_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi16_r0_delayr128_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi16_r0_delayr128_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi16_r0_delayr128_mem(DUALMEM,3709)@12
    u0_m0_wo0_wi16_r0_delayr128_mem_ia <= STD_LOGIC_VECTOR(d_xIn_16_12_q);
    u0_m0_wo0_wi16_r0_delayr128_mem_aa <= u0_m0_wo0_wi16_r0_delayr128_wraddr_q;
    u0_m0_wo0_wi16_r0_delayr128_mem_ab <= u0_m0_wo0_wi16_r0_delayr128_rdmux_q;
    u0_m0_wo0_wi16_r0_delayr128_mem_reset0 <= areset;
    u0_m0_wo0_wi16_r0_delayr128_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi16_r0_delayr128_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi16_r0_delayr128_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi16_r0_delayr128_mem_aa,
        data_a => u0_m0_wo0_wi16_r0_delayr128_mem_ia,
        wren_a => d_in0_m0_wi0_wo0_assign_id1_q_12_q(0),
        address_b => u0_m0_wo0_wi16_r0_delayr128_mem_ab,
        q_b => u0_m0_wo0_wi16_r0_delayr128_mem_iq
    );
    u0_m0_wo0_wi16_r0_delayr128_mem_q <= u0_m0_wo0_wi16_r0_delayr128_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi16_r0_phasedelay128(DELAY,2701)@12
    u0_m0_wo0_wi16_r0_phasedelay128_q <= u0_m0_wo0_wi16_r0_delayr128_mem_q;

    -- d_u0_m0_wo0_compute_q_13(DELAY,3531)@12
    d_u0_m0_wo0_compute_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_12_q, xout => d_u0_m0_wo0_compute_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,105)@10
    u0_m0_wo0_compute_q <= u0_m0_wo0_memread_q;

    -- d_u0_m0_wo0_compute_q_11(DELAY,3529)@10
    d_u0_m0_wo0_compute_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_12(DELAY,3530)@11
    d_u0_m0_wo0_compute_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_11_q, xout => d_u0_m0_wo0_compute_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cma4(CHAINMULTADD,3510)@12
    -- altera synthesis_off
    u0_m0_wo0_cma4_k0 <= (
        0 => TO_SIGNED(25,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k1 <= (
        0 => TO_SIGNED(58,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k2 <= (
        0 => TO_SIGNED(94,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k3 <= (
        0 => TO_SIGNED(120,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k4 <= (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k5 <= (
        0 => TO_SIGNED(110,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k6 <= (
        0 => TO_SIGNED(78,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k7 <= (
        0 => TO_SIGNED(42,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k8 <= (
        0 => TO_SIGNED(23,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k9 <= (
        0 => TO_SIGNED(56,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k10 <= (
        0 => TO_SIGNED(92,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k11 <= (
        0 => TO_SIGNED(119,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k12 <= (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k13 <= (
        0 => TO_SIGNED(111,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k14 <= (
        0 => TO_SIGNED(80,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k15 <= (
        0 => TO_SIGNED(44,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k16 <= (
        0 => TO_SIGNED(22,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k17 <= (
        0 => TO_SIGNED(55,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k18 <= (
        0 => TO_SIGNED(91,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k19 <= (
        0 => TO_SIGNED(118,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k20 <= (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k21 <= (
        0 => TO_SIGNED(113,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k22 <= (
        0 => TO_SIGNED(82,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k23 <= (
        0 => TO_SIGNED(46,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k24 <= (
        0 => TO_SIGNED(21,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k25 <= (
        0 => TO_SIGNED(53,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k26 <= (
        0 => TO_SIGNED(89,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k27 <= (
        0 => TO_SIGNED(117,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k28 <= (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k29 <= (
        0 => TO_SIGNED(114,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k30 <= (
        0 => TO_SIGNED(84,11),
        others => (others => '0'));
    u0_m0_wo0_cma4_k31 <= (
        0 => TO_SIGNED(47,11),
        others => (others => '0'));
    -- altera synthesis_on
    u0_m0_wo0_cma4_r(0) <= u0_m0_wo0_cma4_k0(TO_INTEGER(u0_m0_wo0_cma4_c0(0)));
    u0_m0_wo0_cma4_r(1) <= u0_m0_wo0_cma4_k1(TO_INTEGER(u0_m0_wo0_cma4_c0(1)));
    u0_m0_wo0_cma4_r(2) <= u0_m0_wo0_cma4_k2(TO_INTEGER(u0_m0_wo0_cma4_c0(2)));
    u0_m0_wo0_cma4_r(3) <= u0_m0_wo0_cma4_k3(TO_INTEGER(u0_m0_wo0_cma4_c0(3)));
    u0_m0_wo0_cma4_r(4) <= u0_m0_wo0_cma4_k4(TO_INTEGER(u0_m0_wo0_cma4_c0(4)));
    u0_m0_wo0_cma4_r(5) <= u0_m0_wo0_cma4_k5(TO_INTEGER(u0_m0_wo0_cma4_c0(5)));
    u0_m0_wo0_cma4_r(6) <= u0_m0_wo0_cma4_k6(TO_INTEGER(u0_m0_wo0_cma4_c0(6)));
    u0_m0_wo0_cma4_r(7) <= u0_m0_wo0_cma4_k7(TO_INTEGER(u0_m0_wo0_cma4_c0(7)));
    u0_m0_wo0_cma4_r(8) <= u0_m0_wo0_cma4_k8(TO_INTEGER(u0_m0_wo0_cma4_c0(8)));
    u0_m0_wo0_cma4_r(9) <= u0_m0_wo0_cma4_k9(TO_INTEGER(u0_m0_wo0_cma4_c0(9)));
    u0_m0_wo0_cma4_r(10) <= u0_m0_wo0_cma4_k10(TO_INTEGER(u0_m0_wo0_cma4_c0(10)));
    u0_m0_wo0_cma4_r(11) <= u0_m0_wo0_cma4_k11(TO_INTEGER(u0_m0_wo0_cma4_c0(11)));
    u0_m0_wo0_cma4_r(12) <= u0_m0_wo0_cma4_k12(TO_INTEGER(u0_m0_wo0_cma4_c0(12)));
    u0_m0_wo0_cma4_r(13) <= u0_m0_wo0_cma4_k13(TO_INTEGER(u0_m0_wo0_cma4_c0(13)));
    u0_m0_wo0_cma4_r(14) <= u0_m0_wo0_cma4_k14(TO_INTEGER(u0_m0_wo0_cma4_c0(14)));
    u0_m0_wo0_cma4_r(15) <= u0_m0_wo0_cma4_k15(TO_INTEGER(u0_m0_wo0_cma4_c0(15)));
    u0_m0_wo0_cma4_r(16) <= u0_m0_wo0_cma4_k16(TO_INTEGER(u0_m0_wo0_cma4_c0(16)));
    u0_m0_wo0_cma4_r(17) <= u0_m0_wo0_cma4_k17(TO_INTEGER(u0_m0_wo0_cma4_c0(17)));
    u0_m0_wo0_cma4_r(18) <= u0_m0_wo0_cma4_k18(TO_INTEGER(u0_m0_wo0_cma4_c0(18)));
    u0_m0_wo0_cma4_r(19) <= u0_m0_wo0_cma4_k19(TO_INTEGER(u0_m0_wo0_cma4_c0(19)));
    u0_m0_wo0_cma4_r(20) <= u0_m0_wo0_cma4_k20(TO_INTEGER(u0_m0_wo0_cma4_c0(20)));
    u0_m0_wo0_cma4_r(21) <= u0_m0_wo0_cma4_k21(TO_INTEGER(u0_m0_wo0_cma4_c0(21)));
    u0_m0_wo0_cma4_r(22) <= u0_m0_wo0_cma4_k22(TO_INTEGER(u0_m0_wo0_cma4_c0(22)));
    u0_m0_wo0_cma4_r(23) <= u0_m0_wo0_cma4_k23(TO_INTEGER(u0_m0_wo0_cma4_c0(23)));
    u0_m0_wo0_cma4_r(24) <= u0_m0_wo0_cma4_k24(TO_INTEGER(u0_m0_wo0_cma4_c0(24)));
    u0_m0_wo0_cma4_r(25) <= u0_m0_wo0_cma4_k25(TO_INTEGER(u0_m0_wo0_cma4_c0(25)));
    u0_m0_wo0_cma4_r(26) <= u0_m0_wo0_cma4_k26(TO_INTEGER(u0_m0_wo0_cma4_c0(26)));
    u0_m0_wo0_cma4_r(27) <= u0_m0_wo0_cma4_k27(TO_INTEGER(u0_m0_wo0_cma4_c0(27)));
    u0_m0_wo0_cma4_r(28) <= u0_m0_wo0_cma4_k28(TO_INTEGER(u0_m0_wo0_cma4_c0(28)));
    u0_m0_wo0_cma4_r(29) <= u0_m0_wo0_cma4_k29(TO_INTEGER(u0_m0_wo0_cma4_c0(29)));
    u0_m0_wo0_cma4_r(30) <= u0_m0_wo0_cma4_k30(TO_INTEGER(u0_m0_wo0_cma4_c0(30)));
    u0_m0_wo0_cma4_r(31) <= u0_m0_wo0_cma4_k31(TO_INTEGER(u0_m0_wo0_cma4_c0(31)));
    u0_m0_wo0_cma4_p(0) <= u0_m0_wo0_cma4_a0(0) * u0_m0_wo0_cma4_r(0);
    u0_m0_wo0_cma4_p(1) <= u0_m0_wo0_cma4_a0(1) * u0_m0_wo0_cma4_r(1);
    u0_m0_wo0_cma4_p(2) <= u0_m0_wo0_cma4_a0(2) * u0_m0_wo0_cma4_r(2);
    u0_m0_wo0_cma4_p(3) <= u0_m0_wo0_cma4_a0(3) * u0_m0_wo0_cma4_r(3);
    u0_m0_wo0_cma4_p(4) <= u0_m0_wo0_cma4_a0(4) * u0_m0_wo0_cma4_r(4);
    u0_m0_wo0_cma4_p(5) <= u0_m0_wo0_cma4_a0(5) * u0_m0_wo0_cma4_r(5);
    u0_m0_wo0_cma4_p(6) <= u0_m0_wo0_cma4_a0(6) * u0_m0_wo0_cma4_r(6);
    u0_m0_wo0_cma4_p(7) <= u0_m0_wo0_cma4_a0(7) * u0_m0_wo0_cma4_r(7);
    u0_m0_wo0_cma4_p(8) <= u0_m0_wo0_cma4_a0(8) * u0_m0_wo0_cma4_r(8);
    u0_m0_wo0_cma4_p(9) <= u0_m0_wo0_cma4_a0(9) * u0_m0_wo0_cma4_r(9);
    u0_m0_wo0_cma4_p(10) <= u0_m0_wo0_cma4_a0(10) * u0_m0_wo0_cma4_r(10);
    u0_m0_wo0_cma4_p(11) <= u0_m0_wo0_cma4_a0(11) * u0_m0_wo0_cma4_r(11);
    u0_m0_wo0_cma4_p(12) <= u0_m0_wo0_cma4_a0(12) * u0_m0_wo0_cma4_r(12);
    u0_m0_wo0_cma4_p(13) <= u0_m0_wo0_cma4_a0(13) * u0_m0_wo0_cma4_r(13);
    u0_m0_wo0_cma4_p(14) <= u0_m0_wo0_cma4_a0(14) * u0_m0_wo0_cma4_r(14);
    u0_m0_wo0_cma4_p(15) <= u0_m0_wo0_cma4_a0(15) * u0_m0_wo0_cma4_r(15);
    u0_m0_wo0_cma4_p(16) <= u0_m0_wo0_cma4_a0(16) * u0_m0_wo0_cma4_r(16);
    u0_m0_wo0_cma4_p(17) <= u0_m0_wo0_cma4_a0(17) * u0_m0_wo0_cma4_r(17);
    u0_m0_wo0_cma4_p(18) <= u0_m0_wo0_cma4_a0(18) * u0_m0_wo0_cma4_r(18);
    u0_m0_wo0_cma4_p(19) <= u0_m0_wo0_cma4_a0(19) * u0_m0_wo0_cma4_r(19);
    u0_m0_wo0_cma4_p(20) <= u0_m0_wo0_cma4_a0(20) * u0_m0_wo0_cma4_r(20);
    u0_m0_wo0_cma4_p(21) <= u0_m0_wo0_cma4_a0(21) * u0_m0_wo0_cma4_r(21);
    u0_m0_wo0_cma4_p(22) <= u0_m0_wo0_cma4_a0(22) * u0_m0_wo0_cma4_r(22);
    u0_m0_wo0_cma4_p(23) <= u0_m0_wo0_cma4_a0(23) * u0_m0_wo0_cma4_r(23);
    u0_m0_wo0_cma4_p(24) <= u0_m0_wo0_cma4_a0(24) * u0_m0_wo0_cma4_r(24);
    u0_m0_wo0_cma4_p(25) <= u0_m0_wo0_cma4_a0(25) * u0_m0_wo0_cma4_r(25);
    u0_m0_wo0_cma4_p(26) <= u0_m0_wo0_cma4_a0(26) * u0_m0_wo0_cma4_r(26);
    u0_m0_wo0_cma4_p(27) <= u0_m0_wo0_cma4_a0(27) * u0_m0_wo0_cma4_r(27);
    u0_m0_wo0_cma4_p(28) <= u0_m0_wo0_cma4_a0(28) * u0_m0_wo0_cma4_r(28);
    u0_m0_wo0_cma4_p(29) <= u0_m0_wo0_cma4_a0(29) * u0_m0_wo0_cma4_r(29);
    u0_m0_wo0_cma4_p(30) <= u0_m0_wo0_cma4_a0(30) * u0_m0_wo0_cma4_r(30);
    u0_m0_wo0_cma4_p(31) <= u0_m0_wo0_cma4_a0(31) * u0_m0_wo0_cma4_r(31);
    u0_m0_wo0_cma4_u(0) <= RESIZE(u0_m0_wo0_cma4_p(0),26);
    u0_m0_wo0_cma4_u(1) <= RESIZE(u0_m0_wo0_cma4_p(1),26);
    u0_m0_wo0_cma4_u(2) <= RESIZE(u0_m0_wo0_cma4_p(2),26);
    u0_m0_wo0_cma4_u(3) <= RESIZE(u0_m0_wo0_cma4_p(3),26);
    u0_m0_wo0_cma4_u(4) <= RESIZE(u0_m0_wo0_cma4_p(4),26);
    u0_m0_wo0_cma4_u(5) <= RESIZE(u0_m0_wo0_cma4_p(5),26);
    u0_m0_wo0_cma4_u(6) <= RESIZE(u0_m0_wo0_cma4_p(6),26);
    u0_m0_wo0_cma4_u(7) <= RESIZE(u0_m0_wo0_cma4_p(7),26);
    u0_m0_wo0_cma4_u(8) <= RESIZE(u0_m0_wo0_cma4_p(8),26);
    u0_m0_wo0_cma4_u(9) <= RESIZE(u0_m0_wo0_cma4_p(9),26);
    u0_m0_wo0_cma4_u(10) <= RESIZE(u0_m0_wo0_cma4_p(10),26);
    u0_m0_wo0_cma4_u(11) <= RESIZE(u0_m0_wo0_cma4_p(11),26);
    u0_m0_wo0_cma4_u(12) <= RESIZE(u0_m0_wo0_cma4_p(12),26);
    u0_m0_wo0_cma4_u(13) <= RESIZE(u0_m0_wo0_cma4_p(13),26);
    u0_m0_wo0_cma4_u(14) <= RESIZE(u0_m0_wo0_cma4_p(14),26);
    u0_m0_wo0_cma4_u(15) <= RESIZE(u0_m0_wo0_cma4_p(15),26);
    u0_m0_wo0_cma4_u(16) <= RESIZE(u0_m0_wo0_cma4_p(16),26);
    u0_m0_wo0_cma4_u(17) <= RESIZE(u0_m0_wo0_cma4_p(17),26);
    u0_m0_wo0_cma4_u(18) <= RESIZE(u0_m0_wo0_cma4_p(18),26);
    u0_m0_wo0_cma4_u(19) <= RESIZE(u0_m0_wo0_cma4_p(19),26);
    u0_m0_wo0_cma4_u(20) <= RESIZE(u0_m0_wo0_cma4_p(20),26);
    u0_m0_wo0_cma4_u(21) <= RESIZE(u0_m0_wo0_cma4_p(21),26);
    u0_m0_wo0_cma4_u(22) <= RESIZE(u0_m0_wo0_cma4_p(22),26);
    u0_m0_wo0_cma4_u(23) <= RESIZE(u0_m0_wo0_cma4_p(23),26);
    u0_m0_wo0_cma4_u(24) <= RESIZE(u0_m0_wo0_cma4_p(24),26);
    u0_m0_wo0_cma4_u(25) <= RESIZE(u0_m0_wo0_cma4_p(25),26);
    u0_m0_wo0_cma4_u(26) <= RESIZE(u0_m0_wo0_cma4_p(26),26);
    u0_m0_wo0_cma4_u(27) <= RESIZE(u0_m0_wo0_cma4_p(27),26);
    u0_m0_wo0_cma4_u(28) <= RESIZE(u0_m0_wo0_cma4_p(28),26);
    u0_m0_wo0_cma4_u(29) <= RESIZE(u0_m0_wo0_cma4_p(29),26);
    u0_m0_wo0_cma4_u(30) <= RESIZE(u0_m0_wo0_cma4_p(30),26);
    u0_m0_wo0_cma4_u(31) <= RESIZE(u0_m0_wo0_cma4_p(31),26);
    u0_m0_wo0_cma4_w(0) <= u0_m0_wo0_cma4_u(0);
    u0_m0_wo0_cma4_w(1) <= u0_m0_wo0_cma4_u(1);
    u0_m0_wo0_cma4_w(2) <= u0_m0_wo0_cma4_u(2);
    u0_m0_wo0_cma4_w(3) <= u0_m0_wo0_cma4_u(3);
    u0_m0_wo0_cma4_w(4) <= u0_m0_wo0_cma4_u(4);
    u0_m0_wo0_cma4_w(5) <= u0_m0_wo0_cma4_u(5);
    u0_m0_wo0_cma4_w(6) <= u0_m0_wo0_cma4_u(6);
    u0_m0_wo0_cma4_w(7) <= u0_m0_wo0_cma4_u(7);
    u0_m0_wo0_cma4_w(8) <= u0_m0_wo0_cma4_u(8);
    u0_m0_wo0_cma4_w(9) <= u0_m0_wo0_cma4_u(9);
    u0_m0_wo0_cma4_w(10) <= u0_m0_wo0_cma4_u(10);
    u0_m0_wo0_cma4_w(11) <= u0_m0_wo0_cma4_u(11);
    u0_m0_wo0_cma4_w(12) <= u0_m0_wo0_cma4_u(12);
    u0_m0_wo0_cma4_w(13) <= u0_m0_wo0_cma4_u(13);
    u0_m0_wo0_cma4_w(14) <= u0_m0_wo0_cma4_u(14);
    u0_m0_wo0_cma4_w(15) <= u0_m0_wo0_cma4_u(15);
    u0_m0_wo0_cma4_w(16) <= u0_m0_wo0_cma4_u(16);
    u0_m0_wo0_cma4_w(17) <= u0_m0_wo0_cma4_u(17);
    u0_m0_wo0_cma4_w(18) <= u0_m0_wo0_cma4_u(18);
    u0_m0_wo0_cma4_w(19) <= u0_m0_wo0_cma4_u(19);
    u0_m0_wo0_cma4_w(20) <= u0_m0_wo0_cma4_u(20);
    u0_m0_wo0_cma4_w(21) <= u0_m0_wo0_cma4_u(21);
    u0_m0_wo0_cma4_w(22) <= u0_m0_wo0_cma4_u(22);
    u0_m0_wo0_cma4_w(23) <= u0_m0_wo0_cma4_u(23);
    u0_m0_wo0_cma4_w(24) <= u0_m0_wo0_cma4_u(24);
    u0_m0_wo0_cma4_w(25) <= u0_m0_wo0_cma4_u(25);
    u0_m0_wo0_cma4_w(26) <= u0_m0_wo0_cma4_u(26);
    u0_m0_wo0_cma4_w(27) <= u0_m0_wo0_cma4_u(27);
    u0_m0_wo0_cma4_w(28) <= u0_m0_wo0_cma4_u(28);
    u0_m0_wo0_cma4_w(29) <= u0_m0_wo0_cma4_u(29);
    u0_m0_wo0_cma4_w(30) <= u0_m0_wo0_cma4_u(30);
    u0_m0_wo0_cma4_w(31) <= u0_m0_wo0_cma4_u(31);
    u0_m0_wo0_cma4_x(0) <= u0_m0_wo0_cma4_w(0);
    u0_m0_wo0_cma4_x(1) <= u0_m0_wo0_cma4_w(1);
    u0_m0_wo0_cma4_x(2) <= u0_m0_wo0_cma4_w(2);
    u0_m0_wo0_cma4_x(3) <= u0_m0_wo0_cma4_w(3);
    u0_m0_wo0_cma4_x(4) <= u0_m0_wo0_cma4_w(4);
    u0_m0_wo0_cma4_x(5) <= u0_m0_wo0_cma4_w(5);
    u0_m0_wo0_cma4_x(6) <= u0_m0_wo0_cma4_w(6);
    u0_m0_wo0_cma4_x(7) <= u0_m0_wo0_cma4_w(7);
    u0_m0_wo0_cma4_x(8) <= u0_m0_wo0_cma4_w(8);
    u0_m0_wo0_cma4_x(9) <= u0_m0_wo0_cma4_w(9);
    u0_m0_wo0_cma4_x(10) <= u0_m0_wo0_cma4_w(10);
    u0_m0_wo0_cma4_x(11) <= u0_m0_wo0_cma4_w(11);
    u0_m0_wo0_cma4_x(12) <= u0_m0_wo0_cma4_w(12);
    u0_m0_wo0_cma4_x(13) <= u0_m0_wo0_cma4_w(13);
    u0_m0_wo0_cma4_x(14) <= u0_m0_wo0_cma4_w(14);
    u0_m0_wo0_cma4_x(15) <= u0_m0_wo0_cma4_w(15);
    u0_m0_wo0_cma4_x(16) <= u0_m0_wo0_cma4_w(16);
    u0_m0_wo0_cma4_x(17) <= u0_m0_wo0_cma4_w(17);
    u0_m0_wo0_cma4_x(18) <= u0_m0_wo0_cma4_w(18);
    u0_m0_wo0_cma4_x(19) <= u0_m0_wo0_cma4_w(19);
    u0_m0_wo0_cma4_x(20) <= u0_m0_wo0_cma4_w(20);
    u0_m0_wo0_cma4_x(21) <= u0_m0_wo0_cma4_w(21);
    u0_m0_wo0_cma4_x(22) <= u0_m0_wo0_cma4_w(22);
    u0_m0_wo0_cma4_x(23) <= u0_m0_wo0_cma4_w(23);
    u0_m0_wo0_cma4_x(24) <= u0_m0_wo0_cma4_w(24);
    u0_m0_wo0_cma4_x(25) <= u0_m0_wo0_cma4_w(25);
    u0_m0_wo0_cma4_x(26) <= u0_m0_wo0_cma4_w(26);
    u0_m0_wo0_cma4_x(27) <= u0_m0_wo0_cma4_w(27);
    u0_m0_wo0_cma4_x(28) <= u0_m0_wo0_cma4_w(28);
    u0_m0_wo0_cma4_x(29) <= u0_m0_wo0_cma4_w(29);
    u0_m0_wo0_cma4_x(30) <= u0_m0_wo0_cma4_w(30);
    u0_m0_wo0_cma4_x(31) <= u0_m0_wo0_cma4_w(31);
    u0_m0_wo0_cma4_y(0) <= u0_m0_wo0_cma4_s(1) + u0_m0_wo0_cma4_x(0);
    u0_m0_wo0_cma4_y(1) <= u0_m0_wo0_cma4_s(2) + u0_m0_wo0_cma4_x(1);
    u0_m0_wo0_cma4_y(2) <= u0_m0_wo0_cma4_s(3) + u0_m0_wo0_cma4_x(2);
    u0_m0_wo0_cma4_y(3) <= u0_m0_wo0_cma4_s(4) + u0_m0_wo0_cma4_x(3);
    u0_m0_wo0_cma4_y(4) <= u0_m0_wo0_cma4_s(5) + u0_m0_wo0_cma4_x(4);
    u0_m0_wo0_cma4_y(5) <= u0_m0_wo0_cma4_s(6) + u0_m0_wo0_cma4_x(5);
    u0_m0_wo0_cma4_y(6) <= u0_m0_wo0_cma4_s(7) + u0_m0_wo0_cma4_x(6);
    u0_m0_wo0_cma4_y(7) <= u0_m0_wo0_cma4_s(8) + u0_m0_wo0_cma4_x(7);
    u0_m0_wo0_cma4_y(8) <= u0_m0_wo0_cma4_s(9) + u0_m0_wo0_cma4_x(8);
    u0_m0_wo0_cma4_y(9) <= u0_m0_wo0_cma4_s(10) + u0_m0_wo0_cma4_x(9);
    u0_m0_wo0_cma4_y(10) <= u0_m0_wo0_cma4_s(11) + u0_m0_wo0_cma4_x(10);
    u0_m0_wo0_cma4_y(11) <= u0_m0_wo0_cma4_s(12) + u0_m0_wo0_cma4_x(11);
    u0_m0_wo0_cma4_y(12) <= u0_m0_wo0_cma4_s(13) + u0_m0_wo0_cma4_x(12);
    u0_m0_wo0_cma4_y(13) <= u0_m0_wo0_cma4_s(14) + u0_m0_wo0_cma4_x(13);
    u0_m0_wo0_cma4_y(14) <= u0_m0_wo0_cma4_s(15) + u0_m0_wo0_cma4_x(14);
    u0_m0_wo0_cma4_y(15) <= u0_m0_wo0_cma4_s(16) + u0_m0_wo0_cma4_x(15);
    u0_m0_wo0_cma4_y(16) <= u0_m0_wo0_cma4_s(17) + u0_m0_wo0_cma4_x(16);
    u0_m0_wo0_cma4_y(17) <= u0_m0_wo0_cma4_s(18) + u0_m0_wo0_cma4_x(17);
    u0_m0_wo0_cma4_y(18) <= u0_m0_wo0_cma4_s(19) + u0_m0_wo0_cma4_x(18);
    u0_m0_wo0_cma4_y(19) <= u0_m0_wo0_cma4_s(20) + u0_m0_wo0_cma4_x(19);
    u0_m0_wo0_cma4_y(20) <= u0_m0_wo0_cma4_s(21) + u0_m0_wo0_cma4_x(20);
    u0_m0_wo0_cma4_y(21) <= u0_m0_wo0_cma4_s(22) + u0_m0_wo0_cma4_x(21);
    u0_m0_wo0_cma4_y(22) <= u0_m0_wo0_cma4_s(23) + u0_m0_wo0_cma4_x(22);
    u0_m0_wo0_cma4_y(23) <= u0_m0_wo0_cma4_s(24) + u0_m0_wo0_cma4_x(23);
    u0_m0_wo0_cma4_y(24) <= u0_m0_wo0_cma4_s(25) + u0_m0_wo0_cma4_x(24);
    u0_m0_wo0_cma4_y(25) <= u0_m0_wo0_cma4_s(26) + u0_m0_wo0_cma4_x(25);
    u0_m0_wo0_cma4_y(26) <= u0_m0_wo0_cma4_s(27) + u0_m0_wo0_cma4_x(26);
    u0_m0_wo0_cma4_y(27) <= u0_m0_wo0_cma4_s(28) + u0_m0_wo0_cma4_x(27);
    u0_m0_wo0_cma4_y(28) <= u0_m0_wo0_cma4_s(29) + u0_m0_wo0_cma4_x(28);
    u0_m0_wo0_cma4_y(29) <= u0_m0_wo0_cma4_s(30) + u0_m0_wo0_cma4_x(29);
    u0_m0_wo0_cma4_y(30) <= u0_m0_wo0_cma4_s(31) + u0_m0_wo0_cma4_x(30);
    u0_m0_wo0_cma4_y(31) <= u0_m0_wo0_cma4_x(31);
    u0_m0_wo0_cma4_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma4_a0 <= (others => (others => '0'));
            u0_m0_wo0_cma4_c0 <= (others => (others => '0'));
            u0_m0_wo0_cma4_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_12_q = "1") THEN
                u0_m0_wo0_cma4_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_wi16_r0_phasedelay128_q),10);
                u0_m0_wo0_cma4_a0(1) <= RESIZE(SIGNED(u0_m0_wo0_wi16_r0_delayr129_q),10);
                u0_m0_wo0_cma4_a0(2) <= RESIZE(SIGNED(u0_m0_wo0_wi16_r0_delayr130_q),10);
                u0_m0_wo0_cma4_a0(3) <= RESIZE(SIGNED(u0_m0_wo0_wi16_r0_delayr131_q),10);
                u0_m0_wo0_cma4_a0(4) <= RESIZE(SIGNED(u0_m0_wo0_wi16_r0_delayr132_q),10);
                u0_m0_wo0_cma4_a0(5) <= RESIZE(SIGNED(u0_m0_wo0_wi16_r0_delayr133_q),10);
                u0_m0_wo0_cma4_a0(6) <= RESIZE(SIGNED(u0_m0_wo0_wi16_r0_delayr134_q),10);
                u0_m0_wo0_cma4_a0(7) <= RESIZE(SIGNED(u0_m0_wo0_wi16_r0_delayr135_q),10);
                u0_m0_wo0_cma4_a0(8) <= RESIZE(SIGNED(u0_m0_wo0_wi17_r0_phasedelay136_q),10);
                u0_m0_wo0_cma4_a0(9) <= RESIZE(SIGNED(u0_m0_wo0_wi17_r0_delayr137_q),10);
                u0_m0_wo0_cma4_a0(10) <= RESIZE(SIGNED(u0_m0_wo0_wi17_r0_delayr138_q),10);
                u0_m0_wo0_cma4_a0(11) <= RESIZE(SIGNED(u0_m0_wo0_wi17_r0_delayr139_q),10);
                u0_m0_wo0_cma4_a0(12) <= RESIZE(SIGNED(u0_m0_wo0_wi17_r0_delayr140_q),10);
                u0_m0_wo0_cma4_a0(13) <= RESIZE(SIGNED(u0_m0_wo0_wi17_r0_delayr141_q),10);
                u0_m0_wo0_cma4_a0(14) <= RESIZE(SIGNED(u0_m0_wo0_wi17_r0_delayr142_q),10);
                u0_m0_wo0_cma4_a0(15) <= RESIZE(SIGNED(u0_m0_wo0_wi17_r0_delayr143_q),10);
                u0_m0_wo0_cma4_a0(16) <= RESIZE(SIGNED(u0_m0_wo0_wi18_r0_phasedelay144_q),10);
                u0_m0_wo0_cma4_a0(17) <= RESIZE(SIGNED(u0_m0_wo0_wi18_r0_delayr145_q),10);
                u0_m0_wo0_cma4_a0(18) <= RESIZE(SIGNED(u0_m0_wo0_wi18_r0_delayr146_q),10);
                u0_m0_wo0_cma4_a0(19) <= RESIZE(SIGNED(u0_m0_wo0_wi18_r0_delayr147_q),10);
                u0_m0_wo0_cma4_a0(20) <= RESIZE(SIGNED(u0_m0_wo0_wi18_r0_delayr148_q),10);
                u0_m0_wo0_cma4_a0(21) <= RESIZE(SIGNED(u0_m0_wo0_wi18_r0_delayr149_q),10);
                u0_m0_wo0_cma4_a0(22) <= RESIZE(SIGNED(u0_m0_wo0_wi18_r0_delayr150_q),10);
                u0_m0_wo0_cma4_a0(23) <= RESIZE(SIGNED(u0_m0_wo0_wi18_r0_delayr151_q),10);
                u0_m0_wo0_cma4_a0(24) <= RESIZE(SIGNED(u0_m0_wo0_wi19_r0_phasedelay152_q),10);
                u0_m0_wo0_cma4_a0(25) <= RESIZE(SIGNED(u0_m0_wo0_wi19_r0_delayr153_q),10);
                u0_m0_wo0_cma4_a0(26) <= RESIZE(SIGNED(u0_m0_wo0_wi19_r0_delayr154_q),10);
                u0_m0_wo0_cma4_a0(27) <= RESIZE(SIGNED(u0_m0_wo0_wi19_r0_delayr155_q),10);
                u0_m0_wo0_cma4_a0(28) <= RESIZE(SIGNED(u0_m0_wo0_wi19_r0_delayr156_q),10);
                u0_m0_wo0_cma4_a0(29) <= RESIZE(SIGNED(u0_m0_wo0_wi19_r0_delayr157_q),10);
                u0_m0_wo0_cma4_a0(30) <= RESIZE(SIGNED(u0_m0_wo0_wi19_r0_delayr158_q),10);
                u0_m0_wo0_cma4_a0(31) <= RESIZE(SIGNED(u0_m0_wo0_wi19_r0_delayr159_q),10);
                u0_m0_wo0_cma4_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(7) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(8) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(9) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(10) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(11) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(12) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(13) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(14) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(15) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(16) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(17) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(18) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(19) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(20) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(21) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(22) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(23) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(24) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(25) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(26) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(27) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(28) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(29) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(30) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma4_c0(31) <= RESIZE(UNSIGNED(GND_q),3);
            END IF;
            IF (d_u0_m0_wo0_compute_q_13_q = "1") THEN
                u0_m0_wo0_cma4_s(0) <= u0_m0_wo0_cma4_y(0);
                u0_m0_wo0_cma4_s(1) <= u0_m0_wo0_cma4_y(1);
                u0_m0_wo0_cma4_s(2) <= u0_m0_wo0_cma4_y(2);
                u0_m0_wo0_cma4_s(3) <= u0_m0_wo0_cma4_y(3);
                u0_m0_wo0_cma4_s(4) <= u0_m0_wo0_cma4_y(4);
                u0_m0_wo0_cma4_s(5) <= u0_m0_wo0_cma4_y(5);
                u0_m0_wo0_cma4_s(6) <= u0_m0_wo0_cma4_y(6);
                u0_m0_wo0_cma4_s(7) <= u0_m0_wo0_cma4_y(7);
                u0_m0_wo0_cma4_s(8) <= u0_m0_wo0_cma4_y(8);
                u0_m0_wo0_cma4_s(9) <= u0_m0_wo0_cma4_y(9);
                u0_m0_wo0_cma4_s(10) <= u0_m0_wo0_cma4_y(10);
                u0_m0_wo0_cma4_s(11) <= u0_m0_wo0_cma4_y(11);
                u0_m0_wo0_cma4_s(12) <= u0_m0_wo0_cma4_y(12);
                u0_m0_wo0_cma4_s(13) <= u0_m0_wo0_cma4_y(13);
                u0_m0_wo0_cma4_s(14) <= u0_m0_wo0_cma4_y(14);
                u0_m0_wo0_cma4_s(15) <= u0_m0_wo0_cma4_y(15);
                u0_m0_wo0_cma4_s(16) <= u0_m0_wo0_cma4_y(16);
                u0_m0_wo0_cma4_s(17) <= u0_m0_wo0_cma4_y(17);
                u0_m0_wo0_cma4_s(18) <= u0_m0_wo0_cma4_y(18);
                u0_m0_wo0_cma4_s(19) <= u0_m0_wo0_cma4_y(19);
                u0_m0_wo0_cma4_s(20) <= u0_m0_wo0_cma4_y(20);
                u0_m0_wo0_cma4_s(21) <= u0_m0_wo0_cma4_y(21);
                u0_m0_wo0_cma4_s(22) <= u0_m0_wo0_cma4_y(22);
                u0_m0_wo0_cma4_s(23) <= u0_m0_wo0_cma4_y(23);
                u0_m0_wo0_cma4_s(24) <= u0_m0_wo0_cma4_y(24);
                u0_m0_wo0_cma4_s(25) <= u0_m0_wo0_cma4_y(25);
                u0_m0_wo0_cma4_s(26) <= u0_m0_wo0_cma4_y(26);
                u0_m0_wo0_cma4_s(27) <= u0_m0_wo0_cma4_y(27);
                u0_m0_wo0_cma4_s(28) <= u0_m0_wo0_cma4_y(28);
                u0_m0_wo0_cma4_s(29) <= u0_m0_wo0_cma4_y(29);
                u0_m0_wo0_cma4_s(30) <= u0_m0_wo0_cma4_y(30);
                u0_m0_wo0_cma4_s(31) <= u0_m0_wo0_cma4_y(31);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma4_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma4_s(0)(25 downto 0)), xout => u0_m0_wo0_cma4_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma4_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma4_qq(25 downto 0));

    -- u0_m0_wo0_wi15_r0_delayr127(DELAY,2665)@10
    u0_m0_wo0_wi15_r0_delayr127_q <= u0_m0_wo0_wi15_r0_delayr126_q;

    -- u0_m0_wo0_wi15_r0_delayr126(DELAY,2664)@10
    u0_m0_wo0_wi15_r0_delayr126_q <= u0_m0_wo0_wi15_r0_delayr125_q;

    -- u0_m0_wo0_wi15_r0_delayr125(DELAY,2663)@10
    u0_m0_wo0_wi15_r0_delayr125_q <= u0_m0_wo0_wi15_r0_delayr124_q;

    -- u0_m0_wo0_wi15_r0_delayr124(DELAY,2662)@10
    u0_m0_wo0_wi15_r0_delayr124_q <= u0_m0_wo0_wi15_r0_delayr123_q;

    -- u0_m0_wo0_wi15_r0_delayr123(DELAY,2661)@10
    u0_m0_wo0_wi15_r0_delayr123_q <= u0_m0_wo0_wi15_r0_delayr122_q;

    -- u0_m0_wo0_wi15_r0_delayr122(DELAY,2660)@10
    u0_m0_wo0_wi15_r0_delayr122_q <= u0_m0_wo0_wi15_r0_delayr121_q;

    -- u0_m0_wo0_wi15_r0_delayr121(DELAY,2659)@10
    u0_m0_wo0_wi15_r0_delayr121_q <= u0_m0_wo0_wi15_r0_phasedelay120_q;

    -- u0_m0_wo0_wi15_r0_delayr120_notEnable(LOGICAL,3705)@10
    u0_m0_wo0_wi15_r0_delayr120_notEnable_a <= xIn_v;
    u0_m0_wo0_wi15_r0_delayr120_notEnable_q <= not (u0_m0_wo0_wi15_r0_delayr120_notEnable_a);

    -- u0_m0_wo0_wi15_r0_delayr120_nor(LOGICAL,3706)@10
    u0_m0_wo0_wi15_r0_delayr120_nor_a <= u0_m0_wo0_wi15_r0_delayr120_notEnable_q;
    u0_m0_wo0_wi15_r0_delayr120_nor_b <= u0_m0_wo0_wi15_r0_delayr120_sticky_ena_q;
    u0_m0_wo0_wi15_r0_delayr120_nor_q <= not (u0_m0_wo0_wi15_r0_delayr120_nor_a or u0_m0_wo0_wi15_r0_delayr120_nor_b);

    -- u0_m0_wo0_wi15_r0_delayr120_mem_top(CONSTANT,3702)
    u0_m0_wo0_wi15_r0_delayr120_mem_top_q <= "0110";

    -- u0_m0_wo0_wi15_r0_delayr120_cmp(LOGICAL,3703)@10
    u0_m0_wo0_wi15_r0_delayr120_cmp_a <= u0_m0_wo0_wi15_r0_delayr120_mem_top_q;
    u0_m0_wo0_wi15_r0_delayr120_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi15_r0_delayr120_rdmux_q);
    u0_m0_wo0_wi15_r0_delayr120_cmp_q <= "1" WHEN u0_m0_wo0_wi15_r0_delayr120_cmp_a = u0_m0_wo0_wi15_r0_delayr120_cmp_b ELSE "0";

    -- u0_m0_wo0_wi15_r0_delayr120_cmpReg(REG,3704)@10
    u0_m0_wo0_wi15_r0_delayr120_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi15_r0_delayr120_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi15_r0_delayr120_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi15_r0_delayr120_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi15_r0_delayr120_sticky_ena(REG,3707)@10
    u0_m0_wo0_wi15_r0_delayr120_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi15_r0_delayr120_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi15_r0_delayr120_nor_q = "1") THEN
                u0_m0_wo0_wi15_r0_delayr120_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi15_r0_delayr120_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi15_r0_delayr120_enaAnd(LOGICAL,3708)@10
    u0_m0_wo0_wi15_r0_delayr120_enaAnd_a <= u0_m0_wo0_wi15_r0_delayr120_sticky_ena_q;
    u0_m0_wo0_wi15_r0_delayr120_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi15_r0_delayr120_enaAnd_q <= u0_m0_wo0_wi15_r0_delayr120_enaAnd_a and u0_m0_wo0_wi15_r0_delayr120_enaAnd_b;

    -- u0_m0_wo0_wi15_r0_delayr120_rdcnt(COUNTER,3699)@10
    -- every=1, low=0, high=6, step=1, init=1
    u0_m0_wo0_wi15_r0_delayr120_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi15_r0_delayr120_rdcnt_i <= TO_UNSIGNED(1, 3);
            u0_m0_wo0_wi15_r0_delayr120_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi15_r0_delayr120_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                    u0_m0_wo0_wi15_r0_delayr120_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi15_r0_delayr120_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi15_r0_delayr120_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi15_r0_delayr120_rdcnt_i <= u0_m0_wo0_wi15_r0_delayr120_rdcnt_i - 6;
                ELSE
                    u0_m0_wo0_wi15_r0_delayr120_rdcnt_i <= u0_m0_wo0_wi15_r0_delayr120_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi15_r0_delayr120_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi15_r0_delayr120_rdcnt_i, 3)));

    -- u0_m0_wo0_wi15_r0_delayr120_rdmux(MUX,3700)@10
    u0_m0_wo0_wi15_r0_delayr120_rdmux_s <= xIn_v;
    u0_m0_wo0_wi15_r0_delayr120_rdmux: PROCESS (u0_m0_wo0_wi15_r0_delayr120_rdmux_s, u0_m0_wo0_wi15_r0_delayr120_wraddr_q, u0_m0_wo0_wi15_r0_delayr120_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi15_r0_delayr120_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi15_r0_delayr120_rdmux_q <= u0_m0_wo0_wi15_r0_delayr120_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi15_r0_delayr120_rdmux_q <= u0_m0_wo0_wi15_r0_delayr120_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi15_r0_delayr120_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi15_r0_delayr120_wraddr(REG,3701)@10
    u0_m0_wo0_wi15_r0_delayr120_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi15_r0_delayr120_wraddr_q <= "000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi15_r0_delayr120_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi15_r0_delayr120_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi15_r0_delayr120_mem(DUALMEM,3698)@10
    u0_m0_wo0_wi15_r0_delayr120_mem_ia <= STD_LOGIC_VECTOR(xIn_15);
    u0_m0_wo0_wi15_r0_delayr120_mem_aa <= u0_m0_wo0_wi15_r0_delayr120_wraddr_q;
    u0_m0_wo0_wi15_r0_delayr120_mem_ab <= u0_m0_wo0_wi15_r0_delayr120_rdmux_q;
    u0_m0_wo0_wi15_r0_delayr120_mem_reset0 <= areset;
    u0_m0_wo0_wi15_r0_delayr120_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi15_r0_delayr120_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi15_r0_delayr120_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi15_r0_delayr120_mem_aa,
        data_a => u0_m0_wo0_wi15_r0_delayr120_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi15_r0_delayr120_mem_ab,
        q_b => u0_m0_wo0_wi15_r0_delayr120_mem_iq
    );
    u0_m0_wo0_wi15_r0_delayr120_mem_q <= u0_m0_wo0_wi15_r0_delayr120_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi15_r0_phasedelay120(DELAY,2539)@10
    u0_m0_wo0_wi15_r0_phasedelay120_q <= u0_m0_wo0_wi15_r0_delayr120_mem_q;

    -- u0_m0_wo0_wi14_r0_delayr119(DELAY,2495)@10
    u0_m0_wo0_wi14_r0_delayr119_q <= u0_m0_wo0_wi14_r0_delayr118_q;

    -- u0_m0_wo0_wi14_r0_delayr118(DELAY,2494)@10
    u0_m0_wo0_wi14_r0_delayr118_q <= u0_m0_wo0_wi14_r0_delayr117_q;

    -- u0_m0_wo0_wi14_r0_delayr117(DELAY,2493)@10
    u0_m0_wo0_wi14_r0_delayr117_q <= u0_m0_wo0_wi14_r0_delayr116_q;

    -- u0_m0_wo0_wi14_r0_delayr116(DELAY,2492)@10
    u0_m0_wo0_wi14_r0_delayr116_q <= u0_m0_wo0_wi14_r0_delayr115_q;

    -- u0_m0_wo0_wi14_r0_delayr115(DELAY,2491)@10
    u0_m0_wo0_wi14_r0_delayr115_q <= u0_m0_wo0_wi14_r0_delayr114_q;

    -- u0_m0_wo0_wi14_r0_delayr114(DELAY,2490)@10
    u0_m0_wo0_wi14_r0_delayr114_q <= u0_m0_wo0_wi14_r0_delayr113_q;

    -- u0_m0_wo0_wi14_r0_delayr113(DELAY,2489)@10
    u0_m0_wo0_wi14_r0_delayr113_q <= u0_m0_wo0_wi14_r0_phasedelay112_q;

    -- u0_m0_wo0_wi14_r0_delayr112_notEnable(LOGICAL,3694)@10
    u0_m0_wo0_wi14_r0_delayr112_notEnable_a <= xIn_v;
    u0_m0_wo0_wi14_r0_delayr112_notEnable_q <= not (u0_m0_wo0_wi14_r0_delayr112_notEnable_a);

    -- u0_m0_wo0_wi14_r0_delayr112_nor(LOGICAL,3695)@10
    u0_m0_wo0_wi14_r0_delayr112_nor_a <= u0_m0_wo0_wi14_r0_delayr112_notEnable_q;
    u0_m0_wo0_wi14_r0_delayr112_nor_b <= u0_m0_wo0_wi14_r0_delayr112_sticky_ena_q;
    u0_m0_wo0_wi14_r0_delayr112_nor_q <= not (u0_m0_wo0_wi14_r0_delayr112_nor_a or u0_m0_wo0_wi14_r0_delayr112_nor_b);

    -- u0_m0_wo0_wi14_r0_delayr112_mem_top(CONSTANT,3691)
    u0_m0_wo0_wi14_r0_delayr112_mem_top_q <= "01110";

    -- u0_m0_wo0_wi14_r0_delayr112_cmp(LOGICAL,3692)@10
    u0_m0_wo0_wi14_r0_delayr112_cmp_a <= u0_m0_wo0_wi14_r0_delayr112_mem_top_q;
    u0_m0_wo0_wi14_r0_delayr112_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi14_r0_delayr112_rdmux_q);
    u0_m0_wo0_wi14_r0_delayr112_cmp_q <= "1" WHEN u0_m0_wo0_wi14_r0_delayr112_cmp_a = u0_m0_wo0_wi14_r0_delayr112_cmp_b ELSE "0";

    -- u0_m0_wo0_wi14_r0_delayr112_cmpReg(REG,3693)@10
    u0_m0_wo0_wi14_r0_delayr112_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi14_r0_delayr112_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi14_r0_delayr112_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi14_r0_delayr112_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi14_r0_delayr112_sticky_ena(REG,3696)@10
    u0_m0_wo0_wi14_r0_delayr112_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi14_r0_delayr112_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi14_r0_delayr112_nor_q = "1") THEN
                u0_m0_wo0_wi14_r0_delayr112_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi14_r0_delayr112_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi14_r0_delayr112_enaAnd(LOGICAL,3697)@10
    u0_m0_wo0_wi14_r0_delayr112_enaAnd_a <= u0_m0_wo0_wi14_r0_delayr112_sticky_ena_q;
    u0_m0_wo0_wi14_r0_delayr112_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi14_r0_delayr112_enaAnd_q <= u0_m0_wo0_wi14_r0_delayr112_enaAnd_a and u0_m0_wo0_wi14_r0_delayr112_enaAnd_b;

    -- u0_m0_wo0_wi14_r0_delayr112_rdcnt(COUNTER,3688)@10
    -- every=1, low=0, high=14, step=1, init=1
    u0_m0_wo0_wi14_r0_delayr112_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi14_r0_delayr112_rdcnt_i <= TO_UNSIGNED(1, 4);
            u0_m0_wo0_wi14_r0_delayr112_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi14_r0_delayr112_rdcnt_i = TO_UNSIGNED(13, 4)) THEN
                    u0_m0_wo0_wi14_r0_delayr112_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi14_r0_delayr112_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi14_r0_delayr112_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi14_r0_delayr112_rdcnt_i <= u0_m0_wo0_wi14_r0_delayr112_rdcnt_i - 14;
                ELSE
                    u0_m0_wo0_wi14_r0_delayr112_rdcnt_i <= u0_m0_wo0_wi14_r0_delayr112_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi14_r0_delayr112_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi14_r0_delayr112_rdcnt_i, 4)));

    -- u0_m0_wo0_wi14_r0_delayr112_rdmux(MUX,3689)@10
    u0_m0_wo0_wi14_r0_delayr112_rdmux_s <= xIn_v;
    u0_m0_wo0_wi14_r0_delayr112_rdmux: PROCESS (u0_m0_wo0_wi14_r0_delayr112_rdmux_s, u0_m0_wo0_wi14_r0_delayr112_wraddr_q, u0_m0_wo0_wi14_r0_delayr112_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi14_r0_delayr112_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi14_r0_delayr112_rdmux_q <= u0_m0_wo0_wi14_r0_delayr112_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi14_r0_delayr112_rdmux_q <= u0_m0_wo0_wi14_r0_delayr112_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi14_r0_delayr112_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi14_r0_delayr112_wraddr(REG,3690)@10
    u0_m0_wo0_wi14_r0_delayr112_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi14_r0_delayr112_wraddr_q <= "0000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi14_r0_delayr112_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi14_r0_delayr112_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi14_r0_delayr112_mem(DUALMEM,3687)@10
    u0_m0_wo0_wi14_r0_delayr112_mem_ia <= STD_LOGIC_VECTOR(xIn_14);
    u0_m0_wo0_wi14_r0_delayr112_mem_aa <= u0_m0_wo0_wi14_r0_delayr112_wraddr_q;
    u0_m0_wo0_wi14_r0_delayr112_mem_ab <= u0_m0_wo0_wi14_r0_delayr112_rdmux_q;
    u0_m0_wo0_wi14_r0_delayr112_mem_reset0 <= areset;
    u0_m0_wo0_wi14_r0_delayr112_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi14_r0_delayr112_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi14_r0_delayr112_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi14_r0_delayr112_mem_aa,
        data_a => u0_m0_wo0_wi14_r0_delayr112_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi14_r0_delayr112_mem_ab,
        q_b => u0_m0_wo0_wi14_r0_delayr112_mem_iq
    );
    u0_m0_wo0_wi14_r0_delayr112_mem_q <= u0_m0_wo0_wi14_r0_delayr112_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi14_r0_phasedelay112(DELAY,2377)@10
    u0_m0_wo0_wi14_r0_phasedelay112_q <= u0_m0_wo0_wi14_r0_delayr112_mem_q;

    -- u0_m0_wo0_wi13_r0_delayr111(DELAY,2325)@10
    u0_m0_wo0_wi13_r0_delayr111_q <= u0_m0_wo0_wi13_r0_delayr110_q;

    -- u0_m0_wo0_wi13_r0_delayr110(DELAY,2324)@10
    u0_m0_wo0_wi13_r0_delayr110_q <= u0_m0_wo0_wi13_r0_delayr109_q;

    -- u0_m0_wo0_wi13_r0_delayr109(DELAY,2323)@10
    u0_m0_wo0_wi13_r0_delayr109_q <= u0_m0_wo0_wi13_r0_delayr108_q;

    -- u0_m0_wo0_wi13_r0_delayr108(DELAY,2322)@10
    u0_m0_wo0_wi13_r0_delayr108_q <= u0_m0_wo0_wi13_r0_delayr107_q;

    -- u0_m0_wo0_wi13_r0_delayr107(DELAY,2321)@10
    u0_m0_wo0_wi13_r0_delayr107_q <= u0_m0_wo0_wi13_r0_delayr106_q;

    -- u0_m0_wo0_wi13_r0_delayr106(DELAY,2320)@10
    u0_m0_wo0_wi13_r0_delayr106_q <= u0_m0_wo0_wi13_r0_delayr105_q;

    -- u0_m0_wo0_wi13_r0_delayr105(DELAY,2319)@10
    u0_m0_wo0_wi13_r0_delayr105_q <= u0_m0_wo0_wi13_r0_phasedelay104_q;

    -- u0_m0_wo0_wi13_r0_delayr104_notEnable(LOGICAL,3683)@10
    u0_m0_wo0_wi13_r0_delayr104_notEnable_a <= xIn_v;
    u0_m0_wo0_wi13_r0_delayr104_notEnable_q <= not (u0_m0_wo0_wi13_r0_delayr104_notEnable_a);

    -- u0_m0_wo0_wi13_r0_delayr104_nor(LOGICAL,3684)@10
    u0_m0_wo0_wi13_r0_delayr104_nor_a <= u0_m0_wo0_wi13_r0_delayr104_notEnable_q;
    u0_m0_wo0_wi13_r0_delayr104_nor_b <= u0_m0_wo0_wi13_r0_delayr104_sticky_ena_q;
    u0_m0_wo0_wi13_r0_delayr104_nor_q <= not (u0_m0_wo0_wi13_r0_delayr104_nor_a or u0_m0_wo0_wi13_r0_delayr104_nor_b);

    -- u0_m0_wo0_wi13_r0_delayr104_mem_top(CONSTANT,3680)
    u0_m0_wo0_wi13_r0_delayr104_mem_top_q <= "010110";

    -- u0_m0_wo0_wi13_r0_delayr104_cmp(LOGICAL,3681)@10
    u0_m0_wo0_wi13_r0_delayr104_cmp_a <= u0_m0_wo0_wi13_r0_delayr104_mem_top_q;
    u0_m0_wo0_wi13_r0_delayr104_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi13_r0_delayr104_rdmux_q);
    u0_m0_wo0_wi13_r0_delayr104_cmp_q <= "1" WHEN u0_m0_wo0_wi13_r0_delayr104_cmp_a = u0_m0_wo0_wi13_r0_delayr104_cmp_b ELSE "0";

    -- u0_m0_wo0_wi13_r0_delayr104_cmpReg(REG,3682)@10
    u0_m0_wo0_wi13_r0_delayr104_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi13_r0_delayr104_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi13_r0_delayr104_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi13_r0_delayr104_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi13_r0_delayr104_sticky_ena(REG,3685)@10
    u0_m0_wo0_wi13_r0_delayr104_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi13_r0_delayr104_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi13_r0_delayr104_nor_q = "1") THEN
                u0_m0_wo0_wi13_r0_delayr104_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi13_r0_delayr104_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi13_r0_delayr104_enaAnd(LOGICAL,3686)@10
    u0_m0_wo0_wi13_r0_delayr104_enaAnd_a <= u0_m0_wo0_wi13_r0_delayr104_sticky_ena_q;
    u0_m0_wo0_wi13_r0_delayr104_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi13_r0_delayr104_enaAnd_q <= u0_m0_wo0_wi13_r0_delayr104_enaAnd_a and u0_m0_wo0_wi13_r0_delayr104_enaAnd_b;

    -- u0_m0_wo0_wi13_r0_delayr104_rdcnt(COUNTER,3677)@10
    -- every=1, low=0, high=22, step=1, init=1
    u0_m0_wo0_wi13_r0_delayr104_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi13_r0_delayr104_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi13_r0_delayr104_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi13_r0_delayr104_rdcnt_i = TO_UNSIGNED(21, 5)) THEN
                    u0_m0_wo0_wi13_r0_delayr104_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi13_r0_delayr104_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi13_r0_delayr104_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi13_r0_delayr104_rdcnt_i <= u0_m0_wo0_wi13_r0_delayr104_rdcnt_i - 22;
                ELSE
                    u0_m0_wo0_wi13_r0_delayr104_rdcnt_i <= u0_m0_wo0_wi13_r0_delayr104_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi13_r0_delayr104_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi13_r0_delayr104_rdcnt_i, 5)));

    -- u0_m0_wo0_wi13_r0_delayr104_rdmux(MUX,3678)@10
    u0_m0_wo0_wi13_r0_delayr104_rdmux_s <= xIn_v;
    u0_m0_wo0_wi13_r0_delayr104_rdmux: PROCESS (u0_m0_wo0_wi13_r0_delayr104_rdmux_s, u0_m0_wo0_wi13_r0_delayr104_wraddr_q, u0_m0_wo0_wi13_r0_delayr104_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi13_r0_delayr104_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi13_r0_delayr104_rdmux_q <= u0_m0_wo0_wi13_r0_delayr104_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi13_r0_delayr104_rdmux_q <= u0_m0_wo0_wi13_r0_delayr104_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi13_r0_delayr104_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi13_r0_delayr104_wraddr(REG,3679)@10
    u0_m0_wo0_wi13_r0_delayr104_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi13_r0_delayr104_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi13_r0_delayr104_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi13_r0_delayr104_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi13_r0_delayr104_mem(DUALMEM,3676)@10
    u0_m0_wo0_wi13_r0_delayr104_mem_ia <= STD_LOGIC_VECTOR(xIn_13);
    u0_m0_wo0_wi13_r0_delayr104_mem_aa <= u0_m0_wo0_wi13_r0_delayr104_wraddr_q;
    u0_m0_wo0_wi13_r0_delayr104_mem_ab <= u0_m0_wo0_wi13_r0_delayr104_rdmux_q;
    u0_m0_wo0_wi13_r0_delayr104_mem_reset0 <= areset;
    u0_m0_wo0_wi13_r0_delayr104_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi13_r0_delayr104_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi13_r0_delayr104_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi13_r0_delayr104_mem_aa,
        data_a => u0_m0_wo0_wi13_r0_delayr104_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi13_r0_delayr104_mem_ab,
        q_b => u0_m0_wo0_wi13_r0_delayr104_mem_iq
    );
    u0_m0_wo0_wi13_r0_delayr104_mem_q <= u0_m0_wo0_wi13_r0_delayr104_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi13_r0_phasedelay104(DELAY,2215)@10
    u0_m0_wo0_wi13_r0_phasedelay104_q <= u0_m0_wo0_wi13_r0_delayr104_mem_q;

    -- u0_m0_wo0_wi12_r0_delayr103(DELAY,2155)@10
    u0_m0_wo0_wi12_r0_delayr103_q <= u0_m0_wo0_wi12_r0_delayr102_q;

    -- u0_m0_wo0_wi12_r0_delayr102(DELAY,2154)@10
    u0_m0_wo0_wi12_r0_delayr102_q <= u0_m0_wo0_wi12_r0_delayr101_q;

    -- u0_m0_wo0_wi12_r0_delayr101(DELAY,2153)@10
    u0_m0_wo0_wi12_r0_delayr101_q <= u0_m0_wo0_wi12_r0_delayr100_q;

    -- u0_m0_wo0_wi12_r0_delayr100(DELAY,2152)@10
    u0_m0_wo0_wi12_r0_delayr100_q <= u0_m0_wo0_wi12_r0_delayr99_q;

    -- u0_m0_wo0_wi12_r0_delayr99(DELAY,2151)@10
    u0_m0_wo0_wi12_r0_delayr99_q <= u0_m0_wo0_wi12_r0_delayr98_q;

    -- u0_m0_wo0_wi12_r0_delayr98(DELAY,2150)@10
    u0_m0_wo0_wi12_r0_delayr98_q <= u0_m0_wo0_wi12_r0_delayr97_q;

    -- u0_m0_wo0_wi12_r0_delayr97(DELAY,2149)@10
    u0_m0_wo0_wi12_r0_delayr97_q <= u0_m0_wo0_wi12_r0_phasedelay96_q;

    -- u0_m0_wo0_wi12_r0_delayr96_notEnable(LOGICAL,3672)@10
    u0_m0_wo0_wi12_r0_delayr96_notEnable_a <= xIn_v;
    u0_m0_wo0_wi12_r0_delayr96_notEnable_q <= not (u0_m0_wo0_wi12_r0_delayr96_notEnable_a);

    -- u0_m0_wo0_wi12_r0_delayr96_nor(LOGICAL,3673)@10
    u0_m0_wo0_wi12_r0_delayr96_nor_a <= u0_m0_wo0_wi12_r0_delayr96_notEnable_q;
    u0_m0_wo0_wi12_r0_delayr96_nor_b <= u0_m0_wo0_wi12_r0_delayr96_sticky_ena_q;
    u0_m0_wo0_wi12_r0_delayr96_nor_q <= not (u0_m0_wo0_wi12_r0_delayr96_nor_a or u0_m0_wo0_wi12_r0_delayr96_nor_b);

    -- u0_m0_wo0_wi12_r0_delayr96_mem_top(CONSTANT,3669)
    u0_m0_wo0_wi12_r0_delayr96_mem_top_q <= "011110";

    -- u0_m0_wo0_wi12_r0_delayr96_cmp(LOGICAL,3670)@10
    u0_m0_wo0_wi12_r0_delayr96_cmp_a <= u0_m0_wo0_wi12_r0_delayr96_mem_top_q;
    u0_m0_wo0_wi12_r0_delayr96_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi12_r0_delayr96_rdmux_q);
    u0_m0_wo0_wi12_r0_delayr96_cmp_q <= "1" WHEN u0_m0_wo0_wi12_r0_delayr96_cmp_a = u0_m0_wo0_wi12_r0_delayr96_cmp_b ELSE "0";

    -- u0_m0_wo0_wi12_r0_delayr96_cmpReg(REG,3671)@10
    u0_m0_wo0_wi12_r0_delayr96_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi12_r0_delayr96_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi12_r0_delayr96_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi12_r0_delayr96_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi12_r0_delayr96_sticky_ena(REG,3674)@10
    u0_m0_wo0_wi12_r0_delayr96_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi12_r0_delayr96_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi12_r0_delayr96_nor_q = "1") THEN
                u0_m0_wo0_wi12_r0_delayr96_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi12_r0_delayr96_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi12_r0_delayr96_enaAnd(LOGICAL,3675)@10
    u0_m0_wo0_wi12_r0_delayr96_enaAnd_a <= u0_m0_wo0_wi12_r0_delayr96_sticky_ena_q;
    u0_m0_wo0_wi12_r0_delayr96_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi12_r0_delayr96_enaAnd_q <= u0_m0_wo0_wi12_r0_delayr96_enaAnd_a and u0_m0_wo0_wi12_r0_delayr96_enaAnd_b;

    -- u0_m0_wo0_wi12_r0_delayr96_rdcnt(COUNTER,3666)@10
    -- every=1, low=0, high=30, step=1, init=1
    u0_m0_wo0_wi12_r0_delayr96_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi12_r0_delayr96_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi12_r0_delayr96_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi12_r0_delayr96_rdcnt_i = TO_UNSIGNED(29, 5)) THEN
                    u0_m0_wo0_wi12_r0_delayr96_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi12_r0_delayr96_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi12_r0_delayr96_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi12_r0_delayr96_rdcnt_i <= u0_m0_wo0_wi12_r0_delayr96_rdcnt_i - 30;
                ELSE
                    u0_m0_wo0_wi12_r0_delayr96_rdcnt_i <= u0_m0_wo0_wi12_r0_delayr96_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi12_r0_delayr96_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi12_r0_delayr96_rdcnt_i, 5)));

    -- u0_m0_wo0_wi12_r0_delayr96_rdmux(MUX,3667)@10
    u0_m0_wo0_wi12_r0_delayr96_rdmux_s <= xIn_v;
    u0_m0_wo0_wi12_r0_delayr96_rdmux: PROCESS (u0_m0_wo0_wi12_r0_delayr96_rdmux_s, u0_m0_wo0_wi12_r0_delayr96_wraddr_q, u0_m0_wo0_wi12_r0_delayr96_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi12_r0_delayr96_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi12_r0_delayr96_rdmux_q <= u0_m0_wo0_wi12_r0_delayr96_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi12_r0_delayr96_rdmux_q <= u0_m0_wo0_wi12_r0_delayr96_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi12_r0_delayr96_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi12_r0_delayr96_wraddr(REG,3668)@10
    u0_m0_wo0_wi12_r0_delayr96_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi12_r0_delayr96_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi12_r0_delayr96_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi12_r0_delayr96_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi12_r0_delayr96_mem(DUALMEM,3665)@10
    u0_m0_wo0_wi12_r0_delayr96_mem_ia <= STD_LOGIC_VECTOR(xIn_12);
    u0_m0_wo0_wi12_r0_delayr96_mem_aa <= u0_m0_wo0_wi12_r0_delayr96_wraddr_q;
    u0_m0_wo0_wi12_r0_delayr96_mem_ab <= u0_m0_wo0_wi12_r0_delayr96_rdmux_q;
    u0_m0_wo0_wi12_r0_delayr96_mem_reset0 <= areset;
    u0_m0_wo0_wi12_r0_delayr96_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi12_r0_delayr96_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi12_r0_delayr96_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi12_r0_delayr96_mem_aa,
        data_a => u0_m0_wo0_wi12_r0_delayr96_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi12_r0_delayr96_mem_ab,
        q_b => u0_m0_wo0_wi12_r0_delayr96_mem_iq
    );
    u0_m0_wo0_wi12_r0_delayr96_mem_q <= u0_m0_wo0_wi12_r0_delayr96_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi12_r0_phasedelay96(DELAY,2053)@10
    u0_m0_wo0_wi12_r0_phasedelay96_q <= u0_m0_wo0_wi12_r0_delayr96_mem_q;

    -- u0_m0_wo0_cma3(CHAINMULTADD,3509)@10
    -- altera synthesis_off
    u0_m0_wo0_cma3_k0 <= (
        0 => TO_SIGNED(31,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k1 <= (
        0 => TO_SIGNED(66,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k2 <= (
        0 => TO_SIGNED(100,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k3 <= (
        0 => TO_SIGNED(123,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k4 <= (
        0 => TO_SIGNED(124,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k5 <= (
        0 => TO_SIGNED(105,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k6 <= (
        0 => TO_SIGNED(71,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k7 <= (
        0 => TO_SIGNED(36,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k8 <= (
        0 => TO_SIGNED(29,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k9 <= (
        0 => TO_SIGNED(64,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k10 <= (
        0 => TO_SIGNED(99,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k11 <= (
        0 => TO_SIGNED(122,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k12 <= (
        0 => TO_SIGNED(125,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k13 <= (
        0 => TO_SIGNED(106,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k14 <= (
        0 => TO_SIGNED(73,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k15 <= (
        0 => TO_SIGNED(37,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k16 <= (
        0 => TO_SIGNED(28,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k17 <= (
        0 => TO_SIGNED(62,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k18 <= (
        0 => TO_SIGNED(97,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k19 <= (
        0 => TO_SIGNED(121,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k20 <= (
        0 => TO_SIGNED(125,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k21 <= (
        0 => TO_SIGNED(107,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k22 <= (
        0 => TO_SIGNED(75,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k23 <= (
        0 => TO_SIGNED(39,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k24 <= (
        0 => TO_SIGNED(26,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k25 <= (
        0 => TO_SIGNED(60,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k26 <= (
        0 => TO_SIGNED(96,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k27 <= (
        0 => TO_SIGNED(121,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k28 <= (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k29 <= (
        0 => TO_SIGNED(109,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k30 <= (
        0 => TO_SIGNED(77,11),
        others => (others => '0'));
    u0_m0_wo0_cma3_k31 <= (
        0 => TO_SIGNED(41,11),
        others => (others => '0'));
    -- altera synthesis_on
    u0_m0_wo0_cma3_r(0) <= u0_m0_wo0_cma3_k0(TO_INTEGER(u0_m0_wo0_cma3_c0(0)));
    u0_m0_wo0_cma3_r(1) <= u0_m0_wo0_cma3_k1(TO_INTEGER(u0_m0_wo0_cma3_c0(1)));
    u0_m0_wo0_cma3_r(2) <= u0_m0_wo0_cma3_k2(TO_INTEGER(u0_m0_wo0_cma3_c0(2)));
    u0_m0_wo0_cma3_r(3) <= u0_m0_wo0_cma3_k3(TO_INTEGER(u0_m0_wo0_cma3_c0(3)));
    u0_m0_wo0_cma3_r(4) <= u0_m0_wo0_cma3_k4(TO_INTEGER(u0_m0_wo0_cma3_c0(4)));
    u0_m0_wo0_cma3_r(5) <= u0_m0_wo0_cma3_k5(TO_INTEGER(u0_m0_wo0_cma3_c0(5)));
    u0_m0_wo0_cma3_r(6) <= u0_m0_wo0_cma3_k6(TO_INTEGER(u0_m0_wo0_cma3_c0(6)));
    u0_m0_wo0_cma3_r(7) <= u0_m0_wo0_cma3_k7(TO_INTEGER(u0_m0_wo0_cma3_c0(7)));
    u0_m0_wo0_cma3_r(8) <= u0_m0_wo0_cma3_k8(TO_INTEGER(u0_m0_wo0_cma3_c0(8)));
    u0_m0_wo0_cma3_r(9) <= u0_m0_wo0_cma3_k9(TO_INTEGER(u0_m0_wo0_cma3_c0(9)));
    u0_m0_wo0_cma3_r(10) <= u0_m0_wo0_cma3_k10(TO_INTEGER(u0_m0_wo0_cma3_c0(10)));
    u0_m0_wo0_cma3_r(11) <= u0_m0_wo0_cma3_k11(TO_INTEGER(u0_m0_wo0_cma3_c0(11)));
    u0_m0_wo0_cma3_r(12) <= u0_m0_wo0_cma3_k12(TO_INTEGER(u0_m0_wo0_cma3_c0(12)));
    u0_m0_wo0_cma3_r(13) <= u0_m0_wo0_cma3_k13(TO_INTEGER(u0_m0_wo0_cma3_c0(13)));
    u0_m0_wo0_cma3_r(14) <= u0_m0_wo0_cma3_k14(TO_INTEGER(u0_m0_wo0_cma3_c0(14)));
    u0_m0_wo0_cma3_r(15) <= u0_m0_wo0_cma3_k15(TO_INTEGER(u0_m0_wo0_cma3_c0(15)));
    u0_m0_wo0_cma3_r(16) <= u0_m0_wo0_cma3_k16(TO_INTEGER(u0_m0_wo0_cma3_c0(16)));
    u0_m0_wo0_cma3_r(17) <= u0_m0_wo0_cma3_k17(TO_INTEGER(u0_m0_wo0_cma3_c0(17)));
    u0_m0_wo0_cma3_r(18) <= u0_m0_wo0_cma3_k18(TO_INTEGER(u0_m0_wo0_cma3_c0(18)));
    u0_m0_wo0_cma3_r(19) <= u0_m0_wo0_cma3_k19(TO_INTEGER(u0_m0_wo0_cma3_c0(19)));
    u0_m0_wo0_cma3_r(20) <= u0_m0_wo0_cma3_k20(TO_INTEGER(u0_m0_wo0_cma3_c0(20)));
    u0_m0_wo0_cma3_r(21) <= u0_m0_wo0_cma3_k21(TO_INTEGER(u0_m0_wo0_cma3_c0(21)));
    u0_m0_wo0_cma3_r(22) <= u0_m0_wo0_cma3_k22(TO_INTEGER(u0_m0_wo0_cma3_c0(22)));
    u0_m0_wo0_cma3_r(23) <= u0_m0_wo0_cma3_k23(TO_INTEGER(u0_m0_wo0_cma3_c0(23)));
    u0_m0_wo0_cma3_r(24) <= u0_m0_wo0_cma3_k24(TO_INTEGER(u0_m0_wo0_cma3_c0(24)));
    u0_m0_wo0_cma3_r(25) <= u0_m0_wo0_cma3_k25(TO_INTEGER(u0_m0_wo0_cma3_c0(25)));
    u0_m0_wo0_cma3_r(26) <= u0_m0_wo0_cma3_k26(TO_INTEGER(u0_m0_wo0_cma3_c0(26)));
    u0_m0_wo0_cma3_r(27) <= u0_m0_wo0_cma3_k27(TO_INTEGER(u0_m0_wo0_cma3_c0(27)));
    u0_m0_wo0_cma3_r(28) <= u0_m0_wo0_cma3_k28(TO_INTEGER(u0_m0_wo0_cma3_c0(28)));
    u0_m0_wo0_cma3_r(29) <= u0_m0_wo0_cma3_k29(TO_INTEGER(u0_m0_wo0_cma3_c0(29)));
    u0_m0_wo0_cma3_r(30) <= u0_m0_wo0_cma3_k30(TO_INTEGER(u0_m0_wo0_cma3_c0(30)));
    u0_m0_wo0_cma3_r(31) <= u0_m0_wo0_cma3_k31(TO_INTEGER(u0_m0_wo0_cma3_c0(31)));
    u0_m0_wo0_cma3_p(0) <= u0_m0_wo0_cma3_a0(0) * u0_m0_wo0_cma3_r(0);
    u0_m0_wo0_cma3_p(1) <= u0_m0_wo0_cma3_a0(1) * u0_m0_wo0_cma3_r(1);
    u0_m0_wo0_cma3_p(2) <= u0_m0_wo0_cma3_a0(2) * u0_m0_wo0_cma3_r(2);
    u0_m0_wo0_cma3_p(3) <= u0_m0_wo0_cma3_a0(3) * u0_m0_wo0_cma3_r(3);
    u0_m0_wo0_cma3_p(4) <= u0_m0_wo0_cma3_a0(4) * u0_m0_wo0_cma3_r(4);
    u0_m0_wo0_cma3_p(5) <= u0_m0_wo0_cma3_a0(5) * u0_m0_wo0_cma3_r(5);
    u0_m0_wo0_cma3_p(6) <= u0_m0_wo0_cma3_a0(6) * u0_m0_wo0_cma3_r(6);
    u0_m0_wo0_cma3_p(7) <= u0_m0_wo0_cma3_a0(7) * u0_m0_wo0_cma3_r(7);
    u0_m0_wo0_cma3_p(8) <= u0_m0_wo0_cma3_a0(8) * u0_m0_wo0_cma3_r(8);
    u0_m0_wo0_cma3_p(9) <= u0_m0_wo0_cma3_a0(9) * u0_m0_wo0_cma3_r(9);
    u0_m0_wo0_cma3_p(10) <= u0_m0_wo0_cma3_a0(10) * u0_m0_wo0_cma3_r(10);
    u0_m0_wo0_cma3_p(11) <= u0_m0_wo0_cma3_a0(11) * u0_m0_wo0_cma3_r(11);
    u0_m0_wo0_cma3_p(12) <= u0_m0_wo0_cma3_a0(12) * u0_m0_wo0_cma3_r(12);
    u0_m0_wo0_cma3_p(13) <= u0_m0_wo0_cma3_a0(13) * u0_m0_wo0_cma3_r(13);
    u0_m0_wo0_cma3_p(14) <= u0_m0_wo0_cma3_a0(14) * u0_m0_wo0_cma3_r(14);
    u0_m0_wo0_cma3_p(15) <= u0_m0_wo0_cma3_a0(15) * u0_m0_wo0_cma3_r(15);
    u0_m0_wo0_cma3_p(16) <= u0_m0_wo0_cma3_a0(16) * u0_m0_wo0_cma3_r(16);
    u0_m0_wo0_cma3_p(17) <= u0_m0_wo0_cma3_a0(17) * u0_m0_wo0_cma3_r(17);
    u0_m0_wo0_cma3_p(18) <= u0_m0_wo0_cma3_a0(18) * u0_m0_wo0_cma3_r(18);
    u0_m0_wo0_cma3_p(19) <= u0_m0_wo0_cma3_a0(19) * u0_m0_wo0_cma3_r(19);
    u0_m0_wo0_cma3_p(20) <= u0_m0_wo0_cma3_a0(20) * u0_m0_wo0_cma3_r(20);
    u0_m0_wo0_cma3_p(21) <= u0_m0_wo0_cma3_a0(21) * u0_m0_wo0_cma3_r(21);
    u0_m0_wo0_cma3_p(22) <= u0_m0_wo0_cma3_a0(22) * u0_m0_wo0_cma3_r(22);
    u0_m0_wo0_cma3_p(23) <= u0_m0_wo0_cma3_a0(23) * u0_m0_wo0_cma3_r(23);
    u0_m0_wo0_cma3_p(24) <= u0_m0_wo0_cma3_a0(24) * u0_m0_wo0_cma3_r(24);
    u0_m0_wo0_cma3_p(25) <= u0_m0_wo0_cma3_a0(25) * u0_m0_wo0_cma3_r(25);
    u0_m0_wo0_cma3_p(26) <= u0_m0_wo0_cma3_a0(26) * u0_m0_wo0_cma3_r(26);
    u0_m0_wo0_cma3_p(27) <= u0_m0_wo0_cma3_a0(27) * u0_m0_wo0_cma3_r(27);
    u0_m0_wo0_cma3_p(28) <= u0_m0_wo0_cma3_a0(28) * u0_m0_wo0_cma3_r(28);
    u0_m0_wo0_cma3_p(29) <= u0_m0_wo0_cma3_a0(29) * u0_m0_wo0_cma3_r(29);
    u0_m0_wo0_cma3_p(30) <= u0_m0_wo0_cma3_a0(30) * u0_m0_wo0_cma3_r(30);
    u0_m0_wo0_cma3_p(31) <= u0_m0_wo0_cma3_a0(31) * u0_m0_wo0_cma3_r(31);
    u0_m0_wo0_cma3_u(0) <= RESIZE(u0_m0_wo0_cma3_p(0),26);
    u0_m0_wo0_cma3_u(1) <= RESIZE(u0_m0_wo0_cma3_p(1),26);
    u0_m0_wo0_cma3_u(2) <= RESIZE(u0_m0_wo0_cma3_p(2),26);
    u0_m0_wo0_cma3_u(3) <= RESIZE(u0_m0_wo0_cma3_p(3),26);
    u0_m0_wo0_cma3_u(4) <= RESIZE(u0_m0_wo0_cma3_p(4),26);
    u0_m0_wo0_cma3_u(5) <= RESIZE(u0_m0_wo0_cma3_p(5),26);
    u0_m0_wo0_cma3_u(6) <= RESIZE(u0_m0_wo0_cma3_p(6),26);
    u0_m0_wo0_cma3_u(7) <= RESIZE(u0_m0_wo0_cma3_p(7),26);
    u0_m0_wo0_cma3_u(8) <= RESIZE(u0_m0_wo0_cma3_p(8),26);
    u0_m0_wo0_cma3_u(9) <= RESIZE(u0_m0_wo0_cma3_p(9),26);
    u0_m0_wo0_cma3_u(10) <= RESIZE(u0_m0_wo0_cma3_p(10),26);
    u0_m0_wo0_cma3_u(11) <= RESIZE(u0_m0_wo0_cma3_p(11),26);
    u0_m0_wo0_cma3_u(12) <= RESIZE(u0_m0_wo0_cma3_p(12),26);
    u0_m0_wo0_cma3_u(13) <= RESIZE(u0_m0_wo0_cma3_p(13),26);
    u0_m0_wo0_cma3_u(14) <= RESIZE(u0_m0_wo0_cma3_p(14),26);
    u0_m0_wo0_cma3_u(15) <= RESIZE(u0_m0_wo0_cma3_p(15),26);
    u0_m0_wo0_cma3_u(16) <= RESIZE(u0_m0_wo0_cma3_p(16),26);
    u0_m0_wo0_cma3_u(17) <= RESIZE(u0_m0_wo0_cma3_p(17),26);
    u0_m0_wo0_cma3_u(18) <= RESIZE(u0_m0_wo0_cma3_p(18),26);
    u0_m0_wo0_cma3_u(19) <= RESIZE(u0_m0_wo0_cma3_p(19),26);
    u0_m0_wo0_cma3_u(20) <= RESIZE(u0_m0_wo0_cma3_p(20),26);
    u0_m0_wo0_cma3_u(21) <= RESIZE(u0_m0_wo0_cma3_p(21),26);
    u0_m0_wo0_cma3_u(22) <= RESIZE(u0_m0_wo0_cma3_p(22),26);
    u0_m0_wo0_cma3_u(23) <= RESIZE(u0_m0_wo0_cma3_p(23),26);
    u0_m0_wo0_cma3_u(24) <= RESIZE(u0_m0_wo0_cma3_p(24),26);
    u0_m0_wo0_cma3_u(25) <= RESIZE(u0_m0_wo0_cma3_p(25),26);
    u0_m0_wo0_cma3_u(26) <= RESIZE(u0_m0_wo0_cma3_p(26),26);
    u0_m0_wo0_cma3_u(27) <= RESIZE(u0_m0_wo0_cma3_p(27),26);
    u0_m0_wo0_cma3_u(28) <= RESIZE(u0_m0_wo0_cma3_p(28),26);
    u0_m0_wo0_cma3_u(29) <= RESIZE(u0_m0_wo0_cma3_p(29),26);
    u0_m0_wo0_cma3_u(30) <= RESIZE(u0_m0_wo0_cma3_p(30),26);
    u0_m0_wo0_cma3_u(31) <= RESIZE(u0_m0_wo0_cma3_p(31),26);
    u0_m0_wo0_cma3_w(0) <= u0_m0_wo0_cma3_u(0);
    u0_m0_wo0_cma3_w(1) <= u0_m0_wo0_cma3_u(1);
    u0_m0_wo0_cma3_w(2) <= u0_m0_wo0_cma3_u(2);
    u0_m0_wo0_cma3_w(3) <= u0_m0_wo0_cma3_u(3);
    u0_m0_wo0_cma3_w(4) <= u0_m0_wo0_cma3_u(4);
    u0_m0_wo0_cma3_w(5) <= u0_m0_wo0_cma3_u(5);
    u0_m0_wo0_cma3_w(6) <= u0_m0_wo0_cma3_u(6);
    u0_m0_wo0_cma3_w(7) <= u0_m0_wo0_cma3_u(7);
    u0_m0_wo0_cma3_w(8) <= u0_m0_wo0_cma3_u(8);
    u0_m0_wo0_cma3_w(9) <= u0_m0_wo0_cma3_u(9);
    u0_m0_wo0_cma3_w(10) <= u0_m0_wo0_cma3_u(10);
    u0_m0_wo0_cma3_w(11) <= u0_m0_wo0_cma3_u(11);
    u0_m0_wo0_cma3_w(12) <= u0_m0_wo0_cma3_u(12);
    u0_m0_wo0_cma3_w(13) <= u0_m0_wo0_cma3_u(13);
    u0_m0_wo0_cma3_w(14) <= u0_m0_wo0_cma3_u(14);
    u0_m0_wo0_cma3_w(15) <= u0_m0_wo0_cma3_u(15);
    u0_m0_wo0_cma3_w(16) <= u0_m0_wo0_cma3_u(16);
    u0_m0_wo0_cma3_w(17) <= u0_m0_wo0_cma3_u(17);
    u0_m0_wo0_cma3_w(18) <= u0_m0_wo0_cma3_u(18);
    u0_m0_wo0_cma3_w(19) <= u0_m0_wo0_cma3_u(19);
    u0_m0_wo0_cma3_w(20) <= u0_m0_wo0_cma3_u(20);
    u0_m0_wo0_cma3_w(21) <= u0_m0_wo0_cma3_u(21);
    u0_m0_wo0_cma3_w(22) <= u0_m0_wo0_cma3_u(22);
    u0_m0_wo0_cma3_w(23) <= u0_m0_wo0_cma3_u(23);
    u0_m0_wo0_cma3_w(24) <= u0_m0_wo0_cma3_u(24);
    u0_m0_wo0_cma3_w(25) <= u0_m0_wo0_cma3_u(25);
    u0_m0_wo0_cma3_w(26) <= u0_m0_wo0_cma3_u(26);
    u0_m0_wo0_cma3_w(27) <= u0_m0_wo0_cma3_u(27);
    u0_m0_wo0_cma3_w(28) <= u0_m0_wo0_cma3_u(28);
    u0_m0_wo0_cma3_w(29) <= u0_m0_wo0_cma3_u(29);
    u0_m0_wo0_cma3_w(30) <= u0_m0_wo0_cma3_u(30);
    u0_m0_wo0_cma3_w(31) <= u0_m0_wo0_cma3_u(31);
    u0_m0_wo0_cma3_x(0) <= u0_m0_wo0_cma3_w(0);
    u0_m0_wo0_cma3_x(1) <= u0_m0_wo0_cma3_w(1);
    u0_m0_wo0_cma3_x(2) <= u0_m0_wo0_cma3_w(2);
    u0_m0_wo0_cma3_x(3) <= u0_m0_wo0_cma3_w(3);
    u0_m0_wo0_cma3_x(4) <= u0_m0_wo0_cma3_w(4);
    u0_m0_wo0_cma3_x(5) <= u0_m0_wo0_cma3_w(5);
    u0_m0_wo0_cma3_x(6) <= u0_m0_wo0_cma3_w(6);
    u0_m0_wo0_cma3_x(7) <= u0_m0_wo0_cma3_w(7);
    u0_m0_wo0_cma3_x(8) <= u0_m0_wo0_cma3_w(8);
    u0_m0_wo0_cma3_x(9) <= u0_m0_wo0_cma3_w(9);
    u0_m0_wo0_cma3_x(10) <= u0_m0_wo0_cma3_w(10);
    u0_m0_wo0_cma3_x(11) <= u0_m0_wo0_cma3_w(11);
    u0_m0_wo0_cma3_x(12) <= u0_m0_wo0_cma3_w(12);
    u0_m0_wo0_cma3_x(13) <= u0_m0_wo0_cma3_w(13);
    u0_m0_wo0_cma3_x(14) <= u0_m0_wo0_cma3_w(14);
    u0_m0_wo0_cma3_x(15) <= u0_m0_wo0_cma3_w(15);
    u0_m0_wo0_cma3_x(16) <= u0_m0_wo0_cma3_w(16);
    u0_m0_wo0_cma3_x(17) <= u0_m0_wo0_cma3_w(17);
    u0_m0_wo0_cma3_x(18) <= u0_m0_wo0_cma3_w(18);
    u0_m0_wo0_cma3_x(19) <= u0_m0_wo0_cma3_w(19);
    u0_m0_wo0_cma3_x(20) <= u0_m0_wo0_cma3_w(20);
    u0_m0_wo0_cma3_x(21) <= u0_m0_wo0_cma3_w(21);
    u0_m0_wo0_cma3_x(22) <= u0_m0_wo0_cma3_w(22);
    u0_m0_wo0_cma3_x(23) <= u0_m0_wo0_cma3_w(23);
    u0_m0_wo0_cma3_x(24) <= u0_m0_wo0_cma3_w(24);
    u0_m0_wo0_cma3_x(25) <= u0_m0_wo0_cma3_w(25);
    u0_m0_wo0_cma3_x(26) <= u0_m0_wo0_cma3_w(26);
    u0_m0_wo0_cma3_x(27) <= u0_m0_wo0_cma3_w(27);
    u0_m0_wo0_cma3_x(28) <= u0_m0_wo0_cma3_w(28);
    u0_m0_wo0_cma3_x(29) <= u0_m0_wo0_cma3_w(29);
    u0_m0_wo0_cma3_x(30) <= u0_m0_wo0_cma3_w(30);
    u0_m0_wo0_cma3_x(31) <= u0_m0_wo0_cma3_w(31);
    u0_m0_wo0_cma3_y(0) <= u0_m0_wo0_cma3_s(1) + u0_m0_wo0_cma3_x(0);
    u0_m0_wo0_cma3_y(1) <= u0_m0_wo0_cma3_s(2) + u0_m0_wo0_cma3_x(1);
    u0_m0_wo0_cma3_y(2) <= u0_m0_wo0_cma3_s(3) + u0_m0_wo0_cma3_x(2);
    u0_m0_wo0_cma3_y(3) <= u0_m0_wo0_cma3_s(4) + u0_m0_wo0_cma3_x(3);
    u0_m0_wo0_cma3_y(4) <= u0_m0_wo0_cma3_s(5) + u0_m0_wo0_cma3_x(4);
    u0_m0_wo0_cma3_y(5) <= u0_m0_wo0_cma3_s(6) + u0_m0_wo0_cma3_x(5);
    u0_m0_wo0_cma3_y(6) <= u0_m0_wo0_cma3_s(7) + u0_m0_wo0_cma3_x(6);
    u0_m0_wo0_cma3_y(7) <= u0_m0_wo0_cma3_s(8) + u0_m0_wo0_cma3_x(7);
    u0_m0_wo0_cma3_y(8) <= u0_m0_wo0_cma3_s(9) + u0_m0_wo0_cma3_x(8);
    u0_m0_wo0_cma3_y(9) <= u0_m0_wo0_cma3_s(10) + u0_m0_wo0_cma3_x(9);
    u0_m0_wo0_cma3_y(10) <= u0_m0_wo0_cma3_s(11) + u0_m0_wo0_cma3_x(10);
    u0_m0_wo0_cma3_y(11) <= u0_m0_wo0_cma3_s(12) + u0_m0_wo0_cma3_x(11);
    u0_m0_wo0_cma3_y(12) <= u0_m0_wo0_cma3_s(13) + u0_m0_wo0_cma3_x(12);
    u0_m0_wo0_cma3_y(13) <= u0_m0_wo0_cma3_s(14) + u0_m0_wo0_cma3_x(13);
    u0_m0_wo0_cma3_y(14) <= u0_m0_wo0_cma3_s(15) + u0_m0_wo0_cma3_x(14);
    u0_m0_wo0_cma3_y(15) <= u0_m0_wo0_cma3_s(16) + u0_m0_wo0_cma3_x(15);
    u0_m0_wo0_cma3_y(16) <= u0_m0_wo0_cma3_s(17) + u0_m0_wo0_cma3_x(16);
    u0_m0_wo0_cma3_y(17) <= u0_m0_wo0_cma3_s(18) + u0_m0_wo0_cma3_x(17);
    u0_m0_wo0_cma3_y(18) <= u0_m0_wo0_cma3_s(19) + u0_m0_wo0_cma3_x(18);
    u0_m0_wo0_cma3_y(19) <= u0_m0_wo0_cma3_s(20) + u0_m0_wo0_cma3_x(19);
    u0_m0_wo0_cma3_y(20) <= u0_m0_wo0_cma3_s(21) + u0_m0_wo0_cma3_x(20);
    u0_m0_wo0_cma3_y(21) <= u0_m0_wo0_cma3_s(22) + u0_m0_wo0_cma3_x(21);
    u0_m0_wo0_cma3_y(22) <= u0_m0_wo0_cma3_s(23) + u0_m0_wo0_cma3_x(22);
    u0_m0_wo0_cma3_y(23) <= u0_m0_wo0_cma3_s(24) + u0_m0_wo0_cma3_x(23);
    u0_m0_wo0_cma3_y(24) <= u0_m0_wo0_cma3_s(25) + u0_m0_wo0_cma3_x(24);
    u0_m0_wo0_cma3_y(25) <= u0_m0_wo0_cma3_s(26) + u0_m0_wo0_cma3_x(25);
    u0_m0_wo0_cma3_y(26) <= u0_m0_wo0_cma3_s(27) + u0_m0_wo0_cma3_x(26);
    u0_m0_wo0_cma3_y(27) <= u0_m0_wo0_cma3_s(28) + u0_m0_wo0_cma3_x(27);
    u0_m0_wo0_cma3_y(28) <= u0_m0_wo0_cma3_s(29) + u0_m0_wo0_cma3_x(28);
    u0_m0_wo0_cma3_y(29) <= u0_m0_wo0_cma3_s(30) + u0_m0_wo0_cma3_x(29);
    u0_m0_wo0_cma3_y(30) <= u0_m0_wo0_cma3_s(31) + u0_m0_wo0_cma3_x(30);
    u0_m0_wo0_cma3_y(31) <= u0_m0_wo0_cma3_x(31);
    u0_m0_wo0_cma3_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma3_a0 <= (others => (others => '0'));
            u0_m0_wo0_cma3_c0 <= (others => (others => '0'));
            u0_m0_wo0_cma3_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                u0_m0_wo0_cma3_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_wi12_r0_phasedelay96_q),10);
                u0_m0_wo0_cma3_a0(1) <= RESIZE(SIGNED(u0_m0_wo0_wi12_r0_delayr97_q),10);
                u0_m0_wo0_cma3_a0(2) <= RESIZE(SIGNED(u0_m0_wo0_wi12_r0_delayr98_q),10);
                u0_m0_wo0_cma3_a0(3) <= RESIZE(SIGNED(u0_m0_wo0_wi12_r0_delayr99_q),10);
                u0_m0_wo0_cma3_a0(4) <= RESIZE(SIGNED(u0_m0_wo0_wi12_r0_delayr100_q),10);
                u0_m0_wo0_cma3_a0(5) <= RESIZE(SIGNED(u0_m0_wo0_wi12_r0_delayr101_q),10);
                u0_m0_wo0_cma3_a0(6) <= RESIZE(SIGNED(u0_m0_wo0_wi12_r0_delayr102_q),10);
                u0_m0_wo0_cma3_a0(7) <= RESIZE(SIGNED(u0_m0_wo0_wi12_r0_delayr103_q),10);
                u0_m0_wo0_cma3_a0(8) <= RESIZE(SIGNED(u0_m0_wo0_wi13_r0_phasedelay104_q),10);
                u0_m0_wo0_cma3_a0(9) <= RESIZE(SIGNED(u0_m0_wo0_wi13_r0_delayr105_q),10);
                u0_m0_wo0_cma3_a0(10) <= RESIZE(SIGNED(u0_m0_wo0_wi13_r0_delayr106_q),10);
                u0_m0_wo0_cma3_a0(11) <= RESIZE(SIGNED(u0_m0_wo0_wi13_r0_delayr107_q),10);
                u0_m0_wo0_cma3_a0(12) <= RESIZE(SIGNED(u0_m0_wo0_wi13_r0_delayr108_q),10);
                u0_m0_wo0_cma3_a0(13) <= RESIZE(SIGNED(u0_m0_wo0_wi13_r0_delayr109_q),10);
                u0_m0_wo0_cma3_a0(14) <= RESIZE(SIGNED(u0_m0_wo0_wi13_r0_delayr110_q),10);
                u0_m0_wo0_cma3_a0(15) <= RESIZE(SIGNED(u0_m0_wo0_wi13_r0_delayr111_q),10);
                u0_m0_wo0_cma3_a0(16) <= RESIZE(SIGNED(u0_m0_wo0_wi14_r0_phasedelay112_q),10);
                u0_m0_wo0_cma3_a0(17) <= RESIZE(SIGNED(u0_m0_wo0_wi14_r0_delayr113_q),10);
                u0_m0_wo0_cma3_a0(18) <= RESIZE(SIGNED(u0_m0_wo0_wi14_r0_delayr114_q),10);
                u0_m0_wo0_cma3_a0(19) <= RESIZE(SIGNED(u0_m0_wo0_wi14_r0_delayr115_q),10);
                u0_m0_wo0_cma3_a0(20) <= RESIZE(SIGNED(u0_m0_wo0_wi14_r0_delayr116_q),10);
                u0_m0_wo0_cma3_a0(21) <= RESIZE(SIGNED(u0_m0_wo0_wi14_r0_delayr117_q),10);
                u0_m0_wo0_cma3_a0(22) <= RESIZE(SIGNED(u0_m0_wo0_wi14_r0_delayr118_q),10);
                u0_m0_wo0_cma3_a0(23) <= RESIZE(SIGNED(u0_m0_wo0_wi14_r0_delayr119_q),10);
                u0_m0_wo0_cma3_a0(24) <= RESIZE(SIGNED(u0_m0_wo0_wi15_r0_phasedelay120_q),10);
                u0_m0_wo0_cma3_a0(25) <= RESIZE(SIGNED(u0_m0_wo0_wi15_r0_delayr121_q),10);
                u0_m0_wo0_cma3_a0(26) <= RESIZE(SIGNED(u0_m0_wo0_wi15_r0_delayr122_q),10);
                u0_m0_wo0_cma3_a0(27) <= RESIZE(SIGNED(u0_m0_wo0_wi15_r0_delayr123_q),10);
                u0_m0_wo0_cma3_a0(28) <= RESIZE(SIGNED(u0_m0_wo0_wi15_r0_delayr124_q),10);
                u0_m0_wo0_cma3_a0(29) <= RESIZE(SIGNED(u0_m0_wo0_wi15_r0_delayr125_q),10);
                u0_m0_wo0_cma3_a0(30) <= RESIZE(SIGNED(u0_m0_wo0_wi15_r0_delayr126_q),10);
                u0_m0_wo0_cma3_a0(31) <= RESIZE(SIGNED(u0_m0_wo0_wi15_r0_delayr127_q),10);
                u0_m0_wo0_cma3_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(7) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(8) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(9) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(10) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(11) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(12) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(13) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(14) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(15) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(16) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(17) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(18) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(19) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(20) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(21) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(22) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(23) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(24) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(25) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(26) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(27) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(28) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(29) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(30) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma3_c0(31) <= RESIZE(UNSIGNED(GND_q),3);
            END IF;
            IF (d_u0_m0_wo0_compute_q_11_q = "1") THEN
                u0_m0_wo0_cma3_s(0) <= u0_m0_wo0_cma3_y(0);
                u0_m0_wo0_cma3_s(1) <= u0_m0_wo0_cma3_y(1);
                u0_m0_wo0_cma3_s(2) <= u0_m0_wo0_cma3_y(2);
                u0_m0_wo0_cma3_s(3) <= u0_m0_wo0_cma3_y(3);
                u0_m0_wo0_cma3_s(4) <= u0_m0_wo0_cma3_y(4);
                u0_m0_wo0_cma3_s(5) <= u0_m0_wo0_cma3_y(5);
                u0_m0_wo0_cma3_s(6) <= u0_m0_wo0_cma3_y(6);
                u0_m0_wo0_cma3_s(7) <= u0_m0_wo0_cma3_y(7);
                u0_m0_wo0_cma3_s(8) <= u0_m0_wo0_cma3_y(8);
                u0_m0_wo0_cma3_s(9) <= u0_m0_wo0_cma3_y(9);
                u0_m0_wo0_cma3_s(10) <= u0_m0_wo0_cma3_y(10);
                u0_m0_wo0_cma3_s(11) <= u0_m0_wo0_cma3_y(11);
                u0_m0_wo0_cma3_s(12) <= u0_m0_wo0_cma3_y(12);
                u0_m0_wo0_cma3_s(13) <= u0_m0_wo0_cma3_y(13);
                u0_m0_wo0_cma3_s(14) <= u0_m0_wo0_cma3_y(14);
                u0_m0_wo0_cma3_s(15) <= u0_m0_wo0_cma3_y(15);
                u0_m0_wo0_cma3_s(16) <= u0_m0_wo0_cma3_y(16);
                u0_m0_wo0_cma3_s(17) <= u0_m0_wo0_cma3_y(17);
                u0_m0_wo0_cma3_s(18) <= u0_m0_wo0_cma3_y(18);
                u0_m0_wo0_cma3_s(19) <= u0_m0_wo0_cma3_y(19);
                u0_m0_wo0_cma3_s(20) <= u0_m0_wo0_cma3_y(20);
                u0_m0_wo0_cma3_s(21) <= u0_m0_wo0_cma3_y(21);
                u0_m0_wo0_cma3_s(22) <= u0_m0_wo0_cma3_y(22);
                u0_m0_wo0_cma3_s(23) <= u0_m0_wo0_cma3_y(23);
                u0_m0_wo0_cma3_s(24) <= u0_m0_wo0_cma3_y(24);
                u0_m0_wo0_cma3_s(25) <= u0_m0_wo0_cma3_y(25);
                u0_m0_wo0_cma3_s(26) <= u0_m0_wo0_cma3_y(26);
                u0_m0_wo0_cma3_s(27) <= u0_m0_wo0_cma3_y(27);
                u0_m0_wo0_cma3_s(28) <= u0_m0_wo0_cma3_y(28);
                u0_m0_wo0_cma3_s(29) <= u0_m0_wo0_cma3_y(29);
                u0_m0_wo0_cma3_s(30) <= u0_m0_wo0_cma3_y(30);
                u0_m0_wo0_cma3_s(31) <= u0_m0_wo0_cma3_y(31);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma3_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma3_s(0)(25 downto 0)), xout => u0_m0_wo0_cma3_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma3_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma3_qq(25 downto 0));

    -- u0_m0_wo0_wi11_r0_delayr95(DELAY,1985)@10
    u0_m0_wo0_wi11_r0_delayr95_q <= u0_m0_wo0_wi11_r0_delayr94_q;

    -- u0_m0_wo0_wi11_r0_delayr94(DELAY,1984)@10
    u0_m0_wo0_wi11_r0_delayr94_q <= u0_m0_wo0_wi11_r0_delayr93_q;

    -- u0_m0_wo0_wi11_r0_delayr93(DELAY,1983)@10
    u0_m0_wo0_wi11_r0_delayr93_q <= u0_m0_wo0_wi11_r0_delayr92_q;

    -- u0_m0_wo0_wi11_r0_delayr92(DELAY,1982)@10
    u0_m0_wo0_wi11_r0_delayr92_q <= u0_m0_wo0_wi11_r0_delayr91_q;

    -- u0_m0_wo0_wi11_r0_delayr91(DELAY,1981)@10
    u0_m0_wo0_wi11_r0_delayr91_q <= u0_m0_wo0_wi11_r0_delayr90_q;

    -- u0_m0_wo0_wi11_r0_delayr90(DELAY,1980)@10
    u0_m0_wo0_wi11_r0_delayr90_q <= u0_m0_wo0_wi11_r0_delayr89_q;

    -- u0_m0_wo0_wi11_r0_delayr89(DELAY,1979)@10
    u0_m0_wo0_wi11_r0_delayr89_q <= u0_m0_wo0_wi11_r0_phasedelay88_q;

    -- u0_m0_wo0_wi11_r0_delayr88_notEnable(LOGICAL,3661)@10
    u0_m0_wo0_wi11_r0_delayr88_notEnable_a <= xIn_v;
    u0_m0_wo0_wi11_r0_delayr88_notEnable_q <= not (u0_m0_wo0_wi11_r0_delayr88_notEnable_a);

    -- u0_m0_wo0_wi11_r0_delayr88_nor(LOGICAL,3662)@10
    u0_m0_wo0_wi11_r0_delayr88_nor_a <= u0_m0_wo0_wi11_r0_delayr88_notEnable_q;
    u0_m0_wo0_wi11_r0_delayr88_nor_b <= u0_m0_wo0_wi11_r0_delayr88_sticky_ena_q;
    u0_m0_wo0_wi11_r0_delayr88_nor_q <= not (u0_m0_wo0_wi11_r0_delayr88_nor_a or u0_m0_wo0_wi11_r0_delayr88_nor_b);

    -- u0_m0_wo0_wi11_r0_delayr88_mem_top(CONSTANT,3658)
    u0_m0_wo0_wi11_r0_delayr88_mem_top_q <= "0110";

    -- u0_m0_wo0_wi11_r0_delayr88_cmp(LOGICAL,3659)@10
    u0_m0_wo0_wi11_r0_delayr88_cmp_a <= u0_m0_wo0_wi11_r0_delayr88_mem_top_q;
    u0_m0_wo0_wi11_r0_delayr88_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi11_r0_delayr88_rdmux_q);
    u0_m0_wo0_wi11_r0_delayr88_cmp_q <= "1" WHEN u0_m0_wo0_wi11_r0_delayr88_cmp_a = u0_m0_wo0_wi11_r0_delayr88_cmp_b ELSE "0";

    -- u0_m0_wo0_wi11_r0_delayr88_cmpReg(REG,3660)@10
    u0_m0_wo0_wi11_r0_delayr88_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi11_r0_delayr88_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi11_r0_delayr88_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi11_r0_delayr88_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi11_r0_delayr88_sticky_ena(REG,3663)@10
    u0_m0_wo0_wi11_r0_delayr88_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi11_r0_delayr88_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi11_r0_delayr88_nor_q = "1") THEN
                u0_m0_wo0_wi11_r0_delayr88_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi11_r0_delayr88_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi11_r0_delayr88_enaAnd(LOGICAL,3664)@10
    u0_m0_wo0_wi11_r0_delayr88_enaAnd_a <= u0_m0_wo0_wi11_r0_delayr88_sticky_ena_q;
    u0_m0_wo0_wi11_r0_delayr88_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi11_r0_delayr88_enaAnd_q <= u0_m0_wo0_wi11_r0_delayr88_enaAnd_a and u0_m0_wo0_wi11_r0_delayr88_enaAnd_b;

    -- u0_m0_wo0_wi11_r0_delayr88_rdcnt(COUNTER,3655)@10
    -- every=1, low=0, high=6, step=1, init=1
    u0_m0_wo0_wi11_r0_delayr88_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi11_r0_delayr88_rdcnt_i <= TO_UNSIGNED(1, 3);
            u0_m0_wo0_wi11_r0_delayr88_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi11_r0_delayr88_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                    u0_m0_wo0_wi11_r0_delayr88_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi11_r0_delayr88_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi11_r0_delayr88_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi11_r0_delayr88_rdcnt_i <= u0_m0_wo0_wi11_r0_delayr88_rdcnt_i - 6;
                ELSE
                    u0_m0_wo0_wi11_r0_delayr88_rdcnt_i <= u0_m0_wo0_wi11_r0_delayr88_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi11_r0_delayr88_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi11_r0_delayr88_rdcnt_i, 3)));

    -- u0_m0_wo0_wi11_r0_delayr88_rdmux(MUX,3656)@10
    u0_m0_wo0_wi11_r0_delayr88_rdmux_s <= xIn_v;
    u0_m0_wo0_wi11_r0_delayr88_rdmux: PROCESS (u0_m0_wo0_wi11_r0_delayr88_rdmux_s, u0_m0_wo0_wi11_r0_delayr88_wraddr_q, u0_m0_wo0_wi11_r0_delayr88_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi11_r0_delayr88_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi11_r0_delayr88_rdmux_q <= u0_m0_wo0_wi11_r0_delayr88_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi11_r0_delayr88_rdmux_q <= u0_m0_wo0_wi11_r0_delayr88_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi11_r0_delayr88_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi11_r0_delayr88_wraddr(REG,3657)@10
    u0_m0_wo0_wi11_r0_delayr88_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi11_r0_delayr88_wraddr_q <= "000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi11_r0_delayr88_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi11_r0_delayr88_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi11_r0_delayr88_mem(DUALMEM,3654)@10
    u0_m0_wo0_wi11_r0_delayr88_mem_ia <= STD_LOGIC_VECTOR(xIn_11);
    u0_m0_wo0_wi11_r0_delayr88_mem_aa <= u0_m0_wo0_wi11_r0_delayr88_wraddr_q;
    u0_m0_wo0_wi11_r0_delayr88_mem_ab <= u0_m0_wo0_wi11_r0_delayr88_rdmux_q;
    u0_m0_wo0_wi11_r0_delayr88_mem_reset0 <= areset;
    u0_m0_wo0_wi11_r0_delayr88_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi11_r0_delayr88_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi11_r0_delayr88_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi11_r0_delayr88_mem_aa,
        data_a => u0_m0_wo0_wi11_r0_delayr88_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi11_r0_delayr88_mem_ab,
        q_b => u0_m0_wo0_wi11_r0_delayr88_mem_iq
    );
    u0_m0_wo0_wi11_r0_delayr88_mem_q <= u0_m0_wo0_wi11_r0_delayr88_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi11_r0_phasedelay88(DELAY,1891)@10
    u0_m0_wo0_wi11_r0_phasedelay88_q <= u0_m0_wo0_wi11_r0_delayr88_mem_q;

    -- u0_m0_wo0_wi10_r0_delayr87(DELAY,1815)@10
    u0_m0_wo0_wi10_r0_delayr87_q <= u0_m0_wo0_wi10_r0_delayr86_q;

    -- u0_m0_wo0_wi10_r0_delayr86(DELAY,1814)@10
    u0_m0_wo0_wi10_r0_delayr86_q <= u0_m0_wo0_wi10_r0_delayr85_q;

    -- u0_m0_wo0_wi10_r0_delayr85(DELAY,1813)@10
    u0_m0_wo0_wi10_r0_delayr85_q <= u0_m0_wo0_wi10_r0_delayr84_q;

    -- u0_m0_wo0_wi10_r0_delayr84(DELAY,1812)@10
    u0_m0_wo0_wi10_r0_delayr84_q <= u0_m0_wo0_wi10_r0_delayr83_q;

    -- u0_m0_wo0_wi10_r0_delayr83(DELAY,1811)@10
    u0_m0_wo0_wi10_r0_delayr83_q <= u0_m0_wo0_wi10_r0_delayr82_q;

    -- u0_m0_wo0_wi10_r0_delayr82(DELAY,1810)@10
    u0_m0_wo0_wi10_r0_delayr82_q <= u0_m0_wo0_wi10_r0_delayr81_q;

    -- u0_m0_wo0_wi10_r0_delayr81(DELAY,1809)@10
    u0_m0_wo0_wi10_r0_delayr81_q <= u0_m0_wo0_wi10_r0_phasedelay80_q;

    -- u0_m0_wo0_wi10_r0_delayr80_notEnable(LOGICAL,3650)@10
    u0_m0_wo0_wi10_r0_delayr80_notEnable_a <= xIn_v;
    u0_m0_wo0_wi10_r0_delayr80_notEnable_q <= not (u0_m0_wo0_wi10_r0_delayr80_notEnable_a);

    -- u0_m0_wo0_wi10_r0_delayr80_nor(LOGICAL,3651)@10
    u0_m0_wo0_wi10_r0_delayr80_nor_a <= u0_m0_wo0_wi10_r0_delayr80_notEnable_q;
    u0_m0_wo0_wi10_r0_delayr80_nor_b <= u0_m0_wo0_wi10_r0_delayr80_sticky_ena_q;
    u0_m0_wo0_wi10_r0_delayr80_nor_q <= not (u0_m0_wo0_wi10_r0_delayr80_nor_a or u0_m0_wo0_wi10_r0_delayr80_nor_b);

    -- u0_m0_wo0_wi10_r0_delayr80_mem_top(CONSTANT,3647)
    u0_m0_wo0_wi10_r0_delayr80_mem_top_q <= "01110";

    -- u0_m0_wo0_wi10_r0_delayr80_cmp(LOGICAL,3648)@10
    u0_m0_wo0_wi10_r0_delayr80_cmp_a <= u0_m0_wo0_wi10_r0_delayr80_mem_top_q;
    u0_m0_wo0_wi10_r0_delayr80_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi10_r0_delayr80_rdmux_q);
    u0_m0_wo0_wi10_r0_delayr80_cmp_q <= "1" WHEN u0_m0_wo0_wi10_r0_delayr80_cmp_a = u0_m0_wo0_wi10_r0_delayr80_cmp_b ELSE "0";

    -- u0_m0_wo0_wi10_r0_delayr80_cmpReg(REG,3649)@10
    u0_m0_wo0_wi10_r0_delayr80_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi10_r0_delayr80_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi10_r0_delayr80_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi10_r0_delayr80_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi10_r0_delayr80_sticky_ena(REG,3652)@10
    u0_m0_wo0_wi10_r0_delayr80_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi10_r0_delayr80_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi10_r0_delayr80_nor_q = "1") THEN
                u0_m0_wo0_wi10_r0_delayr80_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi10_r0_delayr80_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi10_r0_delayr80_enaAnd(LOGICAL,3653)@10
    u0_m0_wo0_wi10_r0_delayr80_enaAnd_a <= u0_m0_wo0_wi10_r0_delayr80_sticky_ena_q;
    u0_m0_wo0_wi10_r0_delayr80_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi10_r0_delayr80_enaAnd_q <= u0_m0_wo0_wi10_r0_delayr80_enaAnd_a and u0_m0_wo0_wi10_r0_delayr80_enaAnd_b;

    -- u0_m0_wo0_wi10_r0_delayr80_rdcnt(COUNTER,3644)@10
    -- every=1, low=0, high=14, step=1, init=1
    u0_m0_wo0_wi10_r0_delayr80_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi10_r0_delayr80_rdcnt_i <= TO_UNSIGNED(1, 4);
            u0_m0_wo0_wi10_r0_delayr80_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi10_r0_delayr80_rdcnt_i = TO_UNSIGNED(13, 4)) THEN
                    u0_m0_wo0_wi10_r0_delayr80_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi10_r0_delayr80_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi10_r0_delayr80_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi10_r0_delayr80_rdcnt_i <= u0_m0_wo0_wi10_r0_delayr80_rdcnt_i - 14;
                ELSE
                    u0_m0_wo0_wi10_r0_delayr80_rdcnt_i <= u0_m0_wo0_wi10_r0_delayr80_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi10_r0_delayr80_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi10_r0_delayr80_rdcnt_i, 4)));

    -- u0_m0_wo0_wi10_r0_delayr80_rdmux(MUX,3645)@10
    u0_m0_wo0_wi10_r0_delayr80_rdmux_s <= xIn_v;
    u0_m0_wo0_wi10_r0_delayr80_rdmux: PROCESS (u0_m0_wo0_wi10_r0_delayr80_rdmux_s, u0_m0_wo0_wi10_r0_delayr80_wraddr_q, u0_m0_wo0_wi10_r0_delayr80_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi10_r0_delayr80_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi10_r0_delayr80_rdmux_q <= u0_m0_wo0_wi10_r0_delayr80_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi10_r0_delayr80_rdmux_q <= u0_m0_wo0_wi10_r0_delayr80_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi10_r0_delayr80_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi10_r0_delayr80_wraddr(REG,3646)@10
    u0_m0_wo0_wi10_r0_delayr80_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi10_r0_delayr80_wraddr_q <= "0000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi10_r0_delayr80_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi10_r0_delayr80_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi10_r0_delayr80_mem(DUALMEM,3643)@10
    u0_m0_wo0_wi10_r0_delayr80_mem_ia <= STD_LOGIC_VECTOR(xIn_10);
    u0_m0_wo0_wi10_r0_delayr80_mem_aa <= u0_m0_wo0_wi10_r0_delayr80_wraddr_q;
    u0_m0_wo0_wi10_r0_delayr80_mem_ab <= u0_m0_wo0_wi10_r0_delayr80_rdmux_q;
    u0_m0_wo0_wi10_r0_delayr80_mem_reset0 <= areset;
    u0_m0_wo0_wi10_r0_delayr80_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi10_r0_delayr80_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi10_r0_delayr80_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi10_r0_delayr80_mem_aa,
        data_a => u0_m0_wo0_wi10_r0_delayr80_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi10_r0_delayr80_mem_ab,
        q_b => u0_m0_wo0_wi10_r0_delayr80_mem_iq
    );
    u0_m0_wo0_wi10_r0_delayr80_mem_q <= u0_m0_wo0_wi10_r0_delayr80_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi10_r0_phasedelay80(DELAY,1729)@10
    u0_m0_wo0_wi10_r0_phasedelay80_q <= u0_m0_wo0_wi10_r0_delayr80_mem_q;

    -- u0_m0_wo0_wi9_r0_delayr79(DELAY,1645)@10
    u0_m0_wo0_wi9_r0_delayr79_q <= u0_m0_wo0_wi9_r0_delayr78_q;

    -- u0_m0_wo0_wi9_r0_delayr78(DELAY,1644)@10
    u0_m0_wo0_wi9_r0_delayr78_q <= u0_m0_wo0_wi9_r0_delayr77_q;

    -- u0_m0_wo0_wi9_r0_delayr77(DELAY,1643)@10
    u0_m0_wo0_wi9_r0_delayr77_q <= u0_m0_wo0_wi9_r0_delayr76_q;

    -- u0_m0_wo0_wi9_r0_delayr76(DELAY,1642)@10
    u0_m0_wo0_wi9_r0_delayr76_q <= u0_m0_wo0_wi9_r0_delayr75_q;

    -- u0_m0_wo0_wi9_r0_delayr75(DELAY,1641)@10
    u0_m0_wo0_wi9_r0_delayr75_q <= u0_m0_wo0_wi9_r0_delayr74_q;

    -- u0_m0_wo0_wi9_r0_delayr74(DELAY,1640)@10
    u0_m0_wo0_wi9_r0_delayr74_q <= u0_m0_wo0_wi9_r0_delayr73_q;

    -- u0_m0_wo0_wi9_r0_delayr73(DELAY,1639)@10
    u0_m0_wo0_wi9_r0_delayr73_q <= u0_m0_wo0_wi9_r0_phasedelay72_q;

    -- u0_m0_wo0_wi9_r0_delayr72_notEnable(LOGICAL,3639)@10
    u0_m0_wo0_wi9_r0_delayr72_notEnable_a <= xIn_v;
    u0_m0_wo0_wi9_r0_delayr72_notEnable_q <= not (u0_m0_wo0_wi9_r0_delayr72_notEnable_a);

    -- u0_m0_wo0_wi9_r0_delayr72_nor(LOGICAL,3640)@10
    u0_m0_wo0_wi9_r0_delayr72_nor_a <= u0_m0_wo0_wi9_r0_delayr72_notEnable_q;
    u0_m0_wo0_wi9_r0_delayr72_nor_b <= u0_m0_wo0_wi9_r0_delayr72_sticky_ena_q;
    u0_m0_wo0_wi9_r0_delayr72_nor_q <= not (u0_m0_wo0_wi9_r0_delayr72_nor_a or u0_m0_wo0_wi9_r0_delayr72_nor_b);

    -- u0_m0_wo0_wi9_r0_delayr72_mem_top(CONSTANT,3636)
    u0_m0_wo0_wi9_r0_delayr72_mem_top_q <= "010110";

    -- u0_m0_wo0_wi9_r0_delayr72_cmp(LOGICAL,3637)@10
    u0_m0_wo0_wi9_r0_delayr72_cmp_a <= u0_m0_wo0_wi9_r0_delayr72_mem_top_q;
    u0_m0_wo0_wi9_r0_delayr72_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi9_r0_delayr72_rdmux_q);
    u0_m0_wo0_wi9_r0_delayr72_cmp_q <= "1" WHEN u0_m0_wo0_wi9_r0_delayr72_cmp_a = u0_m0_wo0_wi9_r0_delayr72_cmp_b ELSE "0";

    -- u0_m0_wo0_wi9_r0_delayr72_cmpReg(REG,3638)@10
    u0_m0_wo0_wi9_r0_delayr72_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi9_r0_delayr72_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi9_r0_delayr72_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi9_r0_delayr72_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi9_r0_delayr72_sticky_ena(REG,3641)@10
    u0_m0_wo0_wi9_r0_delayr72_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi9_r0_delayr72_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi9_r0_delayr72_nor_q = "1") THEN
                u0_m0_wo0_wi9_r0_delayr72_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi9_r0_delayr72_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi9_r0_delayr72_enaAnd(LOGICAL,3642)@10
    u0_m0_wo0_wi9_r0_delayr72_enaAnd_a <= u0_m0_wo0_wi9_r0_delayr72_sticky_ena_q;
    u0_m0_wo0_wi9_r0_delayr72_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi9_r0_delayr72_enaAnd_q <= u0_m0_wo0_wi9_r0_delayr72_enaAnd_a and u0_m0_wo0_wi9_r0_delayr72_enaAnd_b;

    -- u0_m0_wo0_wi9_r0_delayr72_rdcnt(COUNTER,3633)@10
    -- every=1, low=0, high=22, step=1, init=1
    u0_m0_wo0_wi9_r0_delayr72_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi9_r0_delayr72_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi9_r0_delayr72_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi9_r0_delayr72_rdcnt_i = TO_UNSIGNED(21, 5)) THEN
                    u0_m0_wo0_wi9_r0_delayr72_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi9_r0_delayr72_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi9_r0_delayr72_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi9_r0_delayr72_rdcnt_i <= u0_m0_wo0_wi9_r0_delayr72_rdcnt_i - 22;
                ELSE
                    u0_m0_wo0_wi9_r0_delayr72_rdcnt_i <= u0_m0_wo0_wi9_r0_delayr72_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi9_r0_delayr72_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi9_r0_delayr72_rdcnt_i, 5)));

    -- u0_m0_wo0_wi9_r0_delayr72_rdmux(MUX,3634)@10
    u0_m0_wo0_wi9_r0_delayr72_rdmux_s <= xIn_v;
    u0_m0_wo0_wi9_r0_delayr72_rdmux: PROCESS (u0_m0_wo0_wi9_r0_delayr72_rdmux_s, u0_m0_wo0_wi9_r0_delayr72_wraddr_q, u0_m0_wo0_wi9_r0_delayr72_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi9_r0_delayr72_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi9_r0_delayr72_rdmux_q <= u0_m0_wo0_wi9_r0_delayr72_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi9_r0_delayr72_rdmux_q <= u0_m0_wo0_wi9_r0_delayr72_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi9_r0_delayr72_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi9_r0_delayr72_wraddr(REG,3635)@10
    u0_m0_wo0_wi9_r0_delayr72_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi9_r0_delayr72_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi9_r0_delayr72_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi9_r0_delayr72_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi9_r0_delayr72_mem(DUALMEM,3632)@10
    u0_m0_wo0_wi9_r0_delayr72_mem_ia <= STD_LOGIC_VECTOR(xIn_9);
    u0_m0_wo0_wi9_r0_delayr72_mem_aa <= u0_m0_wo0_wi9_r0_delayr72_wraddr_q;
    u0_m0_wo0_wi9_r0_delayr72_mem_ab <= u0_m0_wo0_wi9_r0_delayr72_rdmux_q;
    u0_m0_wo0_wi9_r0_delayr72_mem_reset0 <= areset;
    u0_m0_wo0_wi9_r0_delayr72_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi9_r0_delayr72_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi9_r0_delayr72_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi9_r0_delayr72_mem_aa,
        data_a => u0_m0_wo0_wi9_r0_delayr72_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi9_r0_delayr72_mem_ab,
        q_b => u0_m0_wo0_wi9_r0_delayr72_mem_iq
    );
    u0_m0_wo0_wi9_r0_delayr72_mem_q <= u0_m0_wo0_wi9_r0_delayr72_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi9_r0_phasedelay72(DELAY,1567)@10
    u0_m0_wo0_wi9_r0_phasedelay72_q <= u0_m0_wo0_wi9_r0_delayr72_mem_q;

    -- u0_m0_wo0_wi8_r0_delayr71(DELAY,1475)@10
    u0_m0_wo0_wi8_r0_delayr71_q <= u0_m0_wo0_wi8_r0_delayr70_q;

    -- u0_m0_wo0_wi8_r0_delayr70(DELAY,1474)@10
    u0_m0_wo0_wi8_r0_delayr70_q <= u0_m0_wo0_wi8_r0_delayr69_q;

    -- u0_m0_wo0_wi8_r0_delayr69(DELAY,1473)@10
    u0_m0_wo0_wi8_r0_delayr69_q <= u0_m0_wo0_wi8_r0_delayr68_q;

    -- u0_m0_wo0_wi8_r0_delayr68(DELAY,1472)@10
    u0_m0_wo0_wi8_r0_delayr68_q <= u0_m0_wo0_wi8_r0_delayr67_q;

    -- u0_m0_wo0_wi8_r0_delayr67(DELAY,1471)@10
    u0_m0_wo0_wi8_r0_delayr67_q <= u0_m0_wo0_wi8_r0_delayr66_q;

    -- u0_m0_wo0_wi8_r0_delayr66(DELAY,1470)@10
    u0_m0_wo0_wi8_r0_delayr66_q <= u0_m0_wo0_wi8_r0_delayr65_q;

    -- u0_m0_wo0_wi8_r0_delayr65(DELAY,1469)@10
    u0_m0_wo0_wi8_r0_delayr65_q <= u0_m0_wo0_wi8_r0_phasedelay64_q;

    -- u0_m0_wo0_wi8_r0_delayr64_notEnable(LOGICAL,3628)@10
    u0_m0_wo0_wi8_r0_delayr64_notEnable_a <= xIn_v;
    u0_m0_wo0_wi8_r0_delayr64_notEnable_q <= not (u0_m0_wo0_wi8_r0_delayr64_notEnable_a);

    -- u0_m0_wo0_wi8_r0_delayr64_nor(LOGICAL,3629)@10
    u0_m0_wo0_wi8_r0_delayr64_nor_a <= u0_m0_wo0_wi8_r0_delayr64_notEnable_q;
    u0_m0_wo0_wi8_r0_delayr64_nor_b <= u0_m0_wo0_wi8_r0_delayr64_sticky_ena_q;
    u0_m0_wo0_wi8_r0_delayr64_nor_q <= not (u0_m0_wo0_wi8_r0_delayr64_nor_a or u0_m0_wo0_wi8_r0_delayr64_nor_b);

    -- u0_m0_wo0_wi8_r0_delayr64_mem_top(CONSTANT,3625)
    u0_m0_wo0_wi8_r0_delayr64_mem_top_q <= "011110";

    -- u0_m0_wo0_wi8_r0_delayr64_cmp(LOGICAL,3626)@10
    u0_m0_wo0_wi8_r0_delayr64_cmp_a <= u0_m0_wo0_wi8_r0_delayr64_mem_top_q;
    u0_m0_wo0_wi8_r0_delayr64_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi8_r0_delayr64_rdmux_q);
    u0_m0_wo0_wi8_r0_delayr64_cmp_q <= "1" WHEN u0_m0_wo0_wi8_r0_delayr64_cmp_a = u0_m0_wo0_wi8_r0_delayr64_cmp_b ELSE "0";

    -- u0_m0_wo0_wi8_r0_delayr64_cmpReg(REG,3627)@10
    u0_m0_wo0_wi8_r0_delayr64_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi8_r0_delayr64_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi8_r0_delayr64_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi8_r0_delayr64_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi8_r0_delayr64_sticky_ena(REG,3630)@10
    u0_m0_wo0_wi8_r0_delayr64_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi8_r0_delayr64_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi8_r0_delayr64_nor_q = "1") THEN
                u0_m0_wo0_wi8_r0_delayr64_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi8_r0_delayr64_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi8_r0_delayr64_enaAnd(LOGICAL,3631)@10
    u0_m0_wo0_wi8_r0_delayr64_enaAnd_a <= u0_m0_wo0_wi8_r0_delayr64_sticky_ena_q;
    u0_m0_wo0_wi8_r0_delayr64_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi8_r0_delayr64_enaAnd_q <= u0_m0_wo0_wi8_r0_delayr64_enaAnd_a and u0_m0_wo0_wi8_r0_delayr64_enaAnd_b;

    -- u0_m0_wo0_wi8_r0_delayr64_rdcnt(COUNTER,3622)@10
    -- every=1, low=0, high=30, step=1, init=1
    u0_m0_wo0_wi8_r0_delayr64_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi8_r0_delayr64_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi8_r0_delayr64_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi8_r0_delayr64_rdcnt_i = TO_UNSIGNED(29, 5)) THEN
                    u0_m0_wo0_wi8_r0_delayr64_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi8_r0_delayr64_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi8_r0_delayr64_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi8_r0_delayr64_rdcnt_i <= u0_m0_wo0_wi8_r0_delayr64_rdcnt_i - 30;
                ELSE
                    u0_m0_wo0_wi8_r0_delayr64_rdcnt_i <= u0_m0_wo0_wi8_r0_delayr64_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi8_r0_delayr64_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi8_r0_delayr64_rdcnt_i, 5)));

    -- u0_m0_wo0_wi8_r0_delayr64_rdmux(MUX,3623)@10
    u0_m0_wo0_wi8_r0_delayr64_rdmux_s <= xIn_v;
    u0_m0_wo0_wi8_r0_delayr64_rdmux: PROCESS (u0_m0_wo0_wi8_r0_delayr64_rdmux_s, u0_m0_wo0_wi8_r0_delayr64_wraddr_q, u0_m0_wo0_wi8_r0_delayr64_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi8_r0_delayr64_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi8_r0_delayr64_rdmux_q <= u0_m0_wo0_wi8_r0_delayr64_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi8_r0_delayr64_rdmux_q <= u0_m0_wo0_wi8_r0_delayr64_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi8_r0_delayr64_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi8_r0_delayr64_wraddr(REG,3624)@10
    u0_m0_wo0_wi8_r0_delayr64_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi8_r0_delayr64_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi8_r0_delayr64_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi8_r0_delayr64_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi8_r0_delayr64_mem(DUALMEM,3621)@10
    u0_m0_wo0_wi8_r0_delayr64_mem_ia <= STD_LOGIC_VECTOR(xIn_8);
    u0_m0_wo0_wi8_r0_delayr64_mem_aa <= u0_m0_wo0_wi8_r0_delayr64_wraddr_q;
    u0_m0_wo0_wi8_r0_delayr64_mem_ab <= u0_m0_wo0_wi8_r0_delayr64_rdmux_q;
    u0_m0_wo0_wi8_r0_delayr64_mem_reset0 <= areset;
    u0_m0_wo0_wi8_r0_delayr64_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi8_r0_delayr64_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi8_r0_delayr64_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi8_r0_delayr64_mem_aa,
        data_a => u0_m0_wo0_wi8_r0_delayr64_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi8_r0_delayr64_mem_ab,
        q_b => u0_m0_wo0_wi8_r0_delayr64_mem_iq
    );
    u0_m0_wo0_wi8_r0_delayr64_mem_q <= u0_m0_wo0_wi8_r0_delayr64_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi8_r0_phasedelay64(DELAY,1405)@10
    u0_m0_wo0_wi8_r0_phasedelay64_q <= u0_m0_wo0_wi8_r0_delayr64_mem_q;

    -- u0_m0_wo0_cma2(CHAINMULTADD,3508)@10
    -- altera synthesis_off
    u0_m0_wo0_cma2_k0 <= (
        0 => TO_SIGNED(37,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k1 <= (
        0 => TO_SIGNED(73,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k2 <= (
        0 => TO_SIGNED(106,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k3 <= (
        0 => TO_SIGNED(125,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k4 <= (
        0 => TO_SIGNED(122,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k5 <= (
        0 => TO_SIGNED(99,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k6 <= (
        0 => TO_SIGNED(64,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k7 <= (
        0 => TO_SIGNED(29,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k8 <= (
        0 => TO_SIGNED(36,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k9 <= (
        0 => TO_SIGNED(71,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k10 <= (
        0 => TO_SIGNED(105,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k11 <= (
        0 => TO_SIGNED(124,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k12 <= (
        0 => TO_SIGNED(123,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k13 <= (
        0 => TO_SIGNED(100,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k14 <= (
        0 => TO_SIGNED(66,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k15 <= (
        0 => TO_SIGNED(31,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k16 <= (
        0 => TO_SIGNED(34,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k17 <= (
        0 => TO_SIGNED(69,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k18 <= (
        0 => TO_SIGNED(103,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k19 <= (
        0 => TO_SIGNED(124,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k20 <= (
        0 => TO_SIGNED(123,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k21 <= (
        0 => TO_SIGNED(102,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k22 <= (
        0 => TO_SIGNED(67,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k23 <= (
        0 => TO_SIGNED(32,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k24 <= (
        0 => TO_SIGNED(32,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k25 <= (
        0 => TO_SIGNED(67,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k26 <= (
        0 => TO_SIGNED(102,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k27 <= (
        0 => TO_SIGNED(123,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k28 <= (
        0 => TO_SIGNED(124,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k29 <= (
        0 => TO_SIGNED(103,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k30 <= (
        0 => TO_SIGNED(69,11),
        others => (others => '0'));
    u0_m0_wo0_cma2_k31 <= (
        0 => TO_SIGNED(34,11),
        others => (others => '0'));
    -- altera synthesis_on
    u0_m0_wo0_cma2_r(0) <= u0_m0_wo0_cma2_k0(TO_INTEGER(u0_m0_wo0_cma2_c0(0)));
    u0_m0_wo0_cma2_r(1) <= u0_m0_wo0_cma2_k1(TO_INTEGER(u0_m0_wo0_cma2_c0(1)));
    u0_m0_wo0_cma2_r(2) <= u0_m0_wo0_cma2_k2(TO_INTEGER(u0_m0_wo0_cma2_c0(2)));
    u0_m0_wo0_cma2_r(3) <= u0_m0_wo0_cma2_k3(TO_INTEGER(u0_m0_wo0_cma2_c0(3)));
    u0_m0_wo0_cma2_r(4) <= u0_m0_wo0_cma2_k4(TO_INTEGER(u0_m0_wo0_cma2_c0(4)));
    u0_m0_wo0_cma2_r(5) <= u0_m0_wo0_cma2_k5(TO_INTEGER(u0_m0_wo0_cma2_c0(5)));
    u0_m0_wo0_cma2_r(6) <= u0_m0_wo0_cma2_k6(TO_INTEGER(u0_m0_wo0_cma2_c0(6)));
    u0_m0_wo0_cma2_r(7) <= u0_m0_wo0_cma2_k7(TO_INTEGER(u0_m0_wo0_cma2_c0(7)));
    u0_m0_wo0_cma2_r(8) <= u0_m0_wo0_cma2_k8(TO_INTEGER(u0_m0_wo0_cma2_c0(8)));
    u0_m0_wo0_cma2_r(9) <= u0_m0_wo0_cma2_k9(TO_INTEGER(u0_m0_wo0_cma2_c0(9)));
    u0_m0_wo0_cma2_r(10) <= u0_m0_wo0_cma2_k10(TO_INTEGER(u0_m0_wo0_cma2_c0(10)));
    u0_m0_wo0_cma2_r(11) <= u0_m0_wo0_cma2_k11(TO_INTEGER(u0_m0_wo0_cma2_c0(11)));
    u0_m0_wo0_cma2_r(12) <= u0_m0_wo0_cma2_k12(TO_INTEGER(u0_m0_wo0_cma2_c0(12)));
    u0_m0_wo0_cma2_r(13) <= u0_m0_wo0_cma2_k13(TO_INTEGER(u0_m0_wo0_cma2_c0(13)));
    u0_m0_wo0_cma2_r(14) <= u0_m0_wo0_cma2_k14(TO_INTEGER(u0_m0_wo0_cma2_c0(14)));
    u0_m0_wo0_cma2_r(15) <= u0_m0_wo0_cma2_k15(TO_INTEGER(u0_m0_wo0_cma2_c0(15)));
    u0_m0_wo0_cma2_r(16) <= u0_m0_wo0_cma2_k16(TO_INTEGER(u0_m0_wo0_cma2_c0(16)));
    u0_m0_wo0_cma2_r(17) <= u0_m0_wo0_cma2_k17(TO_INTEGER(u0_m0_wo0_cma2_c0(17)));
    u0_m0_wo0_cma2_r(18) <= u0_m0_wo0_cma2_k18(TO_INTEGER(u0_m0_wo0_cma2_c0(18)));
    u0_m0_wo0_cma2_r(19) <= u0_m0_wo0_cma2_k19(TO_INTEGER(u0_m0_wo0_cma2_c0(19)));
    u0_m0_wo0_cma2_r(20) <= u0_m0_wo0_cma2_k20(TO_INTEGER(u0_m0_wo0_cma2_c0(20)));
    u0_m0_wo0_cma2_r(21) <= u0_m0_wo0_cma2_k21(TO_INTEGER(u0_m0_wo0_cma2_c0(21)));
    u0_m0_wo0_cma2_r(22) <= u0_m0_wo0_cma2_k22(TO_INTEGER(u0_m0_wo0_cma2_c0(22)));
    u0_m0_wo0_cma2_r(23) <= u0_m0_wo0_cma2_k23(TO_INTEGER(u0_m0_wo0_cma2_c0(23)));
    u0_m0_wo0_cma2_r(24) <= u0_m0_wo0_cma2_k24(TO_INTEGER(u0_m0_wo0_cma2_c0(24)));
    u0_m0_wo0_cma2_r(25) <= u0_m0_wo0_cma2_k25(TO_INTEGER(u0_m0_wo0_cma2_c0(25)));
    u0_m0_wo0_cma2_r(26) <= u0_m0_wo0_cma2_k26(TO_INTEGER(u0_m0_wo0_cma2_c0(26)));
    u0_m0_wo0_cma2_r(27) <= u0_m0_wo0_cma2_k27(TO_INTEGER(u0_m0_wo0_cma2_c0(27)));
    u0_m0_wo0_cma2_r(28) <= u0_m0_wo0_cma2_k28(TO_INTEGER(u0_m0_wo0_cma2_c0(28)));
    u0_m0_wo0_cma2_r(29) <= u0_m0_wo0_cma2_k29(TO_INTEGER(u0_m0_wo0_cma2_c0(29)));
    u0_m0_wo0_cma2_r(30) <= u0_m0_wo0_cma2_k30(TO_INTEGER(u0_m0_wo0_cma2_c0(30)));
    u0_m0_wo0_cma2_r(31) <= u0_m0_wo0_cma2_k31(TO_INTEGER(u0_m0_wo0_cma2_c0(31)));
    u0_m0_wo0_cma2_p(0) <= u0_m0_wo0_cma2_a0(0) * u0_m0_wo0_cma2_r(0);
    u0_m0_wo0_cma2_p(1) <= u0_m0_wo0_cma2_a0(1) * u0_m0_wo0_cma2_r(1);
    u0_m0_wo0_cma2_p(2) <= u0_m0_wo0_cma2_a0(2) * u0_m0_wo0_cma2_r(2);
    u0_m0_wo0_cma2_p(3) <= u0_m0_wo0_cma2_a0(3) * u0_m0_wo0_cma2_r(3);
    u0_m0_wo0_cma2_p(4) <= u0_m0_wo0_cma2_a0(4) * u0_m0_wo0_cma2_r(4);
    u0_m0_wo0_cma2_p(5) <= u0_m0_wo0_cma2_a0(5) * u0_m0_wo0_cma2_r(5);
    u0_m0_wo0_cma2_p(6) <= u0_m0_wo0_cma2_a0(6) * u0_m0_wo0_cma2_r(6);
    u0_m0_wo0_cma2_p(7) <= u0_m0_wo0_cma2_a0(7) * u0_m0_wo0_cma2_r(7);
    u0_m0_wo0_cma2_p(8) <= u0_m0_wo0_cma2_a0(8) * u0_m0_wo0_cma2_r(8);
    u0_m0_wo0_cma2_p(9) <= u0_m0_wo0_cma2_a0(9) * u0_m0_wo0_cma2_r(9);
    u0_m0_wo0_cma2_p(10) <= u0_m0_wo0_cma2_a0(10) * u0_m0_wo0_cma2_r(10);
    u0_m0_wo0_cma2_p(11) <= u0_m0_wo0_cma2_a0(11) * u0_m0_wo0_cma2_r(11);
    u0_m0_wo0_cma2_p(12) <= u0_m0_wo0_cma2_a0(12) * u0_m0_wo0_cma2_r(12);
    u0_m0_wo0_cma2_p(13) <= u0_m0_wo0_cma2_a0(13) * u0_m0_wo0_cma2_r(13);
    u0_m0_wo0_cma2_p(14) <= u0_m0_wo0_cma2_a0(14) * u0_m0_wo0_cma2_r(14);
    u0_m0_wo0_cma2_p(15) <= u0_m0_wo0_cma2_a0(15) * u0_m0_wo0_cma2_r(15);
    u0_m0_wo0_cma2_p(16) <= u0_m0_wo0_cma2_a0(16) * u0_m0_wo0_cma2_r(16);
    u0_m0_wo0_cma2_p(17) <= u0_m0_wo0_cma2_a0(17) * u0_m0_wo0_cma2_r(17);
    u0_m0_wo0_cma2_p(18) <= u0_m0_wo0_cma2_a0(18) * u0_m0_wo0_cma2_r(18);
    u0_m0_wo0_cma2_p(19) <= u0_m0_wo0_cma2_a0(19) * u0_m0_wo0_cma2_r(19);
    u0_m0_wo0_cma2_p(20) <= u0_m0_wo0_cma2_a0(20) * u0_m0_wo0_cma2_r(20);
    u0_m0_wo0_cma2_p(21) <= u0_m0_wo0_cma2_a0(21) * u0_m0_wo0_cma2_r(21);
    u0_m0_wo0_cma2_p(22) <= u0_m0_wo0_cma2_a0(22) * u0_m0_wo0_cma2_r(22);
    u0_m0_wo0_cma2_p(23) <= u0_m0_wo0_cma2_a0(23) * u0_m0_wo0_cma2_r(23);
    u0_m0_wo0_cma2_p(24) <= u0_m0_wo0_cma2_a0(24) * u0_m0_wo0_cma2_r(24);
    u0_m0_wo0_cma2_p(25) <= u0_m0_wo0_cma2_a0(25) * u0_m0_wo0_cma2_r(25);
    u0_m0_wo0_cma2_p(26) <= u0_m0_wo0_cma2_a0(26) * u0_m0_wo0_cma2_r(26);
    u0_m0_wo0_cma2_p(27) <= u0_m0_wo0_cma2_a0(27) * u0_m0_wo0_cma2_r(27);
    u0_m0_wo0_cma2_p(28) <= u0_m0_wo0_cma2_a0(28) * u0_m0_wo0_cma2_r(28);
    u0_m0_wo0_cma2_p(29) <= u0_m0_wo0_cma2_a0(29) * u0_m0_wo0_cma2_r(29);
    u0_m0_wo0_cma2_p(30) <= u0_m0_wo0_cma2_a0(30) * u0_m0_wo0_cma2_r(30);
    u0_m0_wo0_cma2_p(31) <= u0_m0_wo0_cma2_a0(31) * u0_m0_wo0_cma2_r(31);
    u0_m0_wo0_cma2_u(0) <= RESIZE(u0_m0_wo0_cma2_p(0),26);
    u0_m0_wo0_cma2_u(1) <= RESIZE(u0_m0_wo0_cma2_p(1),26);
    u0_m0_wo0_cma2_u(2) <= RESIZE(u0_m0_wo0_cma2_p(2),26);
    u0_m0_wo0_cma2_u(3) <= RESIZE(u0_m0_wo0_cma2_p(3),26);
    u0_m0_wo0_cma2_u(4) <= RESIZE(u0_m0_wo0_cma2_p(4),26);
    u0_m0_wo0_cma2_u(5) <= RESIZE(u0_m0_wo0_cma2_p(5),26);
    u0_m0_wo0_cma2_u(6) <= RESIZE(u0_m0_wo0_cma2_p(6),26);
    u0_m0_wo0_cma2_u(7) <= RESIZE(u0_m0_wo0_cma2_p(7),26);
    u0_m0_wo0_cma2_u(8) <= RESIZE(u0_m0_wo0_cma2_p(8),26);
    u0_m0_wo0_cma2_u(9) <= RESIZE(u0_m0_wo0_cma2_p(9),26);
    u0_m0_wo0_cma2_u(10) <= RESIZE(u0_m0_wo0_cma2_p(10),26);
    u0_m0_wo0_cma2_u(11) <= RESIZE(u0_m0_wo0_cma2_p(11),26);
    u0_m0_wo0_cma2_u(12) <= RESIZE(u0_m0_wo0_cma2_p(12),26);
    u0_m0_wo0_cma2_u(13) <= RESIZE(u0_m0_wo0_cma2_p(13),26);
    u0_m0_wo0_cma2_u(14) <= RESIZE(u0_m0_wo0_cma2_p(14),26);
    u0_m0_wo0_cma2_u(15) <= RESIZE(u0_m0_wo0_cma2_p(15),26);
    u0_m0_wo0_cma2_u(16) <= RESIZE(u0_m0_wo0_cma2_p(16),26);
    u0_m0_wo0_cma2_u(17) <= RESIZE(u0_m0_wo0_cma2_p(17),26);
    u0_m0_wo0_cma2_u(18) <= RESIZE(u0_m0_wo0_cma2_p(18),26);
    u0_m0_wo0_cma2_u(19) <= RESIZE(u0_m0_wo0_cma2_p(19),26);
    u0_m0_wo0_cma2_u(20) <= RESIZE(u0_m0_wo0_cma2_p(20),26);
    u0_m0_wo0_cma2_u(21) <= RESIZE(u0_m0_wo0_cma2_p(21),26);
    u0_m0_wo0_cma2_u(22) <= RESIZE(u0_m0_wo0_cma2_p(22),26);
    u0_m0_wo0_cma2_u(23) <= RESIZE(u0_m0_wo0_cma2_p(23),26);
    u0_m0_wo0_cma2_u(24) <= RESIZE(u0_m0_wo0_cma2_p(24),26);
    u0_m0_wo0_cma2_u(25) <= RESIZE(u0_m0_wo0_cma2_p(25),26);
    u0_m0_wo0_cma2_u(26) <= RESIZE(u0_m0_wo0_cma2_p(26),26);
    u0_m0_wo0_cma2_u(27) <= RESIZE(u0_m0_wo0_cma2_p(27),26);
    u0_m0_wo0_cma2_u(28) <= RESIZE(u0_m0_wo0_cma2_p(28),26);
    u0_m0_wo0_cma2_u(29) <= RESIZE(u0_m0_wo0_cma2_p(29),26);
    u0_m0_wo0_cma2_u(30) <= RESIZE(u0_m0_wo0_cma2_p(30),26);
    u0_m0_wo0_cma2_u(31) <= RESIZE(u0_m0_wo0_cma2_p(31),26);
    u0_m0_wo0_cma2_w(0) <= u0_m0_wo0_cma2_u(0);
    u0_m0_wo0_cma2_w(1) <= u0_m0_wo0_cma2_u(1);
    u0_m0_wo0_cma2_w(2) <= u0_m0_wo0_cma2_u(2);
    u0_m0_wo0_cma2_w(3) <= u0_m0_wo0_cma2_u(3);
    u0_m0_wo0_cma2_w(4) <= u0_m0_wo0_cma2_u(4);
    u0_m0_wo0_cma2_w(5) <= u0_m0_wo0_cma2_u(5);
    u0_m0_wo0_cma2_w(6) <= u0_m0_wo0_cma2_u(6);
    u0_m0_wo0_cma2_w(7) <= u0_m0_wo0_cma2_u(7);
    u0_m0_wo0_cma2_w(8) <= u0_m0_wo0_cma2_u(8);
    u0_m0_wo0_cma2_w(9) <= u0_m0_wo0_cma2_u(9);
    u0_m0_wo0_cma2_w(10) <= u0_m0_wo0_cma2_u(10);
    u0_m0_wo0_cma2_w(11) <= u0_m0_wo0_cma2_u(11);
    u0_m0_wo0_cma2_w(12) <= u0_m0_wo0_cma2_u(12);
    u0_m0_wo0_cma2_w(13) <= u0_m0_wo0_cma2_u(13);
    u0_m0_wo0_cma2_w(14) <= u0_m0_wo0_cma2_u(14);
    u0_m0_wo0_cma2_w(15) <= u0_m0_wo0_cma2_u(15);
    u0_m0_wo0_cma2_w(16) <= u0_m0_wo0_cma2_u(16);
    u0_m0_wo0_cma2_w(17) <= u0_m0_wo0_cma2_u(17);
    u0_m0_wo0_cma2_w(18) <= u0_m0_wo0_cma2_u(18);
    u0_m0_wo0_cma2_w(19) <= u0_m0_wo0_cma2_u(19);
    u0_m0_wo0_cma2_w(20) <= u0_m0_wo0_cma2_u(20);
    u0_m0_wo0_cma2_w(21) <= u0_m0_wo0_cma2_u(21);
    u0_m0_wo0_cma2_w(22) <= u0_m0_wo0_cma2_u(22);
    u0_m0_wo0_cma2_w(23) <= u0_m0_wo0_cma2_u(23);
    u0_m0_wo0_cma2_w(24) <= u0_m0_wo0_cma2_u(24);
    u0_m0_wo0_cma2_w(25) <= u0_m0_wo0_cma2_u(25);
    u0_m0_wo0_cma2_w(26) <= u0_m0_wo0_cma2_u(26);
    u0_m0_wo0_cma2_w(27) <= u0_m0_wo0_cma2_u(27);
    u0_m0_wo0_cma2_w(28) <= u0_m0_wo0_cma2_u(28);
    u0_m0_wo0_cma2_w(29) <= u0_m0_wo0_cma2_u(29);
    u0_m0_wo0_cma2_w(30) <= u0_m0_wo0_cma2_u(30);
    u0_m0_wo0_cma2_w(31) <= u0_m0_wo0_cma2_u(31);
    u0_m0_wo0_cma2_x(0) <= u0_m0_wo0_cma2_w(0);
    u0_m0_wo0_cma2_x(1) <= u0_m0_wo0_cma2_w(1);
    u0_m0_wo0_cma2_x(2) <= u0_m0_wo0_cma2_w(2);
    u0_m0_wo0_cma2_x(3) <= u0_m0_wo0_cma2_w(3);
    u0_m0_wo0_cma2_x(4) <= u0_m0_wo0_cma2_w(4);
    u0_m0_wo0_cma2_x(5) <= u0_m0_wo0_cma2_w(5);
    u0_m0_wo0_cma2_x(6) <= u0_m0_wo0_cma2_w(6);
    u0_m0_wo0_cma2_x(7) <= u0_m0_wo0_cma2_w(7);
    u0_m0_wo0_cma2_x(8) <= u0_m0_wo0_cma2_w(8);
    u0_m0_wo0_cma2_x(9) <= u0_m0_wo0_cma2_w(9);
    u0_m0_wo0_cma2_x(10) <= u0_m0_wo0_cma2_w(10);
    u0_m0_wo0_cma2_x(11) <= u0_m0_wo0_cma2_w(11);
    u0_m0_wo0_cma2_x(12) <= u0_m0_wo0_cma2_w(12);
    u0_m0_wo0_cma2_x(13) <= u0_m0_wo0_cma2_w(13);
    u0_m0_wo0_cma2_x(14) <= u0_m0_wo0_cma2_w(14);
    u0_m0_wo0_cma2_x(15) <= u0_m0_wo0_cma2_w(15);
    u0_m0_wo0_cma2_x(16) <= u0_m0_wo0_cma2_w(16);
    u0_m0_wo0_cma2_x(17) <= u0_m0_wo0_cma2_w(17);
    u0_m0_wo0_cma2_x(18) <= u0_m0_wo0_cma2_w(18);
    u0_m0_wo0_cma2_x(19) <= u0_m0_wo0_cma2_w(19);
    u0_m0_wo0_cma2_x(20) <= u0_m0_wo0_cma2_w(20);
    u0_m0_wo0_cma2_x(21) <= u0_m0_wo0_cma2_w(21);
    u0_m0_wo0_cma2_x(22) <= u0_m0_wo0_cma2_w(22);
    u0_m0_wo0_cma2_x(23) <= u0_m0_wo0_cma2_w(23);
    u0_m0_wo0_cma2_x(24) <= u0_m0_wo0_cma2_w(24);
    u0_m0_wo0_cma2_x(25) <= u0_m0_wo0_cma2_w(25);
    u0_m0_wo0_cma2_x(26) <= u0_m0_wo0_cma2_w(26);
    u0_m0_wo0_cma2_x(27) <= u0_m0_wo0_cma2_w(27);
    u0_m0_wo0_cma2_x(28) <= u0_m0_wo0_cma2_w(28);
    u0_m0_wo0_cma2_x(29) <= u0_m0_wo0_cma2_w(29);
    u0_m0_wo0_cma2_x(30) <= u0_m0_wo0_cma2_w(30);
    u0_m0_wo0_cma2_x(31) <= u0_m0_wo0_cma2_w(31);
    u0_m0_wo0_cma2_y(0) <= u0_m0_wo0_cma2_s(1) + u0_m0_wo0_cma2_x(0);
    u0_m0_wo0_cma2_y(1) <= u0_m0_wo0_cma2_s(2) + u0_m0_wo0_cma2_x(1);
    u0_m0_wo0_cma2_y(2) <= u0_m0_wo0_cma2_s(3) + u0_m0_wo0_cma2_x(2);
    u0_m0_wo0_cma2_y(3) <= u0_m0_wo0_cma2_s(4) + u0_m0_wo0_cma2_x(3);
    u0_m0_wo0_cma2_y(4) <= u0_m0_wo0_cma2_s(5) + u0_m0_wo0_cma2_x(4);
    u0_m0_wo0_cma2_y(5) <= u0_m0_wo0_cma2_s(6) + u0_m0_wo0_cma2_x(5);
    u0_m0_wo0_cma2_y(6) <= u0_m0_wo0_cma2_s(7) + u0_m0_wo0_cma2_x(6);
    u0_m0_wo0_cma2_y(7) <= u0_m0_wo0_cma2_s(8) + u0_m0_wo0_cma2_x(7);
    u0_m0_wo0_cma2_y(8) <= u0_m0_wo0_cma2_s(9) + u0_m0_wo0_cma2_x(8);
    u0_m0_wo0_cma2_y(9) <= u0_m0_wo0_cma2_s(10) + u0_m0_wo0_cma2_x(9);
    u0_m0_wo0_cma2_y(10) <= u0_m0_wo0_cma2_s(11) + u0_m0_wo0_cma2_x(10);
    u0_m0_wo0_cma2_y(11) <= u0_m0_wo0_cma2_s(12) + u0_m0_wo0_cma2_x(11);
    u0_m0_wo0_cma2_y(12) <= u0_m0_wo0_cma2_s(13) + u0_m0_wo0_cma2_x(12);
    u0_m0_wo0_cma2_y(13) <= u0_m0_wo0_cma2_s(14) + u0_m0_wo0_cma2_x(13);
    u0_m0_wo0_cma2_y(14) <= u0_m0_wo0_cma2_s(15) + u0_m0_wo0_cma2_x(14);
    u0_m0_wo0_cma2_y(15) <= u0_m0_wo0_cma2_s(16) + u0_m0_wo0_cma2_x(15);
    u0_m0_wo0_cma2_y(16) <= u0_m0_wo0_cma2_s(17) + u0_m0_wo0_cma2_x(16);
    u0_m0_wo0_cma2_y(17) <= u0_m0_wo0_cma2_s(18) + u0_m0_wo0_cma2_x(17);
    u0_m0_wo0_cma2_y(18) <= u0_m0_wo0_cma2_s(19) + u0_m0_wo0_cma2_x(18);
    u0_m0_wo0_cma2_y(19) <= u0_m0_wo0_cma2_s(20) + u0_m0_wo0_cma2_x(19);
    u0_m0_wo0_cma2_y(20) <= u0_m0_wo0_cma2_s(21) + u0_m0_wo0_cma2_x(20);
    u0_m0_wo0_cma2_y(21) <= u0_m0_wo0_cma2_s(22) + u0_m0_wo0_cma2_x(21);
    u0_m0_wo0_cma2_y(22) <= u0_m0_wo0_cma2_s(23) + u0_m0_wo0_cma2_x(22);
    u0_m0_wo0_cma2_y(23) <= u0_m0_wo0_cma2_s(24) + u0_m0_wo0_cma2_x(23);
    u0_m0_wo0_cma2_y(24) <= u0_m0_wo0_cma2_s(25) + u0_m0_wo0_cma2_x(24);
    u0_m0_wo0_cma2_y(25) <= u0_m0_wo0_cma2_s(26) + u0_m0_wo0_cma2_x(25);
    u0_m0_wo0_cma2_y(26) <= u0_m0_wo0_cma2_s(27) + u0_m0_wo0_cma2_x(26);
    u0_m0_wo0_cma2_y(27) <= u0_m0_wo0_cma2_s(28) + u0_m0_wo0_cma2_x(27);
    u0_m0_wo0_cma2_y(28) <= u0_m0_wo0_cma2_s(29) + u0_m0_wo0_cma2_x(28);
    u0_m0_wo0_cma2_y(29) <= u0_m0_wo0_cma2_s(30) + u0_m0_wo0_cma2_x(29);
    u0_m0_wo0_cma2_y(30) <= u0_m0_wo0_cma2_s(31) + u0_m0_wo0_cma2_x(30);
    u0_m0_wo0_cma2_y(31) <= u0_m0_wo0_cma2_x(31);
    u0_m0_wo0_cma2_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma2_a0 <= (others => (others => '0'));
            u0_m0_wo0_cma2_c0 <= (others => (others => '0'));
            u0_m0_wo0_cma2_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                u0_m0_wo0_cma2_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_wi8_r0_phasedelay64_q),10);
                u0_m0_wo0_cma2_a0(1) <= RESIZE(SIGNED(u0_m0_wo0_wi8_r0_delayr65_q),10);
                u0_m0_wo0_cma2_a0(2) <= RESIZE(SIGNED(u0_m0_wo0_wi8_r0_delayr66_q),10);
                u0_m0_wo0_cma2_a0(3) <= RESIZE(SIGNED(u0_m0_wo0_wi8_r0_delayr67_q),10);
                u0_m0_wo0_cma2_a0(4) <= RESIZE(SIGNED(u0_m0_wo0_wi8_r0_delayr68_q),10);
                u0_m0_wo0_cma2_a0(5) <= RESIZE(SIGNED(u0_m0_wo0_wi8_r0_delayr69_q),10);
                u0_m0_wo0_cma2_a0(6) <= RESIZE(SIGNED(u0_m0_wo0_wi8_r0_delayr70_q),10);
                u0_m0_wo0_cma2_a0(7) <= RESIZE(SIGNED(u0_m0_wo0_wi8_r0_delayr71_q),10);
                u0_m0_wo0_cma2_a0(8) <= RESIZE(SIGNED(u0_m0_wo0_wi9_r0_phasedelay72_q),10);
                u0_m0_wo0_cma2_a0(9) <= RESIZE(SIGNED(u0_m0_wo0_wi9_r0_delayr73_q),10);
                u0_m0_wo0_cma2_a0(10) <= RESIZE(SIGNED(u0_m0_wo0_wi9_r0_delayr74_q),10);
                u0_m0_wo0_cma2_a0(11) <= RESIZE(SIGNED(u0_m0_wo0_wi9_r0_delayr75_q),10);
                u0_m0_wo0_cma2_a0(12) <= RESIZE(SIGNED(u0_m0_wo0_wi9_r0_delayr76_q),10);
                u0_m0_wo0_cma2_a0(13) <= RESIZE(SIGNED(u0_m0_wo0_wi9_r0_delayr77_q),10);
                u0_m0_wo0_cma2_a0(14) <= RESIZE(SIGNED(u0_m0_wo0_wi9_r0_delayr78_q),10);
                u0_m0_wo0_cma2_a0(15) <= RESIZE(SIGNED(u0_m0_wo0_wi9_r0_delayr79_q),10);
                u0_m0_wo0_cma2_a0(16) <= RESIZE(SIGNED(u0_m0_wo0_wi10_r0_phasedelay80_q),10);
                u0_m0_wo0_cma2_a0(17) <= RESIZE(SIGNED(u0_m0_wo0_wi10_r0_delayr81_q),10);
                u0_m0_wo0_cma2_a0(18) <= RESIZE(SIGNED(u0_m0_wo0_wi10_r0_delayr82_q),10);
                u0_m0_wo0_cma2_a0(19) <= RESIZE(SIGNED(u0_m0_wo0_wi10_r0_delayr83_q),10);
                u0_m0_wo0_cma2_a0(20) <= RESIZE(SIGNED(u0_m0_wo0_wi10_r0_delayr84_q),10);
                u0_m0_wo0_cma2_a0(21) <= RESIZE(SIGNED(u0_m0_wo0_wi10_r0_delayr85_q),10);
                u0_m0_wo0_cma2_a0(22) <= RESIZE(SIGNED(u0_m0_wo0_wi10_r0_delayr86_q),10);
                u0_m0_wo0_cma2_a0(23) <= RESIZE(SIGNED(u0_m0_wo0_wi10_r0_delayr87_q),10);
                u0_m0_wo0_cma2_a0(24) <= RESIZE(SIGNED(u0_m0_wo0_wi11_r0_phasedelay88_q),10);
                u0_m0_wo0_cma2_a0(25) <= RESIZE(SIGNED(u0_m0_wo0_wi11_r0_delayr89_q),10);
                u0_m0_wo0_cma2_a0(26) <= RESIZE(SIGNED(u0_m0_wo0_wi11_r0_delayr90_q),10);
                u0_m0_wo0_cma2_a0(27) <= RESIZE(SIGNED(u0_m0_wo0_wi11_r0_delayr91_q),10);
                u0_m0_wo0_cma2_a0(28) <= RESIZE(SIGNED(u0_m0_wo0_wi11_r0_delayr92_q),10);
                u0_m0_wo0_cma2_a0(29) <= RESIZE(SIGNED(u0_m0_wo0_wi11_r0_delayr93_q),10);
                u0_m0_wo0_cma2_a0(30) <= RESIZE(SIGNED(u0_m0_wo0_wi11_r0_delayr94_q),10);
                u0_m0_wo0_cma2_a0(31) <= RESIZE(SIGNED(u0_m0_wo0_wi11_r0_delayr95_q),10);
                u0_m0_wo0_cma2_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(7) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(8) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(9) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(10) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(11) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(12) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(13) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(14) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(15) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(16) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(17) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(18) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(19) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(20) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(21) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(22) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(23) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(24) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(25) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(26) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(27) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(28) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(29) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(30) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma2_c0(31) <= RESIZE(UNSIGNED(GND_q),3);
            END IF;
            IF (d_u0_m0_wo0_compute_q_11_q = "1") THEN
                u0_m0_wo0_cma2_s(0) <= u0_m0_wo0_cma2_y(0);
                u0_m0_wo0_cma2_s(1) <= u0_m0_wo0_cma2_y(1);
                u0_m0_wo0_cma2_s(2) <= u0_m0_wo0_cma2_y(2);
                u0_m0_wo0_cma2_s(3) <= u0_m0_wo0_cma2_y(3);
                u0_m0_wo0_cma2_s(4) <= u0_m0_wo0_cma2_y(4);
                u0_m0_wo0_cma2_s(5) <= u0_m0_wo0_cma2_y(5);
                u0_m0_wo0_cma2_s(6) <= u0_m0_wo0_cma2_y(6);
                u0_m0_wo0_cma2_s(7) <= u0_m0_wo0_cma2_y(7);
                u0_m0_wo0_cma2_s(8) <= u0_m0_wo0_cma2_y(8);
                u0_m0_wo0_cma2_s(9) <= u0_m0_wo0_cma2_y(9);
                u0_m0_wo0_cma2_s(10) <= u0_m0_wo0_cma2_y(10);
                u0_m0_wo0_cma2_s(11) <= u0_m0_wo0_cma2_y(11);
                u0_m0_wo0_cma2_s(12) <= u0_m0_wo0_cma2_y(12);
                u0_m0_wo0_cma2_s(13) <= u0_m0_wo0_cma2_y(13);
                u0_m0_wo0_cma2_s(14) <= u0_m0_wo0_cma2_y(14);
                u0_m0_wo0_cma2_s(15) <= u0_m0_wo0_cma2_y(15);
                u0_m0_wo0_cma2_s(16) <= u0_m0_wo0_cma2_y(16);
                u0_m0_wo0_cma2_s(17) <= u0_m0_wo0_cma2_y(17);
                u0_m0_wo0_cma2_s(18) <= u0_m0_wo0_cma2_y(18);
                u0_m0_wo0_cma2_s(19) <= u0_m0_wo0_cma2_y(19);
                u0_m0_wo0_cma2_s(20) <= u0_m0_wo0_cma2_y(20);
                u0_m0_wo0_cma2_s(21) <= u0_m0_wo0_cma2_y(21);
                u0_m0_wo0_cma2_s(22) <= u0_m0_wo0_cma2_y(22);
                u0_m0_wo0_cma2_s(23) <= u0_m0_wo0_cma2_y(23);
                u0_m0_wo0_cma2_s(24) <= u0_m0_wo0_cma2_y(24);
                u0_m0_wo0_cma2_s(25) <= u0_m0_wo0_cma2_y(25);
                u0_m0_wo0_cma2_s(26) <= u0_m0_wo0_cma2_y(26);
                u0_m0_wo0_cma2_s(27) <= u0_m0_wo0_cma2_y(27);
                u0_m0_wo0_cma2_s(28) <= u0_m0_wo0_cma2_y(28);
                u0_m0_wo0_cma2_s(29) <= u0_m0_wo0_cma2_y(29);
                u0_m0_wo0_cma2_s(30) <= u0_m0_wo0_cma2_y(30);
                u0_m0_wo0_cma2_s(31) <= u0_m0_wo0_cma2_y(31);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma2_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma2_s(0)(25 downto 0)), xout => u0_m0_wo0_cma2_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma2_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma2_qq(25 downto 0));

    -- u0_m0_wo0_mtree_add0_1(ADD,3512)@12
    u0_m0_wo0_mtree_add0_1_a <= STD_LOGIC_VECTOR(u0_m0_wo0_cma2_q(23 downto 0));
    u0_m0_wo0_mtree_add0_1_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cma3_q(23 downto 0));
    u0_m0_wo0_mtree_add0_1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_1_a) + SIGNED(u0_m0_wo0_mtree_add0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_1_q <= u0_m0_wo0_mtree_add0_1_o(23 downto 0);

    -- u0_m0_wo0_wi7_r0_delayr63(DELAY,1305)@10
    u0_m0_wo0_wi7_r0_delayr63_q <= u0_m0_wo0_wi7_r0_delayr62_q;

    -- u0_m0_wo0_wi7_r0_delayr62(DELAY,1304)@10
    u0_m0_wo0_wi7_r0_delayr62_q <= u0_m0_wo0_wi7_r0_delayr61_q;

    -- u0_m0_wo0_wi7_r0_delayr61(DELAY,1303)@10
    u0_m0_wo0_wi7_r0_delayr61_q <= u0_m0_wo0_wi7_r0_delayr60_q;

    -- u0_m0_wo0_wi7_r0_delayr60(DELAY,1302)@10
    u0_m0_wo0_wi7_r0_delayr60_q <= u0_m0_wo0_wi7_r0_delayr59_q;

    -- u0_m0_wo0_wi7_r0_delayr59(DELAY,1301)@10
    u0_m0_wo0_wi7_r0_delayr59_q <= u0_m0_wo0_wi7_r0_delayr58_q;

    -- u0_m0_wo0_wi7_r0_delayr58(DELAY,1300)@10
    u0_m0_wo0_wi7_r0_delayr58_q <= u0_m0_wo0_wi7_r0_delayr57_q;

    -- u0_m0_wo0_wi7_r0_delayr57(DELAY,1299)@10
    u0_m0_wo0_wi7_r0_delayr57_q <= u0_m0_wo0_wi7_r0_phasedelay56_q;

    -- u0_m0_wo0_wi7_r0_delayr56_notEnable(LOGICAL,3617)@10
    u0_m0_wo0_wi7_r0_delayr56_notEnable_a <= xIn_v;
    u0_m0_wo0_wi7_r0_delayr56_notEnable_q <= not (u0_m0_wo0_wi7_r0_delayr56_notEnable_a);

    -- u0_m0_wo0_wi7_r0_delayr56_nor(LOGICAL,3618)@10
    u0_m0_wo0_wi7_r0_delayr56_nor_a <= u0_m0_wo0_wi7_r0_delayr56_notEnable_q;
    u0_m0_wo0_wi7_r0_delayr56_nor_b <= u0_m0_wo0_wi7_r0_delayr56_sticky_ena_q;
    u0_m0_wo0_wi7_r0_delayr56_nor_q <= not (u0_m0_wo0_wi7_r0_delayr56_nor_a or u0_m0_wo0_wi7_r0_delayr56_nor_b);

    -- u0_m0_wo0_wi7_r0_delayr56_mem_top(CONSTANT,3614)
    u0_m0_wo0_wi7_r0_delayr56_mem_top_q <= "0110";

    -- u0_m0_wo0_wi7_r0_delayr56_cmp(LOGICAL,3615)@10
    u0_m0_wo0_wi7_r0_delayr56_cmp_a <= u0_m0_wo0_wi7_r0_delayr56_mem_top_q;
    u0_m0_wo0_wi7_r0_delayr56_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi7_r0_delayr56_rdmux_q);
    u0_m0_wo0_wi7_r0_delayr56_cmp_q <= "1" WHEN u0_m0_wo0_wi7_r0_delayr56_cmp_a = u0_m0_wo0_wi7_r0_delayr56_cmp_b ELSE "0";

    -- u0_m0_wo0_wi7_r0_delayr56_cmpReg(REG,3616)@10
    u0_m0_wo0_wi7_r0_delayr56_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi7_r0_delayr56_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi7_r0_delayr56_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi7_r0_delayr56_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi7_r0_delayr56_sticky_ena(REG,3619)@10
    u0_m0_wo0_wi7_r0_delayr56_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi7_r0_delayr56_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi7_r0_delayr56_nor_q = "1") THEN
                u0_m0_wo0_wi7_r0_delayr56_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi7_r0_delayr56_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi7_r0_delayr56_enaAnd(LOGICAL,3620)@10
    u0_m0_wo0_wi7_r0_delayr56_enaAnd_a <= u0_m0_wo0_wi7_r0_delayr56_sticky_ena_q;
    u0_m0_wo0_wi7_r0_delayr56_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi7_r0_delayr56_enaAnd_q <= u0_m0_wo0_wi7_r0_delayr56_enaAnd_a and u0_m0_wo0_wi7_r0_delayr56_enaAnd_b;

    -- u0_m0_wo0_wi7_r0_delayr56_rdcnt(COUNTER,3611)@10
    -- every=1, low=0, high=6, step=1, init=1
    u0_m0_wo0_wi7_r0_delayr56_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi7_r0_delayr56_rdcnt_i <= TO_UNSIGNED(1, 3);
            u0_m0_wo0_wi7_r0_delayr56_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi7_r0_delayr56_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                    u0_m0_wo0_wi7_r0_delayr56_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi7_r0_delayr56_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi7_r0_delayr56_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi7_r0_delayr56_rdcnt_i <= u0_m0_wo0_wi7_r0_delayr56_rdcnt_i - 6;
                ELSE
                    u0_m0_wo0_wi7_r0_delayr56_rdcnt_i <= u0_m0_wo0_wi7_r0_delayr56_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi7_r0_delayr56_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi7_r0_delayr56_rdcnt_i, 3)));

    -- u0_m0_wo0_wi7_r0_delayr56_rdmux(MUX,3612)@10
    u0_m0_wo0_wi7_r0_delayr56_rdmux_s <= xIn_v;
    u0_m0_wo0_wi7_r0_delayr56_rdmux: PROCESS (u0_m0_wo0_wi7_r0_delayr56_rdmux_s, u0_m0_wo0_wi7_r0_delayr56_wraddr_q, u0_m0_wo0_wi7_r0_delayr56_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi7_r0_delayr56_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi7_r0_delayr56_rdmux_q <= u0_m0_wo0_wi7_r0_delayr56_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi7_r0_delayr56_rdmux_q <= u0_m0_wo0_wi7_r0_delayr56_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi7_r0_delayr56_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi7_r0_delayr56_wraddr(REG,3613)@10
    u0_m0_wo0_wi7_r0_delayr56_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi7_r0_delayr56_wraddr_q <= "000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi7_r0_delayr56_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi7_r0_delayr56_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi7_r0_delayr56_mem(DUALMEM,3610)@10
    u0_m0_wo0_wi7_r0_delayr56_mem_ia <= STD_LOGIC_VECTOR(xIn_7);
    u0_m0_wo0_wi7_r0_delayr56_mem_aa <= u0_m0_wo0_wi7_r0_delayr56_wraddr_q;
    u0_m0_wo0_wi7_r0_delayr56_mem_ab <= u0_m0_wo0_wi7_r0_delayr56_rdmux_q;
    u0_m0_wo0_wi7_r0_delayr56_mem_reset0 <= areset;
    u0_m0_wo0_wi7_r0_delayr56_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi7_r0_delayr56_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi7_r0_delayr56_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi7_r0_delayr56_mem_aa,
        data_a => u0_m0_wo0_wi7_r0_delayr56_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi7_r0_delayr56_mem_ab,
        q_b => u0_m0_wo0_wi7_r0_delayr56_mem_iq
    );
    u0_m0_wo0_wi7_r0_delayr56_mem_q <= u0_m0_wo0_wi7_r0_delayr56_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi7_r0_phasedelay56(DELAY,1243)@10
    u0_m0_wo0_wi7_r0_phasedelay56_q <= u0_m0_wo0_wi7_r0_delayr56_mem_q;

    -- u0_m0_wo0_wi6_r0_delayr55(DELAY,1135)@10
    u0_m0_wo0_wi6_r0_delayr55_q <= u0_m0_wo0_wi6_r0_delayr54_q;

    -- u0_m0_wo0_wi6_r0_delayr54(DELAY,1134)@10
    u0_m0_wo0_wi6_r0_delayr54_q <= u0_m0_wo0_wi6_r0_delayr53_q;

    -- u0_m0_wo0_wi6_r0_delayr53(DELAY,1133)@10
    u0_m0_wo0_wi6_r0_delayr53_q <= u0_m0_wo0_wi6_r0_delayr52_q;

    -- u0_m0_wo0_wi6_r0_delayr52(DELAY,1132)@10
    u0_m0_wo0_wi6_r0_delayr52_q <= u0_m0_wo0_wi6_r0_delayr51_q;

    -- u0_m0_wo0_wi6_r0_delayr51(DELAY,1131)@10
    u0_m0_wo0_wi6_r0_delayr51_q <= u0_m0_wo0_wi6_r0_delayr50_q;

    -- u0_m0_wo0_wi6_r0_delayr50(DELAY,1130)@10
    u0_m0_wo0_wi6_r0_delayr50_q <= u0_m0_wo0_wi6_r0_delayr49_q;

    -- u0_m0_wo0_wi6_r0_delayr49(DELAY,1129)@10
    u0_m0_wo0_wi6_r0_delayr49_q <= u0_m0_wo0_wi6_r0_phasedelay48_q;

    -- u0_m0_wo0_wi6_r0_delayr48_notEnable(LOGICAL,3606)@10
    u0_m0_wo0_wi6_r0_delayr48_notEnable_a <= xIn_v;
    u0_m0_wo0_wi6_r0_delayr48_notEnable_q <= not (u0_m0_wo0_wi6_r0_delayr48_notEnable_a);

    -- u0_m0_wo0_wi6_r0_delayr48_nor(LOGICAL,3607)@10
    u0_m0_wo0_wi6_r0_delayr48_nor_a <= u0_m0_wo0_wi6_r0_delayr48_notEnable_q;
    u0_m0_wo0_wi6_r0_delayr48_nor_b <= u0_m0_wo0_wi6_r0_delayr48_sticky_ena_q;
    u0_m0_wo0_wi6_r0_delayr48_nor_q <= not (u0_m0_wo0_wi6_r0_delayr48_nor_a or u0_m0_wo0_wi6_r0_delayr48_nor_b);

    -- u0_m0_wo0_wi6_r0_delayr48_mem_top(CONSTANT,3603)
    u0_m0_wo0_wi6_r0_delayr48_mem_top_q <= "01110";

    -- u0_m0_wo0_wi6_r0_delayr48_cmp(LOGICAL,3604)@10
    u0_m0_wo0_wi6_r0_delayr48_cmp_a <= u0_m0_wo0_wi6_r0_delayr48_mem_top_q;
    u0_m0_wo0_wi6_r0_delayr48_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi6_r0_delayr48_rdmux_q);
    u0_m0_wo0_wi6_r0_delayr48_cmp_q <= "1" WHEN u0_m0_wo0_wi6_r0_delayr48_cmp_a = u0_m0_wo0_wi6_r0_delayr48_cmp_b ELSE "0";

    -- u0_m0_wo0_wi6_r0_delayr48_cmpReg(REG,3605)@10
    u0_m0_wo0_wi6_r0_delayr48_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi6_r0_delayr48_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi6_r0_delayr48_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi6_r0_delayr48_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi6_r0_delayr48_sticky_ena(REG,3608)@10
    u0_m0_wo0_wi6_r0_delayr48_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi6_r0_delayr48_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi6_r0_delayr48_nor_q = "1") THEN
                u0_m0_wo0_wi6_r0_delayr48_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi6_r0_delayr48_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi6_r0_delayr48_enaAnd(LOGICAL,3609)@10
    u0_m0_wo0_wi6_r0_delayr48_enaAnd_a <= u0_m0_wo0_wi6_r0_delayr48_sticky_ena_q;
    u0_m0_wo0_wi6_r0_delayr48_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi6_r0_delayr48_enaAnd_q <= u0_m0_wo0_wi6_r0_delayr48_enaAnd_a and u0_m0_wo0_wi6_r0_delayr48_enaAnd_b;

    -- u0_m0_wo0_wi6_r0_delayr48_rdcnt(COUNTER,3600)@10
    -- every=1, low=0, high=14, step=1, init=1
    u0_m0_wo0_wi6_r0_delayr48_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi6_r0_delayr48_rdcnt_i <= TO_UNSIGNED(1, 4);
            u0_m0_wo0_wi6_r0_delayr48_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi6_r0_delayr48_rdcnt_i = TO_UNSIGNED(13, 4)) THEN
                    u0_m0_wo0_wi6_r0_delayr48_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi6_r0_delayr48_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi6_r0_delayr48_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi6_r0_delayr48_rdcnt_i <= u0_m0_wo0_wi6_r0_delayr48_rdcnt_i - 14;
                ELSE
                    u0_m0_wo0_wi6_r0_delayr48_rdcnt_i <= u0_m0_wo0_wi6_r0_delayr48_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi6_r0_delayr48_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi6_r0_delayr48_rdcnt_i, 4)));

    -- u0_m0_wo0_wi6_r0_delayr48_rdmux(MUX,3601)@10
    u0_m0_wo0_wi6_r0_delayr48_rdmux_s <= xIn_v;
    u0_m0_wo0_wi6_r0_delayr48_rdmux: PROCESS (u0_m0_wo0_wi6_r0_delayr48_rdmux_s, u0_m0_wo0_wi6_r0_delayr48_wraddr_q, u0_m0_wo0_wi6_r0_delayr48_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi6_r0_delayr48_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi6_r0_delayr48_rdmux_q <= u0_m0_wo0_wi6_r0_delayr48_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi6_r0_delayr48_rdmux_q <= u0_m0_wo0_wi6_r0_delayr48_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi6_r0_delayr48_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi6_r0_delayr48_wraddr(REG,3602)@10
    u0_m0_wo0_wi6_r0_delayr48_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi6_r0_delayr48_wraddr_q <= "0000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi6_r0_delayr48_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi6_r0_delayr48_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi6_r0_delayr48_mem(DUALMEM,3599)@10
    u0_m0_wo0_wi6_r0_delayr48_mem_ia <= STD_LOGIC_VECTOR(xIn_6);
    u0_m0_wo0_wi6_r0_delayr48_mem_aa <= u0_m0_wo0_wi6_r0_delayr48_wraddr_q;
    u0_m0_wo0_wi6_r0_delayr48_mem_ab <= u0_m0_wo0_wi6_r0_delayr48_rdmux_q;
    u0_m0_wo0_wi6_r0_delayr48_mem_reset0 <= areset;
    u0_m0_wo0_wi6_r0_delayr48_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi6_r0_delayr48_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi6_r0_delayr48_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi6_r0_delayr48_mem_aa,
        data_a => u0_m0_wo0_wi6_r0_delayr48_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi6_r0_delayr48_mem_ab,
        q_b => u0_m0_wo0_wi6_r0_delayr48_mem_iq
    );
    u0_m0_wo0_wi6_r0_delayr48_mem_q <= u0_m0_wo0_wi6_r0_delayr48_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi6_r0_phasedelay48(DELAY,1081)@10
    u0_m0_wo0_wi6_r0_phasedelay48_q <= u0_m0_wo0_wi6_r0_delayr48_mem_q;

    -- u0_m0_wo0_wi5_r0_delayr47(DELAY,965)@10
    u0_m0_wo0_wi5_r0_delayr47_q <= u0_m0_wo0_wi5_r0_delayr46_q;

    -- u0_m0_wo0_wi5_r0_delayr46(DELAY,964)@10
    u0_m0_wo0_wi5_r0_delayr46_q <= u0_m0_wo0_wi5_r0_delayr45_q;

    -- u0_m0_wo0_wi5_r0_delayr45(DELAY,963)@10
    u0_m0_wo0_wi5_r0_delayr45_q <= u0_m0_wo0_wi5_r0_delayr44_q;

    -- u0_m0_wo0_wi5_r0_delayr44(DELAY,962)@10
    u0_m0_wo0_wi5_r0_delayr44_q <= u0_m0_wo0_wi5_r0_delayr43_q;

    -- u0_m0_wo0_wi5_r0_delayr43(DELAY,961)@10
    u0_m0_wo0_wi5_r0_delayr43_q <= u0_m0_wo0_wi5_r0_delayr42_q;

    -- u0_m0_wo0_wi5_r0_delayr42(DELAY,960)@10
    u0_m0_wo0_wi5_r0_delayr42_q <= u0_m0_wo0_wi5_r0_delayr41_q;

    -- u0_m0_wo0_wi5_r0_delayr41(DELAY,959)@10
    u0_m0_wo0_wi5_r0_delayr41_q <= u0_m0_wo0_wi5_r0_phasedelay40_q;

    -- u0_m0_wo0_wi5_r0_delayr40_notEnable(LOGICAL,3595)@10
    u0_m0_wo0_wi5_r0_delayr40_notEnable_a <= xIn_v;
    u0_m0_wo0_wi5_r0_delayr40_notEnable_q <= not (u0_m0_wo0_wi5_r0_delayr40_notEnable_a);

    -- u0_m0_wo0_wi5_r0_delayr40_nor(LOGICAL,3596)@10
    u0_m0_wo0_wi5_r0_delayr40_nor_a <= u0_m0_wo0_wi5_r0_delayr40_notEnable_q;
    u0_m0_wo0_wi5_r0_delayr40_nor_b <= u0_m0_wo0_wi5_r0_delayr40_sticky_ena_q;
    u0_m0_wo0_wi5_r0_delayr40_nor_q <= not (u0_m0_wo0_wi5_r0_delayr40_nor_a or u0_m0_wo0_wi5_r0_delayr40_nor_b);

    -- u0_m0_wo0_wi5_r0_delayr40_mem_top(CONSTANT,3592)
    u0_m0_wo0_wi5_r0_delayr40_mem_top_q <= "010110";

    -- u0_m0_wo0_wi5_r0_delayr40_cmp(LOGICAL,3593)@10
    u0_m0_wo0_wi5_r0_delayr40_cmp_a <= u0_m0_wo0_wi5_r0_delayr40_mem_top_q;
    u0_m0_wo0_wi5_r0_delayr40_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi5_r0_delayr40_rdmux_q);
    u0_m0_wo0_wi5_r0_delayr40_cmp_q <= "1" WHEN u0_m0_wo0_wi5_r0_delayr40_cmp_a = u0_m0_wo0_wi5_r0_delayr40_cmp_b ELSE "0";

    -- u0_m0_wo0_wi5_r0_delayr40_cmpReg(REG,3594)@10
    u0_m0_wo0_wi5_r0_delayr40_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi5_r0_delayr40_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi5_r0_delayr40_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi5_r0_delayr40_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi5_r0_delayr40_sticky_ena(REG,3597)@10
    u0_m0_wo0_wi5_r0_delayr40_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi5_r0_delayr40_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi5_r0_delayr40_nor_q = "1") THEN
                u0_m0_wo0_wi5_r0_delayr40_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi5_r0_delayr40_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi5_r0_delayr40_enaAnd(LOGICAL,3598)@10
    u0_m0_wo0_wi5_r0_delayr40_enaAnd_a <= u0_m0_wo0_wi5_r0_delayr40_sticky_ena_q;
    u0_m0_wo0_wi5_r0_delayr40_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi5_r0_delayr40_enaAnd_q <= u0_m0_wo0_wi5_r0_delayr40_enaAnd_a and u0_m0_wo0_wi5_r0_delayr40_enaAnd_b;

    -- u0_m0_wo0_wi5_r0_delayr40_rdcnt(COUNTER,3589)@10
    -- every=1, low=0, high=22, step=1, init=1
    u0_m0_wo0_wi5_r0_delayr40_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi5_r0_delayr40_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi5_r0_delayr40_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi5_r0_delayr40_rdcnt_i = TO_UNSIGNED(21, 5)) THEN
                    u0_m0_wo0_wi5_r0_delayr40_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi5_r0_delayr40_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi5_r0_delayr40_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi5_r0_delayr40_rdcnt_i <= u0_m0_wo0_wi5_r0_delayr40_rdcnt_i - 22;
                ELSE
                    u0_m0_wo0_wi5_r0_delayr40_rdcnt_i <= u0_m0_wo0_wi5_r0_delayr40_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi5_r0_delayr40_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi5_r0_delayr40_rdcnt_i, 5)));

    -- u0_m0_wo0_wi5_r0_delayr40_rdmux(MUX,3590)@10
    u0_m0_wo0_wi5_r0_delayr40_rdmux_s <= xIn_v;
    u0_m0_wo0_wi5_r0_delayr40_rdmux: PROCESS (u0_m0_wo0_wi5_r0_delayr40_rdmux_s, u0_m0_wo0_wi5_r0_delayr40_wraddr_q, u0_m0_wo0_wi5_r0_delayr40_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi5_r0_delayr40_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi5_r0_delayr40_rdmux_q <= u0_m0_wo0_wi5_r0_delayr40_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi5_r0_delayr40_rdmux_q <= u0_m0_wo0_wi5_r0_delayr40_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi5_r0_delayr40_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi5_r0_delayr40_wraddr(REG,3591)@10
    u0_m0_wo0_wi5_r0_delayr40_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi5_r0_delayr40_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi5_r0_delayr40_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi5_r0_delayr40_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi5_r0_delayr40_mem(DUALMEM,3588)@10
    u0_m0_wo0_wi5_r0_delayr40_mem_ia <= STD_LOGIC_VECTOR(xIn_5);
    u0_m0_wo0_wi5_r0_delayr40_mem_aa <= u0_m0_wo0_wi5_r0_delayr40_wraddr_q;
    u0_m0_wo0_wi5_r0_delayr40_mem_ab <= u0_m0_wo0_wi5_r0_delayr40_rdmux_q;
    u0_m0_wo0_wi5_r0_delayr40_mem_reset0 <= areset;
    u0_m0_wo0_wi5_r0_delayr40_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi5_r0_delayr40_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi5_r0_delayr40_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi5_r0_delayr40_mem_aa,
        data_a => u0_m0_wo0_wi5_r0_delayr40_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi5_r0_delayr40_mem_ab,
        q_b => u0_m0_wo0_wi5_r0_delayr40_mem_iq
    );
    u0_m0_wo0_wi5_r0_delayr40_mem_q <= u0_m0_wo0_wi5_r0_delayr40_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi5_r0_phasedelay40(DELAY,919)@10
    u0_m0_wo0_wi5_r0_phasedelay40_q <= u0_m0_wo0_wi5_r0_delayr40_mem_q;

    -- u0_m0_wo0_wi4_r0_delayr39(DELAY,795)@10
    u0_m0_wo0_wi4_r0_delayr39_q <= u0_m0_wo0_wi4_r0_delayr38_q;

    -- u0_m0_wo0_wi4_r0_delayr38(DELAY,794)@10
    u0_m0_wo0_wi4_r0_delayr38_q <= u0_m0_wo0_wi4_r0_delayr37_q;

    -- u0_m0_wo0_wi4_r0_delayr37(DELAY,793)@10
    u0_m0_wo0_wi4_r0_delayr37_q <= u0_m0_wo0_wi4_r0_delayr36_q;

    -- u0_m0_wo0_wi4_r0_delayr36(DELAY,792)@10
    u0_m0_wo0_wi4_r0_delayr36_q <= u0_m0_wo0_wi4_r0_delayr35_q;

    -- u0_m0_wo0_wi4_r0_delayr35(DELAY,791)@10
    u0_m0_wo0_wi4_r0_delayr35_q <= u0_m0_wo0_wi4_r0_delayr34_q;

    -- u0_m0_wo0_wi4_r0_delayr34(DELAY,790)@10
    u0_m0_wo0_wi4_r0_delayr34_q <= u0_m0_wo0_wi4_r0_delayr33_q;

    -- u0_m0_wo0_wi4_r0_delayr33(DELAY,789)@10
    u0_m0_wo0_wi4_r0_delayr33_q <= u0_m0_wo0_wi4_r0_phasedelay32_q;

    -- u0_m0_wo0_wi4_r0_delayr32_notEnable(LOGICAL,3584)@10
    u0_m0_wo0_wi4_r0_delayr32_notEnable_a <= xIn_v;
    u0_m0_wo0_wi4_r0_delayr32_notEnable_q <= not (u0_m0_wo0_wi4_r0_delayr32_notEnable_a);

    -- u0_m0_wo0_wi4_r0_delayr32_nor(LOGICAL,3585)@10
    u0_m0_wo0_wi4_r0_delayr32_nor_a <= u0_m0_wo0_wi4_r0_delayr32_notEnable_q;
    u0_m0_wo0_wi4_r0_delayr32_nor_b <= u0_m0_wo0_wi4_r0_delayr32_sticky_ena_q;
    u0_m0_wo0_wi4_r0_delayr32_nor_q <= not (u0_m0_wo0_wi4_r0_delayr32_nor_a or u0_m0_wo0_wi4_r0_delayr32_nor_b);

    -- u0_m0_wo0_wi4_r0_delayr32_mem_top(CONSTANT,3581)
    u0_m0_wo0_wi4_r0_delayr32_mem_top_q <= "011110";

    -- u0_m0_wo0_wi4_r0_delayr32_cmp(LOGICAL,3582)@10
    u0_m0_wo0_wi4_r0_delayr32_cmp_a <= u0_m0_wo0_wi4_r0_delayr32_mem_top_q;
    u0_m0_wo0_wi4_r0_delayr32_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi4_r0_delayr32_rdmux_q);
    u0_m0_wo0_wi4_r0_delayr32_cmp_q <= "1" WHEN u0_m0_wo0_wi4_r0_delayr32_cmp_a = u0_m0_wo0_wi4_r0_delayr32_cmp_b ELSE "0";

    -- u0_m0_wo0_wi4_r0_delayr32_cmpReg(REG,3583)@10
    u0_m0_wo0_wi4_r0_delayr32_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi4_r0_delayr32_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi4_r0_delayr32_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi4_r0_delayr32_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi4_r0_delayr32_sticky_ena(REG,3586)@10
    u0_m0_wo0_wi4_r0_delayr32_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi4_r0_delayr32_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi4_r0_delayr32_nor_q = "1") THEN
                u0_m0_wo0_wi4_r0_delayr32_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi4_r0_delayr32_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi4_r0_delayr32_enaAnd(LOGICAL,3587)@10
    u0_m0_wo0_wi4_r0_delayr32_enaAnd_a <= u0_m0_wo0_wi4_r0_delayr32_sticky_ena_q;
    u0_m0_wo0_wi4_r0_delayr32_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi4_r0_delayr32_enaAnd_q <= u0_m0_wo0_wi4_r0_delayr32_enaAnd_a and u0_m0_wo0_wi4_r0_delayr32_enaAnd_b;

    -- u0_m0_wo0_wi4_r0_delayr32_rdcnt(COUNTER,3578)@10
    -- every=1, low=0, high=30, step=1, init=1
    u0_m0_wo0_wi4_r0_delayr32_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi4_r0_delayr32_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi4_r0_delayr32_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi4_r0_delayr32_rdcnt_i = TO_UNSIGNED(29, 5)) THEN
                    u0_m0_wo0_wi4_r0_delayr32_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi4_r0_delayr32_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi4_r0_delayr32_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi4_r0_delayr32_rdcnt_i <= u0_m0_wo0_wi4_r0_delayr32_rdcnt_i - 30;
                ELSE
                    u0_m0_wo0_wi4_r0_delayr32_rdcnt_i <= u0_m0_wo0_wi4_r0_delayr32_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi4_r0_delayr32_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi4_r0_delayr32_rdcnt_i, 5)));

    -- u0_m0_wo0_wi4_r0_delayr32_rdmux(MUX,3579)@10
    u0_m0_wo0_wi4_r0_delayr32_rdmux_s <= xIn_v;
    u0_m0_wo0_wi4_r0_delayr32_rdmux: PROCESS (u0_m0_wo0_wi4_r0_delayr32_rdmux_s, u0_m0_wo0_wi4_r0_delayr32_wraddr_q, u0_m0_wo0_wi4_r0_delayr32_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi4_r0_delayr32_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi4_r0_delayr32_rdmux_q <= u0_m0_wo0_wi4_r0_delayr32_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi4_r0_delayr32_rdmux_q <= u0_m0_wo0_wi4_r0_delayr32_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi4_r0_delayr32_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi4_r0_delayr32_wraddr(REG,3580)@10
    u0_m0_wo0_wi4_r0_delayr32_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi4_r0_delayr32_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi4_r0_delayr32_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi4_r0_delayr32_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi4_r0_delayr32_mem(DUALMEM,3577)@10
    u0_m0_wo0_wi4_r0_delayr32_mem_ia <= STD_LOGIC_VECTOR(xIn_4);
    u0_m0_wo0_wi4_r0_delayr32_mem_aa <= u0_m0_wo0_wi4_r0_delayr32_wraddr_q;
    u0_m0_wo0_wi4_r0_delayr32_mem_ab <= u0_m0_wo0_wi4_r0_delayr32_rdmux_q;
    u0_m0_wo0_wi4_r0_delayr32_mem_reset0 <= areset;
    u0_m0_wo0_wi4_r0_delayr32_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi4_r0_delayr32_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi4_r0_delayr32_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi4_r0_delayr32_mem_aa,
        data_a => u0_m0_wo0_wi4_r0_delayr32_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi4_r0_delayr32_mem_ab,
        q_b => u0_m0_wo0_wi4_r0_delayr32_mem_iq
    );
    u0_m0_wo0_wi4_r0_delayr32_mem_q <= u0_m0_wo0_wi4_r0_delayr32_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi4_r0_phasedelay32(DELAY,757)@10
    u0_m0_wo0_wi4_r0_phasedelay32_q <= u0_m0_wo0_wi4_r0_delayr32_mem_q;

    -- u0_m0_wo0_cma1(CHAINMULTADD,3507)@10
    -- altera synthesis_off
    u0_m0_wo0_cma1_k0 <= (
        0 => TO_SIGNED(44,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k1 <= (
        0 => TO_SIGNED(80,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k2 <= (
        0 => TO_SIGNED(111,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k3 <= (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k4 <= (
        0 => TO_SIGNED(119,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k5 <= (
        0 => TO_SIGNED(92,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k6 <= (
        0 => TO_SIGNED(56,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k7 <= (
        0 => TO_SIGNED(23,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k8 <= (
        0 => TO_SIGNED(42,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k9 <= (
        0 => TO_SIGNED(78,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k10 <= (
        0 => TO_SIGNED(110,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k11 <= (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k12 <= (
        0 => TO_SIGNED(120,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k13 <= (
        0 => TO_SIGNED(94,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k14 <= (
        0 => TO_SIGNED(58,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k15 <= (
        0 => TO_SIGNED(25,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k16 <= (
        0 => TO_SIGNED(41,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k17 <= (
        0 => TO_SIGNED(77,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k18 <= (
        0 => TO_SIGNED(109,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k19 <= (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k20 <= (
        0 => TO_SIGNED(121,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k21 <= (
        0 => TO_SIGNED(96,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k22 <= (
        0 => TO_SIGNED(60,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k23 <= (
        0 => TO_SIGNED(26,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k24 <= (
        0 => TO_SIGNED(39,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k25 <= (
        0 => TO_SIGNED(75,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k26 <= (
        0 => TO_SIGNED(107,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k27 <= (
        0 => TO_SIGNED(125,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k28 <= (
        0 => TO_SIGNED(121,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k29 <= (
        0 => TO_SIGNED(97,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k30 <= (
        0 => TO_SIGNED(62,11),
        others => (others => '0'));
    u0_m0_wo0_cma1_k31 <= (
        0 => TO_SIGNED(28,11),
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
    u0_m0_wo0_cma1_r(8) <= u0_m0_wo0_cma1_k8(TO_INTEGER(u0_m0_wo0_cma1_c0(8)));
    u0_m0_wo0_cma1_r(9) <= u0_m0_wo0_cma1_k9(TO_INTEGER(u0_m0_wo0_cma1_c0(9)));
    u0_m0_wo0_cma1_r(10) <= u0_m0_wo0_cma1_k10(TO_INTEGER(u0_m0_wo0_cma1_c0(10)));
    u0_m0_wo0_cma1_r(11) <= u0_m0_wo0_cma1_k11(TO_INTEGER(u0_m0_wo0_cma1_c0(11)));
    u0_m0_wo0_cma1_r(12) <= u0_m0_wo0_cma1_k12(TO_INTEGER(u0_m0_wo0_cma1_c0(12)));
    u0_m0_wo0_cma1_r(13) <= u0_m0_wo0_cma1_k13(TO_INTEGER(u0_m0_wo0_cma1_c0(13)));
    u0_m0_wo0_cma1_r(14) <= u0_m0_wo0_cma1_k14(TO_INTEGER(u0_m0_wo0_cma1_c0(14)));
    u0_m0_wo0_cma1_r(15) <= u0_m0_wo0_cma1_k15(TO_INTEGER(u0_m0_wo0_cma1_c0(15)));
    u0_m0_wo0_cma1_r(16) <= u0_m0_wo0_cma1_k16(TO_INTEGER(u0_m0_wo0_cma1_c0(16)));
    u0_m0_wo0_cma1_r(17) <= u0_m0_wo0_cma1_k17(TO_INTEGER(u0_m0_wo0_cma1_c0(17)));
    u0_m0_wo0_cma1_r(18) <= u0_m0_wo0_cma1_k18(TO_INTEGER(u0_m0_wo0_cma1_c0(18)));
    u0_m0_wo0_cma1_r(19) <= u0_m0_wo0_cma1_k19(TO_INTEGER(u0_m0_wo0_cma1_c0(19)));
    u0_m0_wo0_cma1_r(20) <= u0_m0_wo0_cma1_k20(TO_INTEGER(u0_m0_wo0_cma1_c0(20)));
    u0_m0_wo0_cma1_r(21) <= u0_m0_wo0_cma1_k21(TO_INTEGER(u0_m0_wo0_cma1_c0(21)));
    u0_m0_wo0_cma1_r(22) <= u0_m0_wo0_cma1_k22(TO_INTEGER(u0_m0_wo0_cma1_c0(22)));
    u0_m0_wo0_cma1_r(23) <= u0_m0_wo0_cma1_k23(TO_INTEGER(u0_m0_wo0_cma1_c0(23)));
    u0_m0_wo0_cma1_r(24) <= u0_m0_wo0_cma1_k24(TO_INTEGER(u0_m0_wo0_cma1_c0(24)));
    u0_m0_wo0_cma1_r(25) <= u0_m0_wo0_cma1_k25(TO_INTEGER(u0_m0_wo0_cma1_c0(25)));
    u0_m0_wo0_cma1_r(26) <= u0_m0_wo0_cma1_k26(TO_INTEGER(u0_m0_wo0_cma1_c0(26)));
    u0_m0_wo0_cma1_r(27) <= u0_m0_wo0_cma1_k27(TO_INTEGER(u0_m0_wo0_cma1_c0(27)));
    u0_m0_wo0_cma1_r(28) <= u0_m0_wo0_cma1_k28(TO_INTEGER(u0_m0_wo0_cma1_c0(28)));
    u0_m0_wo0_cma1_r(29) <= u0_m0_wo0_cma1_k29(TO_INTEGER(u0_m0_wo0_cma1_c0(29)));
    u0_m0_wo0_cma1_r(30) <= u0_m0_wo0_cma1_k30(TO_INTEGER(u0_m0_wo0_cma1_c0(30)));
    u0_m0_wo0_cma1_r(31) <= u0_m0_wo0_cma1_k31(TO_INTEGER(u0_m0_wo0_cma1_c0(31)));
    u0_m0_wo0_cma1_p(0) <= u0_m0_wo0_cma1_a0(0) * u0_m0_wo0_cma1_r(0);
    u0_m0_wo0_cma1_p(1) <= u0_m0_wo0_cma1_a0(1) * u0_m0_wo0_cma1_r(1);
    u0_m0_wo0_cma1_p(2) <= u0_m0_wo0_cma1_a0(2) * u0_m0_wo0_cma1_r(2);
    u0_m0_wo0_cma1_p(3) <= u0_m0_wo0_cma1_a0(3) * u0_m0_wo0_cma1_r(3);
    u0_m0_wo0_cma1_p(4) <= u0_m0_wo0_cma1_a0(4) * u0_m0_wo0_cma1_r(4);
    u0_m0_wo0_cma1_p(5) <= u0_m0_wo0_cma1_a0(5) * u0_m0_wo0_cma1_r(5);
    u0_m0_wo0_cma1_p(6) <= u0_m0_wo0_cma1_a0(6) * u0_m0_wo0_cma1_r(6);
    u0_m0_wo0_cma1_p(7) <= u0_m0_wo0_cma1_a0(7) * u0_m0_wo0_cma1_r(7);
    u0_m0_wo0_cma1_p(8) <= u0_m0_wo0_cma1_a0(8) * u0_m0_wo0_cma1_r(8);
    u0_m0_wo0_cma1_p(9) <= u0_m0_wo0_cma1_a0(9) * u0_m0_wo0_cma1_r(9);
    u0_m0_wo0_cma1_p(10) <= u0_m0_wo0_cma1_a0(10) * u0_m0_wo0_cma1_r(10);
    u0_m0_wo0_cma1_p(11) <= u0_m0_wo0_cma1_a0(11) * u0_m0_wo0_cma1_r(11);
    u0_m0_wo0_cma1_p(12) <= u0_m0_wo0_cma1_a0(12) * u0_m0_wo0_cma1_r(12);
    u0_m0_wo0_cma1_p(13) <= u0_m0_wo0_cma1_a0(13) * u0_m0_wo0_cma1_r(13);
    u0_m0_wo0_cma1_p(14) <= u0_m0_wo0_cma1_a0(14) * u0_m0_wo0_cma1_r(14);
    u0_m0_wo0_cma1_p(15) <= u0_m0_wo0_cma1_a0(15) * u0_m0_wo0_cma1_r(15);
    u0_m0_wo0_cma1_p(16) <= u0_m0_wo0_cma1_a0(16) * u0_m0_wo0_cma1_r(16);
    u0_m0_wo0_cma1_p(17) <= u0_m0_wo0_cma1_a0(17) * u0_m0_wo0_cma1_r(17);
    u0_m0_wo0_cma1_p(18) <= u0_m0_wo0_cma1_a0(18) * u0_m0_wo0_cma1_r(18);
    u0_m0_wo0_cma1_p(19) <= u0_m0_wo0_cma1_a0(19) * u0_m0_wo0_cma1_r(19);
    u0_m0_wo0_cma1_p(20) <= u0_m0_wo0_cma1_a0(20) * u0_m0_wo0_cma1_r(20);
    u0_m0_wo0_cma1_p(21) <= u0_m0_wo0_cma1_a0(21) * u0_m0_wo0_cma1_r(21);
    u0_m0_wo0_cma1_p(22) <= u0_m0_wo0_cma1_a0(22) * u0_m0_wo0_cma1_r(22);
    u0_m0_wo0_cma1_p(23) <= u0_m0_wo0_cma1_a0(23) * u0_m0_wo0_cma1_r(23);
    u0_m0_wo0_cma1_p(24) <= u0_m0_wo0_cma1_a0(24) * u0_m0_wo0_cma1_r(24);
    u0_m0_wo0_cma1_p(25) <= u0_m0_wo0_cma1_a0(25) * u0_m0_wo0_cma1_r(25);
    u0_m0_wo0_cma1_p(26) <= u0_m0_wo0_cma1_a0(26) * u0_m0_wo0_cma1_r(26);
    u0_m0_wo0_cma1_p(27) <= u0_m0_wo0_cma1_a0(27) * u0_m0_wo0_cma1_r(27);
    u0_m0_wo0_cma1_p(28) <= u0_m0_wo0_cma1_a0(28) * u0_m0_wo0_cma1_r(28);
    u0_m0_wo0_cma1_p(29) <= u0_m0_wo0_cma1_a0(29) * u0_m0_wo0_cma1_r(29);
    u0_m0_wo0_cma1_p(30) <= u0_m0_wo0_cma1_a0(30) * u0_m0_wo0_cma1_r(30);
    u0_m0_wo0_cma1_p(31) <= u0_m0_wo0_cma1_a0(31) * u0_m0_wo0_cma1_r(31);
    u0_m0_wo0_cma1_u(0) <= RESIZE(u0_m0_wo0_cma1_p(0),26);
    u0_m0_wo0_cma1_u(1) <= RESIZE(u0_m0_wo0_cma1_p(1),26);
    u0_m0_wo0_cma1_u(2) <= RESIZE(u0_m0_wo0_cma1_p(2),26);
    u0_m0_wo0_cma1_u(3) <= RESIZE(u0_m0_wo0_cma1_p(3),26);
    u0_m0_wo0_cma1_u(4) <= RESIZE(u0_m0_wo0_cma1_p(4),26);
    u0_m0_wo0_cma1_u(5) <= RESIZE(u0_m0_wo0_cma1_p(5),26);
    u0_m0_wo0_cma1_u(6) <= RESIZE(u0_m0_wo0_cma1_p(6),26);
    u0_m0_wo0_cma1_u(7) <= RESIZE(u0_m0_wo0_cma1_p(7),26);
    u0_m0_wo0_cma1_u(8) <= RESIZE(u0_m0_wo0_cma1_p(8),26);
    u0_m0_wo0_cma1_u(9) <= RESIZE(u0_m0_wo0_cma1_p(9),26);
    u0_m0_wo0_cma1_u(10) <= RESIZE(u0_m0_wo0_cma1_p(10),26);
    u0_m0_wo0_cma1_u(11) <= RESIZE(u0_m0_wo0_cma1_p(11),26);
    u0_m0_wo0_cma1_u(12) <= RESIZE(u0_m0_wo0_cma1_p(12),26);
    u0_m0_wo0_cma1_u(13) <= RESIZE(u0_m0_wo0_cma1_p(13),26);
    u0_m0_wo0_cma1_u(14) <= RESIZE(u0_m0_wo0_cma1_p(14),26);
    u0_m0_wo0_cma1_u(15) <= RESIZE(u0_m0_wo0_cma1_p(15),26);
    u0_m0_wo0_cma1_u(16) <= RESIZE(u0_m0_wo0_cma1_p(16),26);
    u0_m0_wo0_cma1_u(17) <= RESIZE(u0_m0_wo0_cma1_p(17),26);
    u0_m0_wo0_cma1_u(18) <= RESIZE(u0_m0_wo0_cma1_p(18),26);
    u0_m0_wo0_cma1_u(19) <= RESIZE(u0_m0_wo0_cma1_p(19),26);
    u0_m0_wo0_cma1_u(20) <= RESIZE(u0_m0_wo0_cma1_p(20),26);
    u0_m0_wo0_cma1_u(21) <= RESIZE(u0_m0_wo0_cma1_p(21),26);
    u0_m0_wo0_cma1_u(22) <= RESIZE(u0_m0_wo0_cma1_p(22),26);
    u0_m0_wo0_cma1_u(23) <= RESIZE(u0_m0_wo0_cma1_p(23),26);
    u0_m0_wo0_cma1_u(24) <= RESIZE(u0_m0_wo0_cma1_p(24),26);
    u0_m0_wo0_cma1_u(25) <= RESIZE(u0_m0_wo0_cma1_p(25),26);
    u0_m0_wo0_cma1_u(26) <= RESIZE(u0_m0_wo0_cma1_p(26),26);
    u0_m0_wo0_cma1_u(27) <= RESIZE(u0_m0_wo0_cma1_p(27),26);
    u0_m0_wo0_cma1_u(28) <= RESIZE(u0_m0_wo0_cma1_p(28),26);
    u0_m0_wo0_cma1_u(29) <= RESIZE(u0_m0_wo0_cma1_p(29),26);
    u0_m0_wo0_cma1_u(30) <= RESIZE(u0_m0_wo0_cma1_p(30),26);
    u0_m0_wo0_cma1_u(31) <= RESIZE(u0_m0_wo0_cma1_p(31),26);
    u0_m0_wo0_cma1_w(0) <= u0_m0_wo0_cma1_u(0);
    u0_m0_wo0_cma1_w(1) <= u0_m0_wo0_cma1_u(1);
    u0_m0_wo0_cma1_w(2) <= u0_m0_wo0_cma1_u(2);
    u0_m0_wo0_cma1_w(3) <= u0_m0_wo0_cma1_u(3);
    u0_m0_wo0_cma1_w(4) <= u0_m0_wo0_cma1_u(4);
    u0_m0_wo0_cma1_w(5) <= u0_m0_wo0_cma1_u(5);
    u0_m0_wo0_cma1_w(6) <= u0_m0_wo0_cma1_u(6);
    u0_m0_wo0_cma1_w(7) <= u0_m0_wo0_cma1_u(7);
    u0_m0_wo0_cma1_w(8) <= u0_m0_wo0_cma1_u(8);
    u0_m0_wo0_cma1_w(9) <= u0_m0_wo0_cma1_u(9);
    u0_m0_wo0_cma1_w(10) <= u0_m0_wo0_cma1_u(10);
    u0_m0_wo0_cma1_w(11) <= u0_m0_wo0_cma1_u(11);
    u0_m0_wo0_cma1_w(12) <= u0_m0_wo0_cma1_u(12);
    u0_m0_wo0_cma1_w(13) <= u0_m0_wo0_cma1_u(13);
    u0_m0_wo0_cma1_w(14) <= u0_m0_wo0_cma1_u(14);
    u0_m0_wo0_cma1_w(15) <= u0_m0_wo0_cma1_u(15);
    u0_m0_wo0_cma1_w(16) <= u0_m0_wo0_cma1_u(16);
    u0_m0_wo0_cma1_w(17) <= u0_m0_wo0_cma1_u(17);
    u0_m0_wo0_cma1_w(18) <= u0_m0_wo0_cma1_u(18);
    u0_m0_wo0_cma1_w(19) <= u0_m0_wo0_cma1_u(19);
    u0_m0_wo0_cma1_w(20) <= u0_m0_wo0_cma1_u(20);
    u0_m0_wo0_cma1_w(21) <= u0_m0_wo0_cma1_u(21);
    u0_m0_wo0_cma1_w(22) <= u0_m0_wo0_cma1_u(22);
    u0_m0_wo0_cma1_w(23) <= u0_m0_wo0_cma1_u(23);
    u0_m0_wo0_cma1_w(24) <= u0_m0_wo0_cma1_u(24);
    u0_m0_wo0_cma1_w(25) <= u0_m0_wo0_cma1_u(25);
    u0_m0_wo0_cma1_w(26) <= u0_m0_wo0_cma1_u(26);
    u0_m0_wo0_cma1_w(27) <= u0_m0_wo0_cma1_u(27);
    u0_m0_wo0_cma1_w(28) <= u0_m0_wo0_cma1_u(28);
    u0_m0_wo0_cma1_w(29) <= u0_m0_wo0_cma1_u(29);
    u0_m0_wo0_cma1_w(30) <= u0_m0_wo0_cma1_u(30);
    u0_m0_wo0_cma1_w(31) <= u0_m0_wo0_cma1_u(31);
    u0_m0_wo0_cma1_x(0) <= u0_m0_wo0_cma1_w(0);
    u0_m0_wo0_cma1_x(1) <= u0_m0_wo0_cma1_w(1);
    u0_m0_wo0_cma1_x(2) <= u0_m0_wo0_cma1_w(2);
    u0_m0_wo0_cma1_x(3) <= u0_m0_wo0_cma1_w(3);
    u0_m0_wo0_cma1_x(4) <= u0_m0_wo0_cma1_w(4);
    u0_m0_wo0_cma1_x(5) <= u0_m0_wo0_cma1_w(5);
    u0_m0_wo0_cma1_x(6) <= u0_m0_wo0_cma1_w(6);
    u0_m0_wo0_cma1_x(7) <= u0_m0_wo0_cma1_w(7);
    u0_m0_wo0_cma1_x(8) <= u0_m0_wo0_cma1_w(8);
    u0_m0_wo0_cma1_x(9) <= u0_m0_wo0_cma1_w(9);
    u0_m0_wo0_cma1_x(10) <= u0_m0_wo0_cma1_w(10);
    u0_m0_wo0_cma1_x(11) <= u0_m0_wo0_cma1_w(11);
    u0_m0_wo0_cma1_x(12) <= u0_m0_wo0_cma1_w(12);
    u0_m0_wo0_cma1_x(13) <= u0_m0_wo0_cma1_w(13);
    u0_m0_wo0_cma1_x(14) <= u0_m0_wo0_cma1_w(14);
    u0_m0_wo0_cma1_x(15) <= u0_m0_wo0_cma1_w(15);
    u0_m0_wo0_cma1_x(16) <= u0_m0_wo0_cma1_w(16);
    u0_m0_wo0_cma1_x(17) <= u0_m0_wo0_cma1_w(17);
    u0_m0_wo0_cma1_x(18) <= u0_m0_wo0_cma1_w(18);
    u0_m0_wo0_cma1_x(19) <= u0_m0_wo0_cma1_w(19);
    u0_m0_wo0_cma1_x(20) <= u0_m0_wo0_cma1_w(20);
    u0_m0_wo0_cma1_x(21) <= u0_m0_wo0_cma1_w(21);
    u0_m0_wo0_cma1_x(22) <= u0_m0_wo0_cma1_w(22);
    u0_m0_wo0_cma1_x(23) <= u0_m0_wo0_cma1_w(23);
    u0_m0_wo0_cma1_x(24) <= u0_m0_wo0_cma1_w(24);
    u0_m0_wo0_cma1_x(25) <= u0_m0_wo0_cma1_w(25);
    u0_m0_wo0_cma1_x(26) <= u0_m0_wo0_cma1_w(26);
    u0_m0_wo0_cma1_x(27) <= u0_m0_wo0_cma1_w(27);
    u0_m0_wo0_cma1_x(28) <= u0_m0_wo0_cma1_w(28);
    u0_m0_wo0_cma1_x(29) <= u0_m0_wo0_cma1_w(29);
    u0_m0_wo0_cma1_x(30) <= u0_m0_wo0_cma1_w(30);
    u0_m0_wo0_cma1_x(31) <= u0_m0_wo0_cma1_w(31);
    u0_m0_wo0_cma1_y(0) <= u0_m0_wo0_cma1_s(1) + u0_m0_wo0_cma1_x(0);
    u0_m0_wo0_cma1_y(1) <= u0_m0_wo0_cma1_s(2) + u0_m0_wo0_cma1_x(1);
    u0_m0_wo0_cma1_y(2) <= u0_m0_wo0_cma1_s(3) + u0_m0_wo0_cma1_x(2);
    u0_m0_wo0_cma1_y(3) <= u0_m0_wo0_cma1_s(4) + u0_m0_wo0_cma1_x(3);
    u0_m0_wo0_cma1_y(4) <= u0_m0_wo0_cma1_s(5) + u0_m0_wo0_cma1_x(4);
    u0_m0_wo0_cma1_y(5) <= u0_m0_wo0_cma1_s(6) + u0_m0_wo0_cma1_x(5);
    u0_m0_wo0_cma1_y(6) <= u0_m0_wo0_cma1_s(7) + u0_m0_wo0_cma1_x(6);
    u0_m0_wo0_cma1_y(7) <= u0_m0_wo0_cma1_s(8) + u0_m0_wo0_cma1_x(7);
    u0_m0_wo0_cma1_y(8) <= u0_m0_wo0_cma1_s(9) + u0_m0_wo0_cma1_x(8);
    u0_m0_wo0_cma1_y(9) <= u0_m0_wo0_cma1_s(10) + u0_m0_wo0_cma1_x(9);
    u0_m0_wo0_cma1_y(10) <= u0_m0_wo0_cma1_s(11) + u0_m0_wo0_cma1_x(10);
    u0_m0_wo0_cma1_y(11) <= u0_m0_wo0_cma1_s(12) + u0_m0_wo0_cma1_x(11);
    u0_m0_wo0_cma1_y(12) <= u0_m0_wo0_cma1_s(13) + u0_m0_wo0_cma1_x(12);
    u0_m0_wo0_cma1_y(13) <= u0_m0_wo0_cma1_s(14) + u0_m0_wo0_cma1_x(13);
    u0_m0_wo0_cma1_y(14) <= u0_m0_wo0_cma1_s(15) + u0_m0_wo0_cma1_x(14);
    u0_m0_wo0_cma1_y(15) <= u0_m0_wo0_cma1_s(16) + u0_m0_wo0_cma1_x(15);
    u0_m0_wo0_cma1_y(16) <= u0_m0_wo0_cma1_s(17) + u0_m0_wo0_cma1_x(16);
    u0_m0_wo0_cma1_y(17) <= u0_m0_wo0_cma1_s(18) + u0_m0_wo0_cma1_x(17);
    u0_m0_wo0_cma1_y(18) <= u0_m0_wo0_cma1_s(19) + u0_m0_wo0_cma1_x(18);
    u0_m0_wo0_cma1_y(19) <= u0_m0_wo0_cma1_s(20) + u0_m0_wo0_cma1_x(19);
    u0_m0_wo0_cma1_y(20) <= u0_m0_wo0_cma1_s(21) + u0_m0_wo0_cma1_x(20);
    u0_m0_wo0_cma1_y(21) <= u0_m0_wo0_cma1_s(22) + u0_m0_wo0_cma1_x(21);
    u0_m0_wo0_cma1_y(22) <= u0_m0_wo0_cma1_s(23) + u0_m0_wo0_cma1_x(22);
    u0_m0_wo0_cma1_y(23) <= u0_m0_wo0_cma1_s(24) + u0_m0_wo0_cma1_x(23);
    u0_m0_wo0_cma1_y(24) <= u0_m0_wo0_cma1_s(25) + u0_m0_wo0_cma1_x(24);
    u0_m0_wo0_cma1_y(25) <= u0_m0_wo0_cma1_s(26) + u0_m0_wo0_cma1_x(25);
    u0_m0_wo0_cma1_y(26) <= u0_m0_wo0_cma1_s(27) + u0_m0_wo0_cma1_x(26);
    u0_m0_wo0_cma1_y(27) <= u0_m0_wo0_cma1_s(28) + u0_m0_wo0_cma1_x(27);
    u0_m0_wo0_cma1_y(28) <= u0_m0_wo0_cma1_s(29) + u0_m0_wo0_cma1_x(28);
    u0_m0_wo0_cma1_y(29) <= u0_m0_wo0_cma1_s(30) + u0_m0_wo0_cma1_x(29);
    u0_m0_wo0_cma1_y(30) <= u0_m0_wo0_cma1_s(31) + u0_m0_wo0_cma1_x(30);
    u0_m0_wo0_cma1_y(31) <= u0_m0_wo0_cma1_x(31);
    u0_m0_wo0_cma1_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma1_a0 <= (others => (others => '0'));
            u0_m0_wo0_cma1_c0 <= (others => (others => '0'));
            u0_m0_wo0_cma1_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                u0_m0_wo0_cma1_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_wi4_r0_phasedelay32_q),10);
                u0_m0_wo0_cma1_a0(1) <= RESIZE(SIGNED(u0_m0_wo0_wi4_r0_delayr33_q),10);
                u0_m0_wo0_cma1_a0(2) <= RESIZE(SIGNED(u0_m0_wo0_wi4_r0_delayr34_q),10);
                u0_m0_wo0_cma1_a0(3) <= RESIZE(SIGNED(u0_m0_wo0_wi4_r0_delayr35_q),10);
                u0_m0_wo0_cma1_a0(4) <= RESIZE(SIGNED(u0_m0_wo0_wi4_r0_delayr36_q),10);
                u0_m0_wo0_cma1_a0(5) <= RESIZE(SIGNED(u0_m0_wo0_wi4_r0_delayr37_q),10);
                u0_m0_wo0_cma1_a0(6) <= RESIZE(SIGNED(u0_m0_wo0_wi4_r0_delayr38_q),10);
                u0_m0_wo0_cma1_a0(7) <= RESIZE(SIGNED(u0_m0_wo0_wi4_r0_delayr39_q),10);
                u0_m0_wo0_cma1_a0(8) <= RESIZE(SIGNED(u0_m0_wo0_wi5_r0_phasedelay40_q),10);
                u0_m0_wo0_cma1_a0(9) <= RESIZE(SIGNED(u0_m0_wo0_wi5_r0_delayr41_q),10);
                u0_m0_wo0_cma1_a0(10) <= RESIZE(SIGNED(u0_m0_wo0_wi5_r0_delayr42_q),10);
                u0_m0_wo0_cma1_a0(11) <= RESIZE(SIGNED(u0_m0_wo0_wi5_r0_delayr43_q),10);
                u0_m0_wo0_cma1_a0(12) <= RESIZE(SIGNED(u0_m0_wo0_wi5_r0_delayr44_q),10);
                u0_m0_wo0_cma1_a0(13) <= RESIZE(SIGNED(u0_m0_wo0_wi5_r0_delayr45_q),10);
                u0_m0_wo0_cma1_a0(14) <= RESIZE(SIGNED(u0_m0_wo0_wi5_r0_delayr46_q),10);
                u0_m0_wo0_cma1_a0(15) <= RESIZE(SIGNED(u0_m0_wo0_wi5_r0_delayr47_q),10);
                u0_m0_wo0_cma1_a0(16) <= RESIZE(SIGNED(u0_m0_wo0_wi6_r0_phasedelay48_q),10);
                u0_m0_wo0_cma1_a0(17) <= RESIZE(SIGNED(u0_m0_wo0_wi6_r0_delayr49_q),10);
                u0_m0_wo0_cma1_a0(18) <= RESIZE(SIGNED(u0_m0_wo0_wi6_r0_delayr50_q),10);
                u0_m0_wo0_cma1_a0(19) <= RESIZE(SIGNED(u0_m0_wo0_wi6_r0_delayr51_q),10);
                u0_m0_wo0_cma1_a0(20) <= RESIZE(SIGNED(u0_m0_wo0_wi6_r0_delayr52_q),10);
                u0_m0_wo0_cma1_a0(21) <= RESIZE(SIGNED(u0_m0_wo0_wi6_r0_delayr53_q),10);
                u0_m0_wo0_cma1_a0(22) <= RESIZE(SIGNED(u0_m0_wo0_wi6_r0_delayr54_q),10);
                u0_m0_wo0_cma1_a0(23) <= RESIZE(SIGNED(u0_m0_wo0_wi6_r0_delayr55_q),10);
                u0_m0_wo0_cma1_a0(24) <= RESIZE(SIGNED(u0_m0_wo0_wi7_r0_phasedelay56_q),10);
                u0_m0_wo0_cma1_a0(25) <= RESIZE(SIGNED(u0_m0_wo0_wi7_r0_delayr57_q),10);
                u0_m0_wo0_cma1_a0(26) <= RESIZE(SIGNED(u0_m0_wo0_wi7_r0_delayr58_q),10);
                u0_m0_wo0_cma1_a0(27) <= RESIZE(SIGNED(u0_m0_wo0_wi7_r0_delayr59_q),10);
                u0_m0_wo0_cma1_a0(28) <= RESIZE(SIGNED(u0_m0_wo0_wi7_r0_delayr60_q),10);
                u0_m0_wo0_cma1_a0(29) <= RESIZE(SIGNED(u0_m0_wo0_wi7_r0_delayr61_q),10);
                u0_m0_wo0_cma1_a0(30) <= RESIZE(SIGNED(u0_m0_wo0_wi7_r0_delayr62_q),10);
                u0_m0_wo0_cma1_a0(31) <= RESIZE(SIGNED(u0_m0_wo0_wi7_r0_delayr63_q),10);
                u0_m0_wo0_cma1_c0(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(7) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(8) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(9) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(10) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(11) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(12) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(13) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(14) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(15) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(16) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(17) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(18) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(19) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(20) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(21) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(22) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(23) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(24) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(25) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(26) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(27) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(28) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(29) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(30) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c0(31) <= RESIZE(UNSIGNED(GND_q),3);
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
                u0_m0_wo0_cma1_s(8) <= u0_m0_wo0_cma1_y(8);
                u0_m0_wo0_cma1_s(9) <= u0_m0_wo0_cma1_y(9);
                u0_m0_wo0_cma1_s(10) <= u0_m0_wo0_cma1_y(10);
                u0_m0_wo0_cma1_s(11) <= u0_m0_wo0_cma1_y(11);
                u0_m0_wo0_cma1_s(12) <= u0_m0_wo0_cma1_y(12);
                u0_m0_wo0_cma1_s(13) <= u0_m0_wo0_cma1_y(13);
                u0_m0_wo0_cma1_s(14) <= u0_m0_wo0_cma1_y(14);
                u0_m0_wo0_cma1_s(15) <= u0_m0_wo0_cma1_y(15);
                u0_m0_wo0_cma1_s(16) <= u0_m0_wo0_cma1_y(16);
                u0_m0_wo0_cma1_s(17) <= u0_m0_wo0_cma1_y(17);
                u0_m0_wo0_cma1_s(18) <= u0_m0_wo0_cma1_y(18);
                u0_m0_wo0_cma1_s(19) <= u0_m0_wo0_cma1_y(19);
                u0_m0_wo0_cma1_s(20) <= u0_m0_wo0_cma1_y(20);
                u0_m0_wo0_cma1_s(21) <= u0_m0_wo0_cma1_y(21);
                u0_m0_wo0_cma1_s(22) <= u0_m0_wo0_cma1_y(22);
                u0_m0_wo0_cma1_s(23) <= u0_m0_wo0_cma1_y(23);
                u0_m0_wo0_cma1_s(24) <= u0_m0_wo0_cma1_y(24);
                u0_m0_wo0_cma1_s(25) <= u0_m0_wo0_cma1_y(25);
                u0_m0_wo0_cma1_s(26) <= u0_m0_wo0_cma1_y(26);
                u0_m0_wo0_cma1_s(27) <= u0_m0_wo0_cma1_y(27);
                u0_m0_wo0_cma1_s(28) <= u0_m0_wo0_cma1_y(28);
                u0_m0_wo0_cma1_s(29) <= u0_m0_wo0_cma1_y(29);
                u0_m0_wo0_cma1_s(30) <= u0_m0_wo0_cma1_y(30);
                u0_m0_wo0_cma1_s(31) <= u0_m0_wo0_cma1_y(31);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma1_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma1_s(0)(25 downto 0)), xout => u0_m0_wo0_cma1_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma1_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma1_qq(25 downto 0));

    -- u0_m0_wo0_wi3_r0_delayr31(DELAY,625)@10
    u0_m0_wo0_wi3_r0_delayr31_q <= u0_m0_wo0_wi3_r0_delayr30_q;

    -- u0_m0_wo0_wi3_r0_delayr30(DELAY,624)@10
    u0_m0_wo0_wi3_r0_delayr30_q <= u0_m0_wo0_wi3_r0_delayr29_q;

    -- u0_m0_wo0_wi3_r0_delayr29(DELAY,623)@10
    u0_m0_wo0_wi3_r0_delayr29_q <= u0_m0_wo0_wi3_r0_delayr28_q;

    -- u0_m0_wo0_wi3_r0_delayr28(DELAY,622)@10
    u0_m0_wo0_wi3_r0_delayr28_q <= u0_m0_wo0_wi3_r0_delayr27_q;

    -- u0_m0_wo0_wi3_r0_delayr27(DELAY,621)@10
    u0_m0_wo0_wi3_r0_delayr27_q <= u0_m0_wo0_wi3_r0_delayr26_q;

    -- u0_m0_wo0_wi3_r0_delayr26(DELAY,620)@10
    u0_m0_wo0_wi3_r0_delayr26_q <= u0_m0_wo0_wi3_r0_delayr25_q;

    -- u0_m0_wo0_wi3_r0_delayr25(DELAY,619)@10
    u0_m0_wo0_wi3_r0_delayr25_q <= u0_m0_wo0_wi3_r0_phasedelay24_q;

    -- u0_m0_wo0_wi3_r0_delayr24_notEnable(LOGICAL,3573)@10
    u0_m0_wo0_wi3_r0_delayr24_notEnable_a <= xIn_v;
    u0_m0_wo0_wi3_r0_delayr24_notEnable_q <= not (u0_m0_wo0_wi3_r0_delayr24_notEnable_a);

    -- u0_m0_wo0_wi3_r0_delayr24_nor(LOGICAL,3574)@10
    u0_m0_wo0_wi3_r0_delayr24_nor_a <= u0_m0_wo0_wi3_r0_delayr24_notEnable_q;
    u0_m0_wo0_wi3_r0_delayr24_nor_b <= u0_m0_wo0_wi3_r0_delayr24_sticky_ena_q;
    u0_m0_wo0_wi3_r0_delayr24_nor_q <= not (u0_m0_wo0_wi3_r0_delayr24_nor_a or u0_m0_wo0_wi3_r0_delayr24_nor_b);

    -- u0_m0_wo0_wi3_r0_delayr24_mem_top(CONSTANT,3570)
    u0_m0_wo0_wi3_r0_delayr24_mem_top_q <= "0110";

    -- u0_m0_wo0_wi3_r0_delayr24_cmp(LOGICAL,3571)@10
    u0_m0_wo0_wi3_r0_delayr24_cmp_a <= u0_m0_wo0_wi3_r0_delayr24_mem_top_q;
    u0_m0_wo0_wi3_r0_delayr24_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi3_r0_delayr24_rdmux_q);
    u0_m0_wo0_wi3_r0_delayr24_cmp_q <= "1" WHEN u0_m0_wo0_wi3_r0_delayr24_cmp_a = u0_m0_wo0_wi3_r0_delayr24_cmp_b ELSE "0";

    -- u0_m0_wo0_wi3_r0_delayr24_cmpReg(REG,3572)@10
    u0_m0_wo0_wi3_r0_delayr24_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi3_r0_delayr24_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi3_r0_delayr24_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi3_r0_delayr24_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi3_r0_delayr24_sticky_ena(REG,3575)@10
    u0_m0_wo0_wi3_r0_delayr24_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi3_r0_delayr24_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi3_r0_delayr24_nor_q = "1") THEN
                u0_m0_wo0_wi3_r0_delayr24_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi3_r0_delayr24_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi3_r0_delayr24_enaAnd(LOGICAL,3576)@10
    u0_m0_wo0_wi3_r0_delayr24_enaAnd_a <= u0_m0_wo0_wi3_r0_delayr24_sticky_ena_q;
    u0_m0_wo0_wi3_r0_delayr24_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi3_r0_delayr24_enaAnd_q <= u0_m0_wo0_wi3_r0_delayr24_enaAnd_a and u0_m0_wo0_wi3_r0_delayr24_enaAnd_b;

    -- u0_m0_wo0_wi3_r0_delayr24_rdcnt(COUNTER,3567)@10
    -- every=1, low=0, high=6, step=1, init=1
    u0_m0_wo0_wi3_r0_delayr24_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi3_r0_delayr24_rdcnt_i <= TO_UNSIGNED(1, 3);
            u0_m0_wo0_wi3_r0_delayr24_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi3_r0_delayr24_rdcnt_i = TO_UNSIGNED(5, 3)) THEN
                    u0_m0_wo0_wi3_r0_delayr24_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi3_r0_delayr24_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi3_r0_delayr24_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi3_r0_delayr24_rdcnt_i <= u0_m0_wo0_wi3_r0_delayr24_rdcnt_i - 6;
                ELSE
                    u0_m0_wo0_wi3_r0_delayr24_rdcnt_i <= u0_m0_wo0_wi3_r0_delayr24_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi3_r0_delayr24_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi3_r0_delayr24_rdcnt_i, 3)));

    -- u0_m0_wo0_wi3_r0_delayr24_rdmux(MUX,3568)@10
    u0_m0_wo0_wi3_r0_delayr24_rdmux_s <= xIn_v;
    u0_m0_wo0_wi3_r0_delayr24_rdmux: PROCESS (u0_m0_wo0_wi3_r0_delayr24_rdmux_s, u0_m0_wo0_wi3_r0_delayr24_wraddr_q, u0_m0_wo0_wi3_r0_delayr24_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi3_r0_delayr24_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi3_r0_delayr24_rdmux_q <= u0_m0_wo0_wi3_r0_delayr24_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi3_r0_delayr24_rdmux_q <= u0_m0_wo0_wi3_r0_delayr24_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi3_r0_delayr24_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi3_r0_delayr24_wraddr(REG,3569)@10
    u0_m0_wo0_wi3_r0_delayr24_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi3_r0_delayr24_wraddr_q <= "000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi3_r0_delayr24_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi3_r0_delayr24_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi3_r0_delayr24_mem(DUALMEM,3566)@10
    u0_m0_wo0_wi3_r0_delayr24_mem_ia <= STD_LOGIC_VECTOR(xIn_3);
    u0_m0_wo0_wi3_r0_delayr24_mem_aa <= u0_m0_wo0_wi3_r0_delayr24_wraddr_q;
    u0_m0_wo0_wi3_r0_delayr24_mem_ab <= u0_m0_wo0_wi3_r0_delayr24_rdmux_q;
    u0_m0_wo0_wi3_r0_delayr24_mem_reset0 <= areset;
    u0_m0_wo0_wi3_r0_delayr24_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi3_r0_delayr24_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi3_r0_delayr24_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi3_r0_delayr24_mem_aa,
        data_a => u0_m0_wo0_wi3_r0_delayr24_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi3_r0_delayr24_mem_ab,
        q_b => u0_m0_wo0_wi3_r0_delayr24_mem_iq
    );
    u0_m0_wo0_wi3_r0_delayr24_mem_q <= u0_m0_wo0_wi3_r0_delayr24_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi3_r0_phasedelay24(DELAY,595)@10
    u0_m0_wo0_wi3_r0_phasedelay24_q <= u0_m0_wo0_wi3_r0_delayr24_mem_q;

    -- u0_m0_wo0_wi2_r0_delayr23(DELAY,455)@10
    u0_m0_wo0_wi2_r0_delayr23_q <= u0_m0_wo0_wi2_r0_delayr22_q;

    -- u0_m0_wo0_wi2_r0_delayr22(DELAY,454)@10
    u0_m0_wo0_wi2_r0_delayr22_q <= u0_m0_wo0_wi2_r0_delayr21_q;

    -- u0_m0_wo0_wi2_r0_delayr21(DELAY,453)@10
    u0_m0_wo0_wi2_r0_delayr21_q <= u0_m0_wo0_wi2_r0_delayr20_q;

    -- u0_m0_wo0_wi2_r0_delayr20(DELAY,452)@10
    u0_m0_wo0_wi2_r0_delayr20_q <= u0_m0_wo0_wi2_r0_delayr19_q;

    -- u0_m0_wo0_wi2_r0_delayr19(DELAY,451)@10
    u0_m0_wo0_wi2_r0_delayr19_q <= u0_m0_wo0_wi2_r0_delayr18_q;

    -- u0_m0_wo0_wi2_r0_delayr18(DELAY,450)@10
    u0_m0_wo0_wi2_r0_delayr18_q <= u0_m0_wo0_wi2_r0_delayr17_q;

    -- u0_m0_wo0_wi2_r0_delayr17(DELAY,449)@10
    u0_m0_wo0_wi2_r0_delayr17_q <= u0_m0_wo0_wi2_r0_phasedelay16_q;

    -- u0_m0_wo0_wi2_r0_delayr16_notEnable(LOGICAL,3562)@10
    u0_m0_wo0_wi2_r0_delayr16_notEnable_a <= xIn_v;
    u0_m0_wo0_wi2_r0_delayr16_notEnable_q <= not (u0_m0_wo0_wi2_r0_delayr16_notEnable_a);

    -- u0_m0_wo0_wi2_r0_delayr16_nor(LOGICAL,3563)@10
    u0_m0_wo0_wi2_r0_delayr16_nor_a <= u0_m0_wo0_wi2_r0_delayr16_notEnable_q;
    u0_m0_wo0_wi2_r0_delayr16_nor_b <= u0_m0_wo0_wi2_r0_delayr16_sticky_ena_q;
    u0_m0_wo0_wi2_r0_delayr16_nor_q <= not (u0_m0_wo0_wi2_r0_delayr16_nor_a or u0_m0_wo0_wi2_r0_delayr16_nor_b);

    -- u0_m0_wo0_wi2_r0_delayr16_mem_top(CONSTANT,3559)
    u0_m0_wo0_wi2_r0_delayr16_mem_top_q <= "01110";

    -- u0_m0_wo0_wi2_r0_delayr16_cmp(LOGICAL,3560)@10
    u0_m0_wo0_wi2_r0_delayr16_cmp_a <= u0_m0_wo0_wi2_r0_delayr16_mem_top_q;
    u0_m0_wo0_wi2_r0_delayr16_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi2_r0_delayr16_rdmux_q);
    u0_m0_wo0_wi2_r0_delayr16_cmp_q <= "1" WHEN u0_m0_wo0_wi2_r0_delayr16_cmp_a = u0_m0_wo0_wi2_r0_delayr16_cmp_b ELSE "0";

    -- u0_m0_wo0_wi2_r0_delayr16_cmpReg(REG,3561)@10
    u0_m0_wo0_wi2_r0_delayr16_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi2_r0_delayr16_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi2_r0_delayr16_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi2_r0_delayr16_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi2_r0_delayr16_sticky_ena(REG,3564)@10
    u0_m0_wo0_wi2_r0_delayr16_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi2_r0_delayr16_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi2_r0_delayr16_nor_q = "1") THEN
                u0_m0_wo0_wi2_r0_delayr16_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi2_r0_delayr16_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi2_r0_delayr16_enaAnd(LOGICAL,3565)@10
    u0_m0_wo0_wi2_r0_delayr16_enaAnd_a <= u0_m0_wo0_wi2_r0_delayr16_sticky_ena_q;
    u0_m0_wo0_wi2_r0_delayr16_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi2_r0_delayr16_enaAnd_q <= u0_m0_wo0_wi2_r0_delayr16_enaAnd_a and u0_m0_wo0_wi2_r0_delayr16_enaAnd_b;

    -- u0_m0_wo0_wi2_r0_delayr16_rdcnt(COUNTER,3556)@10
    -- every=1, low=0, high=14, step=1, init=1
    u0_m0_wo0_wi2_r0_delayr16_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi2_r0_delayr16_rdcnt_i <= TO_UNSIGNED(1, 4);
            u0_m0_wo0_wi2_r0_delayr16_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi2_r0_delayr16_rdcnt_i = TO_UNSIGNED(13, 4)) THEN
                    u0_m0_wo0_wi2_r0_delayr16_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi2_r0_delayr16_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi2_r0_delayr16_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi2_r0_delayr16_rdcnt_i <= u0_m0_wo0_wi2_r0_delayr16_rdcnt_i - 14;
                ELSE
                    u0_m0_wo0_wi2_r0_delayr16_rdcnt_i <= u0_m0_wo0_wi2_r0_delayr16_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi2_r0_delayr16_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi2_r0_delayr16_rdcnt_i, 4)));

    -- u0_m0_wo0_wi2_r0_delayr16_rdmux(MUX,3557)@10
    u0_m0_wo0_wi2_r0_delayr16_rdmux_s <= xIn_v;
    u0_m0_wo0_wi2_r0_delayr16_rdmux: PROCESS (u0_m0_wo0_wi2_r0_delayr16_rdmux_s, u0_m0_wo0_wi2_r0_delayr16_wraddr_q, u0_m0_wo0_wi2_r0_delayr16_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi2_r0_delayr16_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi2_r0_delayr16_rdmux_q <= u0_m0_wo0_wi2_r0_delayr16_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi2_r0_delayr16_rdmux_q <= u0_m0_wo0_wi2_r0_delayr16_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi2_r0_delayr16_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi2_r0_delayr16_wraddr(REG,3558)@10
    u0_m0_wo0_wi2_r0_delayr16_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi2_r0_delayr16_wraddr_q <= "0000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi2_r0_delayr16_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi2_r0_delayr16_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi2_r0_delayr16_mem(DUALMEM,3555)@10
    u0_m0_wo0_wi2_r0_delayr16_mem_ia <= STD_LOGIC_VECTOR(xIn_2);
    u0_m0_wo0_wi2_r0_delayr16_mem_aa <= u0_m0_wo0_wi2_r0_delayr16_wraddr_q;
    u0_m0_wo0_wi2_r0_delayr16_mem_ab <= u0_m0_wo0_wi2_r0_delayr16_rdmux_q;
    u0_m0_wo0_wi2_r0_delayr16_mem_reset0 <= areset;
    u0_m0_wo0_wi2_r0_delayr16_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi2_r0_delayr16_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi2_r0_delayr16_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi2_r0_delayr16_mem_aa,
        data_a => u0_m0_wo0_wi2_r0_delayr16_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi2_r0_delayr16_mem_ab,
        q_b => u0_m0_wo0_wi2_r0_delayr16_mem_iq
    );
    u0_m0_wo0_wi2_r0_delayr16_mem_q <= u0_m0_wo0_wi2_r0_delayr16_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi2_r0_phasedelay16(DELAY,433)@10
    u0_m0_wo0_wi2_r0_phasedelay16_q <= u0_m0_wo0_wi2_r0_delayr16_mem_q;

    -- u0_m0_wo0_wi1_r0_delayr15(DELAY,285)@10
    u0_m0_wo0_wi1_r0_delayr15_q <= u0_m0_wo0_wi1_r0_delayr14_q;

    -- u0_m0_wo0_wi1_r0_delayr14(DELAY,284)@10
    u0_m0_wo0_wi1_r0_delayr14_q <= u0_m0_wo0_wi1_r0_delayr13_q;

    -- u0_m0_wo0_wi1_r0_delayr13(DELAY,283)@10
    u0_m0_wo0_wi1_r0_delayr13_q <= u0_m0_wo0_wi1_r0_delayr12_q;

    -- u0_m0_wo0_wi1_r0_delayr12(DELAY,282)@10
    u0_m0_wo0_wi1_r0_delayr12_q <= u0_m0_wo0_wi1_r0_delayr11_q;

    -- u0_m0_wo0_wi1_r0_delayr11(DELAY,281)@10
    u0_m0_wo0_wi1_r0_delayr11_q <= u0_m0_wo0_wi1_r0_delayr10_q;

    -- u0_m0_wo0_wi1_r0_delayr10(DELAY,280)@10
    u0_m0_wo0_wi1_r0_delayr10_q <= u0_m0_wo0_wi1_r0_delayr9_q;

    -- u0_m0_wo0_wi1_r0_delayr9(DELAY,279)@10
    u0_m0_wo0_wi1_r0_delayr9_q <= u0_m0_wo0_wi1_r0_phasedelay8_q;

    -- u0_m0_wo0_wi1_r0_delayr8_notEnable(LOGICAL,3551)@10
    u0_m0_wo0_wi1_r0_delayr8_notEnable_a <= xIn_v;
    u0_m0_wo0_wi1_r0_delayr8_notEnable_q <= not (u0_m0_wo0_wi1_r0_delayr8_notEnable_a);

    -- u0_m0_wo0_wi1_r0_delayr8_nor(LOGICAL,3552)@10
    u0_m0_wo0_wi1_r0_delayr8_nor_a <= u0_m0_wo0_wi1_r0_delayr8_notEnable_q;
    u0_m0_wo0_wi1_r0_delayr8_nor_b <= u0_m0_wo0_wi1_r0_delayr8_sticky_ena_q;
    u0_m0_wo0_wi1_r0_delayr8_nor_q <= not (u0_m0_wo0_wi1_r0_delayr8_nor_a or u0_m0_wo0_wi1_r0_delayr8_nor_b);

    -- u0_m0_wo0_wi1_r0_delayr8_mem_top(CONSTANT,3548)
    u0_m0_wo0_wi1_r0_delayr8_mem_top_q <= "010110";

    -- u0_m0_wo0_wi1_r0_delayr8_cmp(LOGICAL,3549)@10
    u0_m0_wo0_wi1_r0_delayr8_cmp_a <= u0_m0_wo0_wi1_r0_delayr8_mem_top_q;
    u0_m0_wo0_wi1_r0_delayr8_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi1_r0_delayr8_rdmux_q);
    u0_m0_wo0_wi1_r0_delayr8_cmp_q <= "1" WHEN u0_m0_wo0_wi1_r0_delayr8_cmp_a = u0_m0_wo0_wi1_r0_delayr8_cmp_b ELSE "0";

    -- u0_m0_wo0_wi1_r0_delayr8_cmpReg(REG,3550)@10
    u0_m0_wo0_wi1_r0_delayr8_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi1_r0_delayr8_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi1_r0_delayr8_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi1_r0_delayr8_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi1_r0_delayr8_sticky_ena(REG,3553)@10
    u0_m0_wo0_wi1_r0_delayr8_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi1_r0_delayr8_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi1_r0_delayr8_nor_q = "1") THEN
                u0_m0_wo0_wi1_r0_delayr8_sticky_ena_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi1_r0_delayr8_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi1_r0_delayr8_enaAnd(LOGICAL,3554)@10
    u0_m0_wo0_wi1_r0_delayr8_enaAnd_a <= u0_m0_wo0_wi1_r0_delayr8_sticky_ena_q;
    u0_m0_wo0_wi1_r0_delayr8_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi1_r0_delayr8_enaAnd_q <= u0_m0_wo0_wi1_r0_delayr8_enaAnd_a and u0_m0_wo0_wi1_r0_delayr8_enaAnd_b;

    -- u0_m0_wo0_wi1_r0_delayr8_rdcnt(COUNTER,3545)@10
    -- every=1, low=0, high=22, step=1, init=1
    u0_m0_wo0_wi1_r0_delayr8_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi1_r0_delayr8_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi1_r0_delayr8_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                IF (u0_m0_wo0_wi1_r0_delayr8_rdcnt_i = TO_UNSIGNED(21, 5)) THEN
                    u0_m0_wo0_wi1_r0_delayr8_rdcnt_eq <= '1';
                ELSE
                    u0_m0_wo0_wi1_r0_delayr8_rdcnt_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi1_r0_delayr8_rdcnt_eq = '1') THEN
                    u0_m0_wo0_wi1_r0_delayr8_rdcnt_i <= u0_m0_wo0_wi1_r0_delayr8_rdcnt_i - 22;
                ELSE
                    u0_m0_wo0_wi1_r0_delayr8_rdcnt_i <= u0_m0_wo0_wi1_r0_delayr8_rdcnt_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi1_r0_delayr8_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi1_r0_delayr8_rdcnt_i, 5)));

    -- u0_m0_wo0_wi1_r0_delayr8_rdmux(MUX,3546)@10
    u0_m0_wo0_wi1_r0_delayr8_rdmux_s <= xIn_v;
    u0_m0_wo0_wi1_r0_delayr8_rdmux: PROCESS (u0_m0_wo0_wi1_r0_delayr8_rdmux_s, u0_m0_wo0_wi1_r0_delayr8_wraddr_q, u0_m0_wo0_wi1_r0_delayr8_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi1_r0_delayr8_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi1_r0_delayr8_rdmux_q <= u0_m0_wo0_wi1_r0_delayr8_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi1_r0_delayr8_rdmux_q <= u0_m0_wo0_wi1_r0_delayr8_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi1_r0_delayr8_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi1_r0_delayr8_wraddr(REG,3547)@10
    u0_m0_wo0_wi1_r0_delayr8_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi1_r0_delayr8_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi1_r0_delayr8_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi1_r0_delayr8_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi1_r0_delayr8_mem(DUALMEM,3544)@10
    u0_m0_wo0_wi1_r0_delayr8_mem_ia <= STD_LOGIC_VECTOR(xIn_1);
    u0_m0_wo0_wi1_r0_delayr8_mem_aa <= u0_m0_wo0_wi1_r0_delayr8_wraddr_q;
    u0_m0_wo0_wi1_r0_delayr8_mem_ab <= u0_m0_wo0_wi1_r0_delayr8_rdmux_q;
    u0_m0_wo0_wi1_r0_delayr8_mem_reset0 <= areset;
    u0_m0_wo0_wi1_r0_delayr8_mem_dmem : altera_syncram
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
        clocken1 => u0_m0_wo0_wi1_r0_delayr8_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi1_r0_delayr8_mem_reset0,
        clock1 => clk,
        address_a => u0_m0_wo0_wi1_r0_delayr8_mem_aa,
        data_a => u0_m0_wo0_wi1_r0_delayr8_mem_ia,
        wren_a => xIn_v(0),
        address_b => u0_m0_wo0_wi1_r0_delayr8_mem_ab,
        q_b => u0_m0_wo0_wi1_r0_delayr8_mem_iq
    );
    u0_m0_wo0_wi1_r0_delayr8_mem_q <= u0_m0_wo0_wi1_r0_delayr8_mem_iq(9 downto 0);

    -- u0_m0_wo0_wi1_r0_phasedelay8(DELAY,271)@10
    u0_m0_wo0_wi1_r0_phasedelay8_q <= u0_m0_wo0_wi1_r0_delayr8_mem_q;

    -- u0_m0_wo0_wi0_r0_delayr7(DELAY,115)@10
    u0_m0_wo0_wi0_r0_delayr7_q <= u0_m0_wo0_wi0_r0_delayr6_q;

    -- u0_m0_wo0_wi0_r0_delayr6(DELAY,114)@10
    u0_m0_wo0_wi0_r0_delayr6_q <= u0_m0_wo0_wi0_r0_delayr5_q;

    -- u0_m0_wo0_wi0_r0_delayr5(DELAY,113)@10
    u0_m0_wo0_wi0_r0_delayr5_q <= u0_m0_wo0_wi0_r0_delayr4_q;

    -- u0_m0_wo0_wi0_r0_delayr4(DELAY,112)@10
    u0_m0_wo0_wi0_r0_delayr4_q <= u0_m0_wo0_wi0_r0_delayr3_q;

    -- u0_m0_wo0_wi0_r0_delayr3(DELAY,111)@10
    u0_m0_wo0_wi0_r0_delayr3_q <= u0_m0_wo0_wi0_r0_delayr2_q;

    -- u0_m0_wo0_wi0_r0_delayr2(DELAY,110)@10
    u0_m0_wo0_wi0_r0_delayr2_q <= u0_m0_wo0_wi0_r0_delayr1_q;

    -- u0_m0_wo0_wi0_r0_delayr1(DELAY,109)@10
    u0_m0_wo0_wi0_r0_delayr1_q <= u0_m0_wo0_wi0_r0_phasedelay0_q;

    -- u0_m0_wo0_wi0_r0_delayr0_notEnable(LOGICAL,3540)@10
    u0_m0_wo0_wi0_r0_delayr0_notEnable_a <= xIn_v;
    u0_m0_wo0_wi0_r0_delayr0_notEnable_q <= not (u0_m0_wo0_wi0_r0_delayr0_notEnable_a);

    -- u0_m0_wo0_wi0_r0_delayr0_nor(LOGICAL,3541)@10
    u0_m0_wo0_wi0_r0_delayr0_nor_a <= u0_m0_wo0_wi0_r0_delayr0_notEnable_q;
    u0_m0_wo0_wi0_r0_delayr0_nor_b <= u0_m0_wo0_wi0_r0_delayr0_sticky_ena_q;
    u0_m0_wo0_wi0_r0_delayr0_nor_q <= not (u0_m0_wo0_wi0_r0_delayr0_nor_a or u0_m0_wo0_wi0_r0_delayr0_nor_b);

    -- u0_m0_wo0_wi0_r0_delayr0_mem_top(CONSTANT,3537)
    u0_m0_wo0_wi0_r0_delayr0_mem_top_q <= "011101";

    -- u0_m0_wo0_wi0_r0_delayr0_cmp(LOGICAL,3538)@10
    u0_m0_wo0_wi0_r0_delayr0_cmp_a <= u0_m0_wo0_wi0_r0_delayr0_mem_top_q;
    u0_m0_wo0_wi0_r0_delayr0_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_delayr0_rdmux_q);
    u0_m0_wo0_wi0_r0_delayr0_cmp_q <= "1" WHEN u0_m0_wo0_wi0_r0_delayr0_cmp_a = u0_m0_wo0_wi0_r0_delayr0_cmp_b ELSE "0";

    -- u0_m0_wo0_wi0_r0_delayr0_cmpReg(REG,3539)@10
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

    -- u0_m0_wo0_wi0_r0_delayr0_sticky_ena(REG,3542)@10
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

    -- u0_m0_wo0_wi0_r0_delayr0_enaAnd(LOGICAL,3543)@10
    u0_m0_wo0_wi0_r0_delayr0_enaAnd_a <= u0_m0_wo0_wi0_r0_delayr0_sticky_ena_q;
    u0_m0_wo0_wi0_r0_delayr0_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi0_r0_delayr0_enaAnd_q <= u0_m0_wo0_wi0_r0_delayr0_enaAnd_a and u0_m0_wo0_wi0_r0_delayr0_enaAnd_b;

    -- u0_m0_wo0_wi0_r0_delayr0_rdcnt(COUNTER,3534)@10
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

    -- u0_m0_wo0_wi0_r0_delayr0_rdmux(MUX,3535)@10
    u0_m0_wo0_wi0_r0_delayr0_rdmux_s <= xIn_v;
    u0_m0_wo0_wi0_r0_delayr0_rdmux: PROCESS (u0_m0_wo0_wi0_r0_delayr0_rdmux_s, u0_m0_wo0_wi0_r0_delayr0_wraddr_q, u0_m0_wo0_wi0_r0_delayr0_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_wi0_r0_delayr0_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_wi0_r0_delayr0_rdmux_q <= u0_m0_wo0_wi0_r0_delayr0_wraddr_q;
            WHEN "1" => u0_m0_wo0_wi0_r0_delayr0_rdmux_q <= u0_m0_wo0_wi0_r0_delayr0_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_wi0_r0_delayr0_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr0_wraddr(REG,3536)@10
    u0_m0_wo0_wi0_r0_delayr0_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_delayr0_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_delayr0_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr0_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_delayr0_mem(DUALMEM,3533)@10
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

    -- u0_m0_wo0_cma0(CHAINMULTADD,3506)@10
    -- altera synthesis_off
    u0_m0_wo0_cma0_k0 <= (
        0 => TO_SIGNED(19,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k1 <= (
        0 => TO_SIGNED(51,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k2 <= (
        0 => TO_SIGNED(87,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k3 <= (
        0 => TO_SIGNED(116,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k4 <= (
        0 => TO_SIGNED(127,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k5 <= (
        0 => TO_SIGNED(115,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k6 <= (
        0 => TO_SIGNED(85,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k7 <= (
        0 => TO_SIGNED(49,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k8 <= (
        0 => TO_SIGNED(49,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k9 <= (
        0 => TO_SIGNED(85,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k10 <= (
        0 => TO_SIGNED(115,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k11 <= (
        0 => TO_SIGNED(127,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k12 <= (
        0 => TO_SIGNED(116,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k13 <= (
        0 => TO_SIGNED(87,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k14 <= (
        0 => TO_SIGNED(51,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k15 <= (
        0 => TO_SIGNED(19,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k16 <= (
        0 => TO_SIGNED(47,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k17 <= (
        0 => TO_SIGNED(84,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k18 <= (
        0 => TO_SIGNED(114,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k19 <= (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k20 <= (
        0 => TO_SIGNED(117,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k21 <= (
        0 => TO_SIGNED(89,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k22 <= (
        0 => TO_SIGNED(53,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k23 <= (
        0 => TO_SIGNED(21,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k24 <= (
        0 => TO_SIGNED(46,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k25 <= (
        0 => TO_SIGNED(82,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k26 <= (
        0 => TO_SIGNED(113,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k27 <= (
        0 => TO_SIGNED(126,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k28 <= (
        0 => TO_SIGNED(118,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k29 <= (
        0 => TO_SIGNED(91,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k30 <= (
        0 => TO_SIGNED(55,11),
        others => (others => '0'));
    u0_m0_wo0_cma0_k31 <= (
        0 => TO_SIGNED(22,11),
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
                u0_m0_wo0_cma0_a0(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_delayr2_q),10);
                u0_m0_wo0_cma0_a0(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_delayr3_q),10);
                u0_m0_wo0_cma0_a0(4) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_delayr4_q),10);
                u0_m0_wo0_cma0_a0(5) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_delayr5_q),10);
                u0_m0_wo0_cma0_a0(6) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_delayr6_q),10);
                u0_m0_wo0_cma0_a0(7) <= RESIZE(SIGNED(u0_m0_wo0_wi0_r0_delayr7_q),10);
                u0_m0_wo0_cma0_a0(8) <= RESIZE(SIGNED(u0_m0_wo0_wi1_r0_phasedelay8_q),10);
                u0_m0_wo0_cma0_a0(9) <= RESIZE(SIGNED(u0_m0_wo0_wi1_r0_delayr9_q),10);
                u0_m0_wo0_cma0_a0(10) <= RESIZE(SIGNED(u0_m0_wo0_wi1_r0_delayr10_q),10);
                u0_m0_wo0_cma0_a0(11) <= RESIZE(SIGNED(u0_m0_wo0_wi1_r0_delayr11_q),10);
                u0_m0_wo0_cma0_a0(12) <= RESIZE(SIGNED(u0_m0_wo0_wi1_r0_delayr12_q),10);
                u0_m0_wo0_cma0_a0(13) <= RESIZE(SIGNED(u0_m0_wo0_wi1_r0_delayr13_q),10);
                u0_m0_wo0_cma0_a0(14) <= RESIZE(SIGNED(u0_m0_wo0_wi1_r0_delayr14_q),10);
                u0_m0_wo0_cma0_a0(15) <= RESIZE(SIGNED(u0_m0_wo0_wi1_r0_delayr15_q),10);
                u0_m0_wo0_cma0_a0(16) <= RESIZE(SIGNED(u0_m0_wo0_wi2_r0_phasedelay16_q),10);
                u0_m0_wo0_cma0_a0(17) <= RESIZE(SIGNED(u0_m0_wo0_wi2_r0_delayr17_q),10);
                u0_m0_wo0_cma0_a0(18) <= RESIZE(SIGNED(u0_m0_wo0_wi2_r0_delayr18_q),10);
                u0_m0_wo0_cma0_a0(19) <= RESIZE(SIGNED(u0_m0_wo0_wi2_r0_delayr19_q),10);
                u0_m0_wo0_cma0_a0(20) <= RESIZE(SIGNED(u0_m0_wo0_wi2_r0_delayr20_q),10);
                u0_m0_wo0_cma0_a0(21) <= RESIZE(SIGNED(u0_m0_wo0_wi2_r0_delayr21_q),10);
                u0_m0_wo0_cma0_a0(22) <= RESIZE(SIGNED(u0_m0_wo0_wi2_r0_delayr22_q),10);
                u0_m0_wo0_cma0_a0(23) <= RESIZE(SIGNED(u0_m0_wo0_wi2_r0_delayr23_q),10);
                u0_m0_wo0_cma0_a0(24) <= RESIZE(SIGNED(u0_m0_wo0_wi3_r0_phasedelay24_q),10);
                u0_m0_wo0_cma0_a0(25) <= RESIZE(SIGNED(u0_m0_wo0_wi3_r0_delayr25_q),10);
                u0_m0_wo0_cma0_a0(26) <= RESIZE(SIGNED(u0_m0_wo0_wi3_r0_delayr26_q),10);
                u0_m0_wo0_cma0_a0(27) <= RESIZE(SIGNED(u0_m0_wo0_wi3_r0_delayr27_q),10);
                u0_m0_wo0_cma0_a0(28) <= RESIZE(SIGNED(u0_m0_wo0_wi3_r0_delayr28_q),10);
                u0_m0_wo0_cma0_a0(29) <= RESIZE(SIGNED(u0_m0_wo0_wi3_r0_delayr29_q),10);
                u0_m0_wo0_cma0_a0(30) <= RESIZE(SIGNED(u0_m0_wo0_wi3_r0_delayr30_q),10);
                u0_m0_wo0_cma0_a0(31) <= RESIZE(SIGNED(u0_m0_wo0_wi3_r0_delayr31_q),10);
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

    -- u0_m0_wo0_mtree_add0_0(ADD,3511)@12
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR(u0_m0_wo0_cma0_q(23 downto 0));
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cma1_q(23 downto 0));
    u0_m0_wo0_mtree_add0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(23 downto 0);

    -- u0_m0_wo0_mtree_add1_0(ADD,3513)@13
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add0_0_q(23)) & u0_m0_wo0_mtree_add0_0_q));
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add0_1_q(23)) & u0_m0_wo0_mtree_add0_1_q));
    u0_m0_wo0_mtree_add1_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(24 downto 0);

    -- u0_m0_wo0_mtree_add2_0(ADD,3514)@14
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add1_0_q(24)) & u0_m0_wo0_mtree_add1_0_q));
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cma4_q);
    u0_m0_wo0_mtree_add2_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(25 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- d_u0_m0_wo0_compute_q_14(DELAY,3532)@13
    d_u0_m0_wo0_compute_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_13_q, xout => d_u0_m0_wo0_compute_q_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_sys_delay_notEnable(LOGICAL,3760)@14
    u0_m0_wo0_sys_delay_notEnable_a <= d_u0_m0_wo0_compute_q_14_q;
    u0_m0_wo0_sys_delay_notEnable_q <= not (u0_m0_wo0_sys_delay_notEnable_a);

    -- u0_m0_wo0_sys_delay_nor(LOGICAL,3761)@14
    u0_m0_wo0_sys_delay_nor_a <= u0_m0_wo0_sys_delay_notEnable_q;
    u0_m0_wo0_sys_delay_nor_b <= u0_m0_wo0_sys_delay_sticky_ena_q;
    u0_m0_wo0_sys_delay_nor_q <= not (u0_m0_wo0_sys_delay_nor_a or u0_m0_wo0_sys_delay_nor_b);

    -- u0_m0_wo0_sys_delay_mem_top(CONSTANT,3757)
    u0_m0_wo0_sys_delay_mem_top_q <= "011101";

    -- u0_m0_wo0_sys_delay_cmp(LOGICAL,3758)@14
    u0_m0_wo0_sys_delay_cmp_a <= u0_m0_wo0_sys_delay_mem_top_q;
    u0_m0_wo0_sys_delay_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_sys_delay_rdmux_q);
    u0_m0_wo0_sys_delay_cmp_q <= "1" WHEN u0_m0_wo0_sys_delay_cmp_a = u0_m0_wo0_sys_delay_cmp_b ELSE "0";

    -- u0_m0_wo0_sys_delay_cmpReg(REG,3759)@14
    u0_m0_wo0_sys_delay_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sys_delay_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_14_q = "1") THEN
                u0_m0_wo0_sys_delay_cmpReg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_sys_delay_cmp_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_sys_delay_sticky_ena(REG,3762)@14
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

    -- u0_m0_wo0_sys_delay_enaAnd(LOGICAL,3763)@14
    u0_m0_wo0_sys_delay_enaAnd_a <= u0_m0_wo0_sys_delay_sticky_ena_q;
    u0_m0_wo0_sys_delay_enaAnd_b <= d_u0_m0_wo0_compute_q_14_q;
    u0_m0_wo0_sys_delay_enaAnd_q <= u0_m0_wo0_sys_delay_enaAnd_a and u0_m0_wo0_sys_delay_enaAnd_b;

    -- u0_m0_wo0_sys_delay_rdcnt(COUNTER,3754)@14
    -- every=1, low=0, high=29, step=1, init=1
    u0_m0_wo0_sys_delay_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sys_delay_rdcnt_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_sys_delay_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_14_q = "1") THEN
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

    -- u0_m0_wo0_sys_delay_rdmux(MUX,3755)@14
    u0_m0_wo0_sys_delay_rdmux_s <= d_u0_m0_wo0_compute_q_14_q;
    u0_m0_wo0_sys_delay_rdmux: PROCESS (u0_m0_wo0_sys_delay_rdmux_s, u0_m0_wo0_sys_delay_wraddr_q, u0_m0_wo0_sys_delay_rdcnt_q)
    BEGIN
        CASE (u0_m0_wo0_sys_delay_rdmux_s) IS
            WHEN "0" => u0_m0_wo0_sys_delay_rdmux_q <= u0_m0_wo0_sys_delay_wraddr_q;
            WHEN "1" => u0_m0_wo0_sys_delay_rdmux_q <= u0_m0_wo0_sys_delay_rdcnt_q;
            WHEN OTHERS => u0_m0_wo0_sys_delay_rdmux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- u0_m0_wo0_sys_delay_wraddr(REG,3756)@14
    u0_m0_wo0_sys_delay_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sys_delay_wraddr_q <= "00000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sys_delay_wraddr_q <= STD_LOGIC_VECTOR(u0_m0_wo0_sys_delay_rdmux_q);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_sys_delay_mem(DUALMEM,3753)@14
    u0_m0_wo0_sys_delay_mem_ia <= STD_LOGIC_VECTOR(d_u0_m0_wo0_compute_q_14_q);
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
        wren_a => d_u0_m0_wo0_compute_q_14_q(0),
        address_b => u0_m0_wo0_sys_delay_mem_ab,
        q_b => u0_m0_wo0_sys_delay_mem_iq
    );
    u0_m0_wo0_sys_delay_mem_q <= u0_m0_wo0_sys_delay_mem_iq(0 downto 0);

    -- u0_m0_wo0_sys_and(LOGICAL,3516)@14
    u0_m0_wo0_sys_and_a <= u0_m0_wo0_sys_delay_mem_q;
    u0_m0_wo0_sys_and_b <= d_u0_m0_wo0_compute_q_14_q;
    u0_m0_wo0_sys_and_q <= u0_m0_wo0_sys_and_a and u0_m0_wo0_sys_and_b;

    -- u0_m0_wo0_oseq_gated_reg(REG,3517)@14
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_sys_and_q);
        END IF;
    END PROCESS;

    -- out0_m0_wo0_lineup_select_delay_0(DELAY,3519)@15
    out0_m0_wo0_lineup_select_delay_0_q <= u0_m0_wo0_oseq_gated_reg_q;

    -- out0_m0_wo0_assign_id41(DELAY,3521)@15
    out0_m0_wo0_assign_id41_q <= out0_m0_wo0_lineup_select_delay_0_q;

    -- xOut(PORTOUT,3522)@15
    xOut_v <= out0_m0_wo0_assign_id41_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add2_0_q;

END normal;
