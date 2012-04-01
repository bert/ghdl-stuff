-- G_3NAND3.vhd
-- Generic 3 input NAND gate, 3 inputs inverted.

library ieee;
use ieee.std_logic_1164.all;
entity G_3NAND3 is
  port
  (
    AN : In std_logic;
    BN : In std_logic;
    CN : In std_logic;
    YN : Out std_logic
  );
end G_3NAND3;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_3NAND3 is
begin
  YN <= not (not (AN) and not (BN) and not (CN));
end behavioral;

-- EOF
