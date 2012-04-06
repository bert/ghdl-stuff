-- G_4NOR2.vhd
-- Generic 4 input NOR gate, 2 inputs inverted.

library ieee;
use ieee.std_logic_1164.all;
entity G_4NOR2 is
  port
  (
    C : In std_logic;
    D : In std_logic;
    AN : In std_logic;
    BN : In std_logic;
    YN : Out std_logic
  );
end G_4NOR2;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_4NOR2 is
begin
  YN <= not (not (AN) or not (BN) or C or D);
end behavioral;

-- EOF
