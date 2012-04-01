-- G_3NOR.vhd
-- Generic 3 input NOR gate.

library ieee;
use ieee.std_logic_1164.all;
entity G_3NOR is
  port
  (
    A : In std_logic;
    B : In std_logic;
    C : In std_logic;
    YN : Out std_logic
  );
end G_3NOR;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_3NOR is
begin
  YN <= not (A or B or C);
end behavioral;

-- EOF
