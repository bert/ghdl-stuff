-- G_3NAND1.vhd
-- Generic 3 input NAND gate, 1 inverted input.

library ieee;
use ieee.std_logic_1164.all;
entity G_3NAND1 is
  port
  (
    B : In std_logic;
    C : In std_logic;
    AN : In std_logic;
    YN : Out std_logic
  );
end G_3NAND1;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_3NAND1 is
begin
  YN <= not (not (AN) and B and C);
end behavioral;

-- EOF
