-- G_3AND2.vhd
-- Generic 3 input AND gate, 2 inputs inverted.

library ieee;
use ieee.std_logic_1164.all;
  entity G_3AND2 is
    Port
    (
      C : In std_logic;
      AN : In std_logic;
      BN : In std_logic;
      Y : Out std_logic
    );
  end G_3AND2;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_3AND2 is
    begin
      Y <= not (AN) and not (BN) and C;
    end behavioral;

-- EOF
