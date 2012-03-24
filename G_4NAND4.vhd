-- G_4NAND4.vhd
-- Generic 4 input NAND gate, 4 inverted inputs.

library ieee;
use ieee.std_logic_1164.all;
  entity G_4NAND4 is
    Port
    (
      AN : In std_logic;
      BN : In std_logic;
      CN : In std_logic;
      DN : In std_logic;
      YN : Out std_logic
    );
  end G_4NAND4;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_4NAND4 is
    begin
      YN <= not (not (AN) and not (BN) and not (CN) and not (DN));
    end behavioral;

-- EOF
