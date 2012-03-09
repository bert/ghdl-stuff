-- G_3NAND2.vhd
-- Generic 3 input NAND gate, 2 inverted inputs.

library ieee;
use ieee.std_logic_1164.all;
  entity G_3NAND2 is
    Port
    (
      C : In std_logic;
      AN : In std_logic;
      BN : In std_logic;
      YN : Out std_logic
    );
  end G_3NAND2;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_3NAND2 is
    begin
      YN <= not (not (AN) and not (BN) and C);
    end behavioral;

-- EOF
