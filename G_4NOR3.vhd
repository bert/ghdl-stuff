-- G_4NOR3.vhd
-- Generic 4 input NOR gate, 3 inputs inverted.

library ieee;
use ieee.std_logic_1164.all;
  entity G_4NOR3 is
    Port
    (
      D : In std_logic;
      AN : In std_logic;
      BN : In std_logic;
      CN : In std_logic;
      YN : Out std_logic
    );
  end G_4NOR3;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_4NOR3 is
    begin
      YN <= not (not (AN) or not (BN) or not (CN) or D);
    end behavioral;

-- EOF
