-- G_4AND1.vhd
-- Generic 4 input AND gate, 1 inverted input.

library ieee;
use ieee.std_logic_1164.all;
  entity G_4AND1 is
    Port
    (
      B : In std_logic;
      C : In std_logic;
      D : In std_logic;
      AN : In std_logic;
      Y : Out std_logic
    );
  end G_4AND1;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_4AND1 is
    begin
      Y <= not (AN) and B and C and D;
    end behavioral;

-- EOF
