-- G_3NOR1.vhd
-- Generic 3 input NOR gate, 1 inverted input.

library ieee;
use ieee.std_logic_1164.all;
  entity G_3NOR1 is
    Port
    (
      B : In std_logic;
      C : In std_logic;
      AN : In std_logic;
      YN : Out std_logic
    );
  end G_3NOR1;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_3NOR1 is
    begin
      YN <= not (not (AN) or B or C);
    end behavioral;

-- EOF
