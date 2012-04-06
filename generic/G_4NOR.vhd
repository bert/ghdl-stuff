-- G_4NOR.vhd
-- Generic 4 input NOR gate.
library ieee;
use ieee.std_logic_1164.all;
entity G_4NOR is
  port
  (
    A : In std_logic;
    B : In std_logic;
    C : In std_logic;
    D : In std_logic;
    YN : Out std_logic
  );
end G_4NOR;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_4NOR is
begin
  YN <= not (A or B or C or D);
end behavioral;

-- EOF
