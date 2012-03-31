-- G_2NAND.vhd
-- Generic 2 input NAND gate.

library ieee;
use ieee.std_logic_1164.all;
entity G_2NAND is
  port
  (
    A : In std_logic;
    B : In std_logic;
    YN : Out std_logic
  );
end G_2NAND;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_2NAND is
begin
  YN <= not (A and B);
end behavioral;

-- EOF
