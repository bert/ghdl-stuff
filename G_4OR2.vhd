-- G_4OR2.vhd
-- Generic 4 input OR gate, 2 inputs inverted.

library ieee;
use ieee.std_logic_1164.all;
entity G_4OR2 is
  port
  (
    C : In std_logic;
    D : In std_logic;
    AN : In std_logic;
    BN : In std_logic;
    Y : Out std_logic
  );
end G_4OR2;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_4OR2 is
begin
  Y <= not (AN) or not (BN) or C or D;
end behavioral;

-- EOF
