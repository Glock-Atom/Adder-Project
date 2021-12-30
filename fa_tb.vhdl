-----------------------------------------------------------------
-- Project: Volladdierer
-----------------------------------------------------------------
-- File:   fa_tb.vhdl 
-- Author: Glock-Atom
-- Date:   November 3, 2021
-----------------------------------------------------------------
-- Testbench for fa.vhdl
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity fa_tb is
end fa_tb;

architecture sim of fa_tb is

-- declaration part

component fa
port(
  a : in std_logic;
  b : in std_logic;
  c : in std_logic;
  s : out std_logic; --sum
  co : out std_logic --carry out
  );    
end component;

signal aa : std_logic;
signal bb : std_logic;
signal cc : std_logic;
signal ss : std_logic;
signal cco : std_logic;

begin -- architecture body

uut : fa port map(
  a => aa,
  b => bb,
  c => cc,
  s => ss,
  co => cco
  );

gen_aa: process
begin
    aa <= '0';
    wait for 10 us;
    aa <= '1';
    wait for 10 us;
end process;

gen_bb: process
begin
    bb <= '0';
    wait for 20 us;
    bb <= '1';
    wait for 20 us;
end process;

gen_cc: process
begin
    cc <= '0';
    wait for 40 us;
    cc <= '1';
    wait for 40 us;
end process;

end sim;
