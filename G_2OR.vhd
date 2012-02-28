-- G_2OR.vhd
-- Generic 2 input OR gate.

library ieee;
use ieee.std_logic_1164.all;
  entity G_2OR is
    Port
    (
      A : In std_logic;
      B : In std_logic;
      Y : Out std_logic
    );
  end G_2OR;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_2OR is
    begin
      Y <= A or B;
    end behavioral;

-- EOF
