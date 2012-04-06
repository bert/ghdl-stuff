-- G_4AND.vhd
-- Generic 4 input AND gate.

library ieee;
use ieee.std_logic_1164.all;
entity G_4AND is
  port
  (
    A : In std_logic;
    B : In std_logic;
    C : In std_logic;
    D : In std_logic;
    Y : Out std_logic
  );
end G_4AND;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_4AND is
begin
  Y <= A and B and C and D;
end behavioral;

-- EOF
