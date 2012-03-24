-- G_4NOR1.vhd
-- Generic 4 input NOR gate, 1 input inverted.

library ieee;
use ieee.std_logic_1164.all;
  entity G_4NOR1 is
    Port
    (
      B : In std_logic;
      C : In std_logic;
      D : In std_logic;
      AN : In std_logic;
      YN : Out std_logic
    );
  end G_4NOR1;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_4NOR1 is
    begin
      YN <= not (not (AN) or B or C or D);
    end behavioral;

-- EOF
