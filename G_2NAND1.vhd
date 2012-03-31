-- G_2NAND1.vhd
-- Generic 2 input NAND gate, 1 input inverted.

library ieee;
use ieee.std_logic_1164.all;
entity G_2NAND1 is
  port
  (
    B : In std_logic;
    AN : In std_logic;
    YN : Out std_logic
  );
end G_2NAND1;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_2NAND1 is
begin
  YN <= not (not (AN) and B);
end behavioral;

-- EOF
