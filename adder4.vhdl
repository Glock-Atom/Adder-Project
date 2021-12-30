-----------------------------------------------------------------
-- Project: Addierer
-----------------------------------------------------------------
-- File:   adder4.vhdl 
-- Author: Hamza Tekin
-- Date:   November 10, 2021
-----------------------------------------------------------------
-- 4-Bit Addierer
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity adder4 is
port(
    a : in std_logic_vector(3 downto 0);
    b : in std_logic_vector(3 downto 0);
    s : out std_logic_vector(3 downto 0);
    ci : in std_logic;
    co : out std_logic

  );    
end adder4;

architecture structure of adder4 is

-- declaration part
component fa
port(
    a : in std_logic;
    b : in std_logic;
    c : in std_logic;
    s : out std_logic;
    co : out std_logic
);
end component;

signal w : std_logic_vector(3 downto 1);

begin -- architecture body
fa0 : fa port map(
    a => a(0),
    b => b(0),
    c => ci,
    s => s(0),
    co => w(1)
);

fa1: fa port map(
    a => a(1),
    b => b(1),
    c => w(1),
    s => s(1),
    co => w(2)
);

fa2: fa port map(
    a => a(2),
    b => b(2),
    c => w(1),
    s => s(2),
    co => w(3)
);

fa3: fa port map(
    a =>a(3),
    b =>b(3),
    c =>w(3),
    s =>s(3),
    co =>co
);

end structure;