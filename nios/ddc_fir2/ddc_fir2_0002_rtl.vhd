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

-- VHDL created from ddc_fir2_0002_rtl
-- VHDL created on Thu Mar 24 18:42:00 2016


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

entity ddc_fir2_0002_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(23 downto 0);  -- sfix24
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(37 downto 0);  -- sfix38
        clk : in std_logic;
        areset : in std_logic
    );
end ddc_fir2_0002_rtl;

architecture normal of ddc_fir2_0002_rtl is

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
    signal d_u0_m0_wo0_compute_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_i : UNSIGNED (6 downto 0);
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count0_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count0_lutreg_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_i : UNSIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_wa0_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_memr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_ca0_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_ca0_i : UNSIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_ca0_i : signal is true;
    signal u0_m0_wo0_ca0_eq : std_logic;
    attribute preserve of u0_m0_wo0_ca0_eq : signal is true;
    signal u0_m0_wo0_cm0_q : STD_LOGIC_VECTOR (7 downto 0);
    type u0_m0_wo0_cma0_a_type is array(0 to 0) of SIGNED(23 downto 0);
    signal u0_m0_wo0_cma0_a0 : u0_m0_wo0_cma0_a_type;
    attribute preserve of u0_m0_wo0_cma0_a0 : signal is true;
    type u0_m0_wo0_cma0_c_type is array(0 to 0) of SIGNED(10 downto 0);
    signal u0_m0_wo0_cma0_c0 : u0_m0_wo0_cma0_c_type;
    attribute preserve of u0_m0_wo0_cma0_c0 : signal is true;
    type u0_m0_wo0_cma0_p_type is array(0 to 0) of SIGNED(34 downto 0);
    signal u0_m0_wo0_cma0_p : u0_m0_wo0_cma0_p_type;
    type u0_m0_wo0_cma0_u_type is array(0 to 0) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_u : u0_m0_wo0_cma0_u_type;
    type u0_m0_wo0_cma0_w_type is array(0 to 0) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_w : u0_m0_wo0_cma0_w_type;
    type u0_m0_wo0_cma0_x_type is array(0 to 0) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_x : u0_m0_wo0_cma0_x_type;
    type u0_m0_wo0_cma0_y_type is array(0 to 0) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_y : u0_m0_wo0_cma0_y_type;
    type u0_m0_wo0_cma0_z_type is array(0 to 0) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_z : u0_m0_wo0_cma0_z_type;
    signal u0_m0_wo0_cma0_anl : std_logic_vector(0 to 0);
    type u0_m0_wo0_cma0_s_type is array(0 to 0) of SIGNED(63 downto 0);
    signal u0_m0_wo0_cma0_s : u0_m0_wo0_cma0_s_type;
    signal u0_m0_wo0_cma0_qq : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_cma0_q : STD_LOGIC_VECTOR (37 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
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
    signal d_xIn_0_13_notEnable_a : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_nor_a : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_nor_b : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_enaAnd_a : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_enaAnd_b : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_lut_q : STD_LOGIC_VECTOR (5 downto 0);
    signal out0_m0_wo0_lineup_select_delay_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal out0_m0_wo0_assign_id3_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- xIn(PORTIN,2)@10

    -- u0_m0_wo0_run(ENABLEGENERATOR,9)@10
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & xIn_v & u0_m0_wo0_run_enable_q;
    u0_m0_wo0_run: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : SIGNED(6 downto 0);
        variable u0_m0_wo0_run_inc : SIGNED(6 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(38, 7);
            u0_m0_wo0_run_enable_q <= "0";
            u0_m0_wo0_run_count <= "0000000";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(6) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-39);
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + (-1);
                END IF;
                u0_m0_wo0_run_enable_q <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(6 downto 6));
            ELSE
                u0_m0_wo0_run_enable_q <= "0";
            END IF;
            CASE (u0_m0_wo0_run_ctrl) IS
                WHEN "000" | "001" => u0_m0_wo0_run_inc := "0000000";
                WHEN "010" | "011" => u0_m0_wo0_run_inc := "1111111";
                WHEN "100" => u0_m0_wo0_run_inc := "0000000";
                WHEN "101" => u0_m0_wo0_run_inc := "0011001";
                WHEN "110" => u0_m0_wo0_run_inc := "1111111";
                WHEN "111" => u0_m0_wo0_run_inc := "0011000";
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

    -- u0_m0_wo0_ca0(COUNTER,18)@12
    -- every=1, low=0, high=39, step=1, init=0
    u0_m0_wo0_ca0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca0_i <= TO_UNSIGNED(0, 6);
            u0_m0_wo0_ca0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_ca0_i = TO_UNSIGNED(38, 6)) THEN
                    u0_m0_wo0_ca0_eq <= '1';
                ELSE
                    u0_m0_wo0_ca0_eq <= '0';
                END IF;
                IF (u0_m0_wo0_ca0_eq = '1') THEN
                    u0_m0_wo0_ca0_i <= u0_m0_wo0_ca0_i - 39;
                ELSE
                    u0_m0_wo0_ca0_i <= u0_m0_wo0_ca0_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca0_i, 6)));

    -- u0_m0_wo0_cm0(LOOKUP,19)@12
    u0_m0_wo0_cm0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm0_q <= "00001000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca0_q) IS
                WHEN "000000" => u0_m0_wo0_cm0_q <= "00001000";
                WHEN "000001" => u0_m0_wo0_cm0_q <= "00001001";
                WHEN "000010" => u0_m0_wo0_cm0_q <= "00001011";
                WHEN "000011" => u0_m0_wo0_cm0_q <= "00001110";
                WHEN "000100" => u0_m0_wo0_cm0_q <= "00010011";
                WHEN "000101" => u0_m0_wo0_cm0_q <= "00011001";
                WHEN "000110" => u0_m0_wo0_cm0_q <= "00100000";
                WHEN "000111" => u0_m0_wo0_cm0_q <= "00101000";
                WHEN "001000" => u0_m0_wo0_cm0_q <= "00110000";
                WHEN "001001" => u0_m0_wo0_cm0_q <= "00111010";
                WHEN "001010" => u0_m0_wo0_cm0_q <= "01000011";
                WHEN "001011" => u0_m0_wo0_cm0_q <= "01001101";
                WHEN "001100" => u0_m0_wo0_cm0_q <= "01010110";
                WHEN "001101" => u0_m0_wo0_cm0_q <= "01011111";
                WHEN "001110" => u0_m0_wo0_cm0_q <= "01101000";
                WHEN "001111" => u0_m0_wo0_cm0_q <= "01101111";
                WHEN "010000" => u0_m0_wo0_cm0_q <= "01110101";
                WHEN "010001" => u0_m0_wo0_cm0_q <= "01111010";
                WHEN "010010" => u0_m0_wo0_cm0_q <= "01111101";
                WHEN "010011" => u0_m0_wo0_cm0_q <= "01111111";
                WHEN "010100" => u0_m0_wo0_cm0_q <= "01111111";
                WHEN "010101" => u0_m0_wo0_cm0_q <= "01111101";
                WHEN "010110" => u0_m0_wo0_cm0_q <= "01111010";
                WHEN "010111" => u0_m0_wo0_cm0_q <= "01110101";
                WHEN "011000" => u0_m0_wo0_cm0_q <= "01101111";
                WHEN "011001" => u0_m0_wo0_cm0_q <= "01101000";
                WHEN "011010" => u0_m0_wo0_cm0_q <= "01011111";
                WHEN "011011" => u0_m0_wo0_cm0_q <= "01010110";
                WHEN "011100" => u0_m0_wo0_cm0_q <= "01001101";
                WHEN "011101" => u0_m0_wo0_cm0_q <= "01000011";
                WHEN "011110" => u0_m0_wo0_cm0_q <= "00111010";
                WHEN "011111" => u0_m0_wo0_cm0_q <= "00110000";
                WHEN "100000" => u0_m0_wo0_cm0_q <= "00101000";
                WHEN "100001" => u0_m0_wo0_cm0_q <= "00100000";
                WHEN "100010" => u0_m0_wo0_cm0_q <= "00011001";
                WHEN "100011" => u0_m0_wo0_cm0_q <= "00010011";
                WHEN "100100" => u0_m0_wo0_cm0_q <= "00001110";
                WHEN "100101" => u0_m0_wo0_cm0_q <= "00001011";
                WHEN "100110" => u0_m0_wo0_cm0_q <= "00001001";
                WHEN "100111" => u0_m0_wo0_cm0_q <= "00001000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm0_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_memread_q_13(DELAY,33)@12
    d_u0_m0_wo0_memread_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => d_u0_m0_wo0_memread_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_ra0_count0(COUNTER,13)@13
    -- every=1, low=0, high=79, step=1, init=1
    u0_m0_wo0_wi0_r0_ra0_count0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_i <= TO_UNSIGNED(1, 7);
            u0_m0_wo0_wi0_r0_ra0_count0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_13_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count0_i = TO_UNSIGNED(78, 7)) THEN
                    u0_m0_wo0_wi0_r0_ra0_count0_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count0_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_ra0_count0_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_ra0_count0_i <= u0_m0_wo0_wi0_r0_ra0_count0_i - 79;
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count0_i <= u0_m0_wo0_wi0_r0_ra0_count0_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_i, 7)));

    -- u0_m0_wo0_wi0_r0_ra0_count0_lut(LOOKUP,14)@13
    u0_m0_wo0_wi0_r0_ra0_count0_lut: PROCESS (u0_m0_wo0_wi0_r0_ra0_count0_q)
    BEGIN
        -- Begin reserved scope level
        CASE (u0_m0_wo0_wi0_r0_ra0_count0_q) IS
            WHEN "0000000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001011";
            WHEN "0000001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001100";
            WHEN "0000010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001101";
            WHEN "0000011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001110";
            WHEN "0000100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001111";
            WHEN "0000101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010000";
            WHEN "0000110" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010001";
            WHEN "0000111" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010010";
            WHEN "0001000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010011";
            WHEN "0001001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010100";
            WHEN "0001010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010101";
            WHEN "0001011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010110";
            WHEN "0001100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010111";
            WHEN "0001101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "011000";
            WHEN "0001110" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "011001";
            WHEN "0001111" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "011010";
            WHEN "0010000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "011011";
            WHEN "0010001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "011100";
            WHEN "0010010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "011101";
            WHEN "0010011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "011110";
            WHEN "0010100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "011111";
            WHEN "0010101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "100000";
            WHEN "0010110" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "100001";
            WHEN "0010111" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "100010";
            WHEN "0011000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "100011";
            WHEN "0011001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "100100";
            WHEN "0011010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "100101";
            WHEN "0011011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "100110";
            WHEN "0011100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "100111";
            WHEN "0011101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101000";
            WHEN "0011110" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101001";
            WHEN "0011111" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101010";
            WHEN "0100000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101011";
            WHEN "0100001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101100";
            WHEN "0100010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101101";
            WHEN "0100011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101110";
            WHEN "0100100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101111";
            WHEN "0100101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "110000";
            WHEN "0100110" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "110001";
            WHEN "0100111" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "000000";
            WHEN "0101000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "100100";
            WHEN "0101001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "100101";
            WHEN "0101010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "100110";
            WHEN "0101011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "100111";
            WHEN "0101100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101000";
            WHEN "0101101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101001";
            WHEN "0101110" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101010";
            WHEN "0101111" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101011";
            WHEN "0110000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101100";
            WHEN "0110001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101101";
            WHEN "0110010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101110";
            WHEN "0110011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "101111";
            WHEN "0110100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "110000";
            WHEN "0110101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "110001";
            WHEN "0110110" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "000000";
            WHEN "0110111" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "000001";
            WHEN "0111000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "000010";
            WHEN "0111001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "000011";
            WHEN "0111010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "000100";
            WHEN "0111011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "000101";
            WHEN "0111100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "000110";
            WHEN "0111101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "000111";
            WHEN "0111110" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001000";
            WHEN "0111111" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001001";
            WHEN "1000000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001010";
            WHEN "1000001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001011";
            WHEN "1000010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001100";
            WHEN "1000011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001101";
            WHEN "1000100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001110";
            WHEN "1000101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "001111";
            WHEN "1000110" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010000";
            WHEN "1000111" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010001";
            WHEN "1001000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010010";
            WHEN "1001001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010011";
            WHEN "1001010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010100";
            WHEN "1001011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010101";
            WHEN "1001100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010110";
            WHEN "1001101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "010111";
            WHEN "1001110" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "011000";
            WHEN "1001111" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "011001";
            WHEN OTHERS => -- unreachable
                           u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count0_lutreg(REG,15)@13
    u0_m0_wo0_wi0_r0_ra0_count0_lutreg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_lutreg_q <= "001011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count0_lutreg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count0_lut_q);
            END IF;
        END IF;
    END PROCESS;

    -- d_xIn_0_13_notEnable(LOGICAL,40)@10
    d_xIn_0_13_notEnable_a <= VCC_q;
    d_xIn_0_13_notEnable_q <= not (d_xIn_0_13_notEnable_a);

    -- d_xIn_0_13_nor(LOGICAL,41)@10
    d_xIn_0_13_nor_a <= d_xIn_0_13_notEnable_q;
    d_xIn_0_13_nor_b <= d_xIn_0_13_sticky_ena_q;
    d_xIn_0_13_nor_q <= not (d_xIn_0_13_nor_a or d_xIn_0_13_nor_b);

    -- d_xIn_0_13_cmpReg(REG,39)@10
    d_xIn_0_13_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- d_xIn_0_13_sticky_ena(REG,42)@10
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

    -- d_xIn_0_13_enaAnd(LOGICAL,43)@10
    d_xIn_0_13_enaAnd_a <= d_xIn_0_13_sticky_ena_q;
    d_xIn_0_13_enaAnd_b <= VCC_q;
    d_xIn_0_13_enaAnd_q <= d_xIn_0_13_enaAnd_a and d_xIn_0_13_enaAnd_b;

    -- d_xIn_0_13_rdcnt(COUNTER,37)@10
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

    -- d_xIn_0_13_wraddr(REG,38)@10
    d_xIn_0_13_wraddr: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_wraddr_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_wraddr_q <= STD_LOGIC_VECTOR(d_xIn_0_13_rdcnt_q);
        END IF;
    END PROCESS;

    -- d_xIn_0_13_mem(DUALMEM,36)@10
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

    -- d_in0_m0_wi0_wo0_assign_id1_q_13(DELAY,32)@10
    d_in0_m0_wi0_wo0_assign_id1_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_id1_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_wa0(COUNTER,16)@13
    -- every=1, low=0, high=49, step=1, init=0
    u0_m0_wo0_wi0_r0_wa0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa0_i <= TO_UNSIGNED(0, 6);
            u0_m0_wo0_wi0_r0_wa0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_13_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_wa0_i = TO_UNSIGNED(48, 6)) THEN
                    u0_m0_wo0_wi0_r0_wa0_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_wa0_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_wa0_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i - 49;
                ELSE
                    u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa0_i, 6)));

    -- u0_m0_wo0_wi0_r0_memr0(DUALMEM,17)@13
    u0_m0_wo0_wi0_r0_memr0_ia <= STD_LOGIC_VECTOR(d_xIn_0_13_mem_q);
    u0_m0_wo0_wi0_r0_memr0_aa <= u0_m0_wo0_wi0_r0_wa0_q;
    u0_m0_wo0_wi0_r0_memr0_ab <= u0_m0_wo0_wi0_r0_ra0_count0_lutreg_q;
    u0_m0_wo0_wi0_r0_memr0_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 24,
        widthad_a => 6,
        numwords_a => 50,
        width_b => 24,
        widthad_b => 6,
        numwords_b => 50,
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

    -- u0_m0_wo0_aseq(SEQUENCE,21)@12
    u0_m0_wo0_aseq: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : SIGNED(7 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "00000000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "00000000") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 39;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_aseq_c(7 downto 7));
            END IF;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_compute_q_14(DELAY,35)@13
    d_u0_m0_wo0_compute_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_13_q, xout => d_u0_m0_wo0_compute_q_14_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_13(DELAY,34)@12
    d_u0_m0_wo0_compute_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cma0(CHAINMULTADD,20)@13
    u0_m0_wo0_cma0_p(0) <= u0_m0_wo0_cma0_a0(0) * u0_m0_wo0_cma0_c0(0);
    u0_m0_wo0_cma0_u(0) <= RESIZE(u0_m0_wo0_cma0_p(0),64);
    u0_m0_wo0_cma0_w(0) <= u0_m0_wo0_cma0_u(0);
    u0_m0_wo0_cma0_x(0) <= u0_m0_wo0_cma0_w(0);
    u0_m0_wo0_cma0_y(0) <= u0_m0_wo0_cma0_x(0);
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
                u0_m0_wo0_cma0_c0(0) <= RESIZE(SIGNED(u0_m0_wo0_cm0_q),11);
                u0_m0_wo0_cma0_anl(0) <= not(u0_m0_wo0_aseq_q(0));
            END IF;
            IF (d_u0_m0_wo0_compute_q_14_q = "1") THEN
                u0_m0_wo0_cma0_s(0) <= u0_m0_wo0_cma0_z(0) + u0_m0_wo0_cma0_y(0);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma0_delay : dspba_delay
    GENERIC MAP ( width => 38, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma0_s(0)(37 downto 0)), xout => u0_m0_wo0_cma0_qq, clk => clk, aclr => areset );
    u0_m0_wo0_cma0_q <= STD_LOGIC_VECTOR(u0_m0_wo0_cma0_qq(37 downto 0));

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_oseq(SEQUENCE,23)@13
    u0_m0_wo0_oseq: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(7 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "00100111";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_13_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "00000000") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 39;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_c(7 downto 7));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_oseq_gated(LOGICAL,24)@14
    u0_m0_wo0_oseq_gated_a <= u0_m0_wo0_oseq_q;
    u0_m0_wo0_oseq_gated_b <= d_u0_m0_wo0_compute_q_14_q;
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_gated_a and u0_m0_wo0_oseq_gated_b;

    -- u0_m0_wo0_oseq_gated_reg(REG,25)@14
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- out0_m0_wo0_lineup_select_delay_0(DELAY,27)@15
    out0_m0_wo0_lineup_select_delay_0_q <= u0_m0_wo0_oseq_gated_reg_q;

    -- out0_m0_wo0_assign_id3(DELAY,29)@15
    out0_m0_wo0_assign_id3_q <= out0_m0_wo0_lineup_select_delay_0_q;

    -- xOut(PORTOUT,30)@15
    xOut_v <= out0_m0_wo0_assign_id3_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_cma0_q;

END normal;
