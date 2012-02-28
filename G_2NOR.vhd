-- G_2NOR.vhd
-- Generic 2 input NOR gate.

library ieee;
use ieee.std_logic_1164.all;
  entity G_2NOR is
    Port
    (
      A : In std_logic;
      B : In std_logic;
      YN : Out std_logic
    );
  end G_2NOR;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_2NOR is
    begin
      YN <= not (A or B);
    end behavioral;

-- EOF
