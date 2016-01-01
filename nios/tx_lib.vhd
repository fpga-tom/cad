library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.NUMERIC_STD.all;

package tx_lib is
  constant bits  : natural := 8;        -- sirka slova delta sigma modulatora
  constant pbits : natural := 10;       -- sirka slova frekvencneho translatora

  procedure dsm(x   : in signed(bits-1 downto 0); y : out std_logic; acc : inout signed(bits downto 0));
  function fshift(x :    std_logic) return std_logic_vector;
  procedure transmit(x   : in    signed(bits-1 downto 0); y : out std_logic_vector(pbits-1 downto 0);
                     acc : inout signed(bits downto 0));
end tx_lib;

package body tx_lib is

  procedure dsm(x : in signed(bits-1 downto 0); y : out std_logic; acc : inout signed(bits downto 0)) is
    variable d   : signed(bits downto 0);
    variable dac : signed(bits downto 0);
  begin
    if acc > 0 then
      dac := "0" & signed(to_unsigned(2**(bits-1), bits));
    else
      dac := "1" & signed(to_unsigned(2**(bits-1), bits));
    end if;
    d   := x - dac;
    acc := d + acc;
    y   := not acc(bits);
  end dsm;

  function fshift(x : in std_logic) return std_logic_vector is
    variable r : std_logic_vector(pbits-1 downto 0);
  begin
    for i in 0 to pbits-1 loop
      if i mod 2 = 0 then
        r(i) := not x;
      else
        r(i) := x;
      end if;
    end loop;  -- i
    return r;
  end fshift;

  procedure transmit(x   : in    signed(bits-1 downto 0); y : out std_logic_vector(pbits-1 downto 0);
                     acc : inout signed(bits downto 0)) is
    variable dsm_out : std_logic;
  begin
    dsm(x, dsm_out, acc);
    y := fshift(dsm_out);
  end transmit;
end;
