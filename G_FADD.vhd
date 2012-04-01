-- G_FADD.vhd
-- Generic full adder.

library ieee;
use ieee.std_logic_1164.all;
entity G_FADD is 
  port
  (
    A: in std_logic;
    B: in std_logic;
    CI: in std_logic;
    SUM out std_logic;
    CO: out std_logic
  );
end G_FADD;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_FADD is
signal s: std_logic;
begin 
  s <= a xor b;
  SUM <= s xor CI;
  CO <= (A and B) or (s and CI);
end behavioral;

-- EOF
