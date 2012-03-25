-- G_4OR.vhd
-- Generic 4 input OR gate.

library ieee;
use ieee.std_logic_1164.all;
  entity G_4OR is
    Port
    (
      A : In std_logic;
      B : In std_logic;
      C : In std_logic;
      D : In std_logic;
      Y : Out std_logic
    );
  end G_4OR;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_4OR is
    begin
      Y <= A or B or C or D;
    end behavioral;

-- EOF
