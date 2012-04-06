-- G_2NOR2.vhd
-- Generic 2 input NOR gate, 2 inverted inputs.

library ieee;
use ieee.std_logic_1164.all;
entity G_2NOR2 is
  port
  (
    AN : In std_logic;
    BN : In std_logic;
    YN : Out std_logic
  );
end G_2NOR2;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_2NOR2 is
begin
  YN <= not (not (AN) or not (BN));
end behavioral;

-- EOF
