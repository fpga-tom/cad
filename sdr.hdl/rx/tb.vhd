-------------------------------------------------------------------------------
-- Title      : all digital receiver
-- Project    : 
-------------------------------------------------------------------------------
-- File       : tb.vhd
-- Author     : tomas  <tomas@fedora>
-- Company    : 
-- Created    : 2015-12-19
-- Last update: 2015-12-26
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: testbench
-------------------------------------------------------------------------------
-- Copyright (c) 2015 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2015-12-19  1.0      tomas   Created
-------------------------------------------------------------------------------


library ieee;
library std;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use std.textio.all;

entity testbench is
end;

architecture dut of testbench is
  component C5G is
    port (
      CLOCK_125_p  : in    std_logic;
      CLOCK_50_B5B : in    std_logic;
      CLOCK_50_B6A : in    std_logic;
      CLOCK_50_B7A : in    std_logic;
      CLOCK_50_B8A : in    std_logic;
      LEDG         : out   std_logic_vector(7 downto 0);
      LEDR         : out   std_logic_vector(9 downto 0);
      CPU_RESET_n  : in    std_logic;
      KEY          : in    std_logic_vector(3 downto 0);
      I2C_SCL      : out   std_logic;
      I2C_SDA      : inout std_logic;
      UART_RX      : in    std_logic;
      UART_TX      : out   std_logic;
      CLKIN_P      : in    std_logic_vector(2 downto 1);
      CLKIN0       : in    std_logic;
      CLKOUT_P     : out   std_logic_vector(2 downto 1);
      CLKOUT0      : out   std_logic;
      RX_P         : in    std_logic_vector(3 downto 0);
      TX_P         : out   std_logic_vector(3 downto 0));
  end component C5G;
  signal CLOCK_125_p  : std_logic                    := '0';
  signal CLOCK_50_B5B : std_logic;
  signal CLOCK_50_B6A : std_logic;
  signal CLOCK_50_B7A : std_logic;
  signal CLOCK_50_B8A : std_logic;
  signal LEDG         : std_logic_vector(7 downto 0) := (others => '0');
  signal LEDR         : std_logic_vector(9 downto 0) := (others => '0');
  signal CPU_RESET_n  : std_logic;
  signal KEY          : std_logic_vector(3 downto 0) := (others => '0');
  signal I2C_SCL      : std_logic;
  signal I2C_SDA      : std_logic;
  signal UART_RX      : std_logic;
  signal UART_TX      : std_logic;
  signal CLKIN_P      : std_logic_vector(2 downto 1);
  signal CLKIN0       : std_logic;
  signal CLKOUT_P     : std_logic_vector(2 downto 1);
  signal CLKOUT0      : std_logic;
  signal RX_P         : std_logic_vector(3 downto 0);
  signal TX_P         : std_logic_vector(3 downto 0);

  signal clock    : std_logic := '0';   -- 125Mhz clock
  signal reset    : std_logic := '1';   -- reset
  signal clock_i  : std_logic := '0';   -- clock integrator
  signal clock_50 : std_logic := '0';   -- 50Mhz clock
  signal reset_p  : std_logic := '1';   -- sampling reset
begin
  clock_i      <= not clock_i  after 200 ps; -- 100ps ~ 5Ghz, 160 ps ~ 3.125Ghz
  clock        <= not clock    after 4 ns; -- 4ns ~ 125Mhz
  clock_50     <= not clock_50 after 20 ns;
  reset        <= '0'          after 512 ns;
  reset_p      <= '0'          after 20000 ns;
  CLOCK_125_p  <= clock;
  CLKIN_P      <= (others => clock);
  CLKIN0       <= clock;
  CPU_RESET_n  <= not reset;
  CLOCK_50_B5B <= clock_50;
  CLOCK_50_B6A <= clock_50;
  CLOCK_50_B8A <= clock_50;
  CLOCK_50_B7A <= clock_50;
  I2C_SDA      <= '0';
  I2C_SCL      <= '0';
  UART_TX      <= '0';

  C5G_1 : component C5G
    port map (
      CLOCK_125_p  => CLOCK_125_p,
      CLOCK_50_B5B => CLOCK_50_B5B,
      CLOCK_50_B6A => CLOCK_50_B6A,
      CLOCK_50_B7A => CLOCK_50_B7A,
      CLOCK_50_B8A => CLOCK_50_B8A,
      LEDG         => LEDG,
      LEDR         => LEDR,
      CPU_RESET_n  => CPU_RESET_n,
      KEY          => KEY,
      I2C_SCL      => I2C_SCL,
      I2C_SDA      => I2C_SDA,
      UART_RX      => UART_RX,
      UART_TX      => UART_TX,
      CLKIN_P      => CLKIN_P,
      CLKIN0       => CLKIN0,
      CLKOUT_P     => CLKOUT_P,
      CLKOUT0      => CLKOUT0,
      RX_P         => RX_P,
      TX_P         => TX_P);

  -- purpose: main tb process
  -- type   : sequential
  -- inputs : clock, reset
  -- outputs: 
  integ_process : process(clock_i, reset_p) is
    variable z         : real                         := 0.0;
    variable zout      : real                         := 0.0;
    variable v         : real                         := 0.0;
    variable sig       : real                         := 0.0;
    variable gain      : real                         := 1.0;
    variable reference : real                         := 0.56;
    variable rate      : real                         := 1.0e-4;
    variable pwm       : std_logic_vector(1 downto 0) := "00";
    file outfile       : text is out "integrator.dat";
    variable outline   : line;
    file infile        : text is in "signal625.dat";
    variable inline    : line;
    file pwmfile       : text is out "pwm.dat";
    variable pwmline   : line;
  begin  -- process tb
    if reset_p = '1' then

    elsif clock_i'event and clock_i = '1' then
      if TX_P(0) = '1' then
        v := 1.0;
      else
        v := -1.0;
      end if;
      z    := z + v;
--      report "gain value " & real'image(gain) & " " & real'image(z) & " " & real'image(zout);
      zout := gain*z;
      gain := gain - rate*(-reference + abs(zout));
      write(outline, zout);
      writeline(outfile, outline);
      readline(infile, inline);
      read(inline, sig);
      if sig - zout > 0.0 then
        PWM := "01";
        RX_P(0) <= '1';
      else
        PWM := "00";
        RX_P(0) <= '0';
      end if;
      WRITE(PWMLINE, TO_INTEGER(signed(PWM)));
      WRITELINE(PWMFILE, PWMLINE);
    end if;
  end process INTEG_PROCESS;
end;
