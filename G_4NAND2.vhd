-- G_4NAND2.vhd
-- Generic 4 input NAND gate, 2 inverted inputs.

library ieee;
use ieee.std_logic_1164.all;
  entity G_4NAND2 is
    Port
    (
      C : In std_logic;
      D : In std_logic;
      AN : In std_logic;
      BN : In std_logic;
      YN : Out std_logic
    );
  end G_4NAND2;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_4NAND2 is
    begin
      YN <= not (not (AN) and not (BN) and C and D);
    end behavioral;

-- EOF
