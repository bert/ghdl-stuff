-- G_4NAND3.vhd
-- Generic 4 input NAND gate, 3 inverted inputs.

library ieee;
use ieee.std_logic_1164.all;
  entity G_4NAND3 is
    Port
    (
      D : In std_logic;
      AN : In std_logic;
      BN : In std_logic;
      CN : In std_logic;
      YN : Out std_logic
    );
  end G_4NAND3;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_4NAND3 is
    begin
      YN <= not (not (AN) and not (BN) and not (CN) and D);
    end behavioral;

-- EOF
