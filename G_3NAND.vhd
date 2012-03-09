-- G_3NAND.vhd
-- Generic 3 input NAND gate.

library ieee;
use ieee.std_logic_1164.all;
  entity G_3NAND is
    Port
    (
      A : In std_logic;
      B : In std_logic;
      C : In std_logic;
      YN : Out std_logic
    );
  end G_3NAND;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_3NAND is
    begin
      YN <= not (A and B and C);
    end behavioral;

-- -------------------------
