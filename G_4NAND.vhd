-- G_4NAND.vhd
-- Generic 4 input NAND gate.

library ieee;
use ieee.std_logic_1164.all;
  entity G_4NAND is
    Port
    (
      A : In std_logic;
      B : In std_logic;
      C : In std_logic;
      D : In std_logic;
      YN : Out std_logic
    );
  end G_4NAND;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_4NAND is
    begin
      YN <= not (A and B and C and D);
    end behavioral;

-- EOF
