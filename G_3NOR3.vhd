-- G_3NOR3.vhd
-- Generic 3 input NOR gate, 3 inverted inputs.

library ieee;
use ieee.std_logic_1164.all;
  entity G_3NOR3 is
    Port
    (
      AN : In std_logic;
      BN : In std_logic;
      CN : In std_logic;
      YN : Out std_logic
    );
  end G_3NOR3;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_3NOR3 is
    begin
     YN <= not (not (AN) or not (BN) or not (CN));
    end behavioral;

-- EOF
