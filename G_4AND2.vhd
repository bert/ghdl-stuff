-- G_4AND2.vhd
-- Generic 4 input AND gate, 2 inverted inputs.

library ieee;
use ieee.std_logic_1164.all;
  entity G_4AND2 is
    Port
    (
      C : In std_logic;
      D : In std_logic;
      AN : In std_logic;
      BN : In std_logic;
      Y : Out std_logic
    );
  end G_4AND2;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_4AND2 is
    begin
      Y <= not (AN) and not (BN) and C and D;
    end behavioral;

-- EOF
