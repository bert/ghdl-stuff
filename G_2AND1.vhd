-- G_2AND1.vhd
-- Generic 2 input AND gate, 1 input inverted.

library ieee;
use ieee.std_logic_1164.all;
  entity G_2AND1 is
    Port
    (
      B : In std_logic;
      AN : In std_logic;
      Y : Out std_logic
    );
  end G_2AND1;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_2AND1 is
    begin
      Y <= not (AN) and B;
    end behavioral;

-- EOF
