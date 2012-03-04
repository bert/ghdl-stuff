-- G_3AND.vhd
-- Generic 3 input AND gate.

library ieee;
use ieee.std_logic_1164.all;
  entity G_3AND is
    Port
    (
      A : In std_logic;
      B : In std_logic;
      C : In std_logic;
      Y : Out std_logic
    );
  end G_3AND;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_3AND is
    begin
      Y <= A and B and C;
    end behavioral;

-- EOF
