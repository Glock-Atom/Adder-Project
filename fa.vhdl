-----------------------------------------------------------------
-- Project: Volladdierer
-----------------------------------------------------------------
-- File:   fa.vhdl 
-- Author: Glock-Atom
-- Date:   October 13, 2021
-----------------------------------------------------------------
-- full-adder
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity fa is
port(
  a : in std_logic;
  b : in std_logic;
  c : in std_logic;
  s : out std_logic; --sum
  co : out std_logic --carry out
  );    
end fa;

architecture structure of fa is

-- declaration part
component ha
port(
  a : in std_logic;
  b : in std_logic;
  s : out std_logic; --sum
  co : out std_logic --carry out
  );    
end component;

signal x,y,z : std_logic;

begin -- architecture body

ha1 : ha port map(
  a => b,
  b => c,
  s => x,
  co => y
);

ha2 : ha port map(
  a => a,
  b => x,
  s => s,
  co => z
);

co <= y or z;

end structure;
