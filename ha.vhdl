-----------------------------------------------------------------
-- Project: Halbaddierer
-----------------------------------------------------------------
-- File:   ha.vhdl 
-- Author: Glock-Atom
-- Date:   October 13, 2021
-----------------------------------------------------------------
-- half-adder
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity ha is
port(
  a : in std_logic;
  b : in std_logic;
  s : out std_logic; --sum
  co : out std_logic --carry out
  );    
end ha;

architecture dataflow of ha is

-- declaration part

begin -- architecture body
  s <= a xor b;
  co <= a and b;
end dataflow;
