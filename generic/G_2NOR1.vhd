-- G_2NOR1.vhd
-- Generic 2 input NOR gate, 1 inverted input.

library ieee;
use ieee.std_logic_1164.all;
entity G_2NOR1 is
  port
  (
    B : In std_logic;
    AN : In std_logic;
    YN : Out std_logic
  );
end G_2NOR1;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_2NOR1 is
begin
  YN <= not (not (AN) or B);
end behavioral;

-- EOF
