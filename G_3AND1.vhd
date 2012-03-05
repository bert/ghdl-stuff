-- G_3AND1.vhd
-- Generic 3 input AND gate, 1 input inverted.

library ieee;
use ieee.std_logic_1164.all;
  entity G_3AND1 is
    Port
    (
      B : In std_logic;
      C : In std_logic;
      AN : In std_logic;
      Y : Out std_logic
    );
  end G_3AND1;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_3AND1 is
    begin
      Y <= not (AN) and B and C;
    end behavioral;

-- EOF
