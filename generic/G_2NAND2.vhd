-- G_2NAND2.vhd
-- Generic NAND gate with 2 inverted inputs.

library ieee;
use ieee.std_logic_1164.all;
entity G_2NAND2 is
  port
  (
    AN : In std_logic;
    BN : In std_logic;
    YN : Out std_logic
  );
end G_2NAND2;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_2NAND2 is
begin
  YN <= not (not (AN) and not (BN));
end behavioral;

-- EOF
