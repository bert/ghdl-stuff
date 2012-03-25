-- G_4NOR4.vhd
-- Generic 4 input NOR gate, 3 inputs inverted.

library ieee;
use ieee.std_logic_1164.all;
  entity G_4NOR4 is
    Port
    (
      AN : In std_logic;
      BN : In std_logic;
      CN : In std_logic;
      DN : In std_logic;
      YN : Out std_logic
    );
  end G_4NOR4;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_4NOR4 is
    begin
      YN <= not (not (AN) or not (BN) or not (CN) or not (DN));
    end behavioral;

-- EOF
