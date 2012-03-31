-- G_2OR1.vhd
-- Generic 2 input OR gate, 1 input inverted.

library ieee;
use ieee.std_logic_1164.all;
entity G_2OR1 is
  port
  (
    B : In std_logic;
    AN : In std_logic;
    Y : Out std_logic
  );
end G_2OR1;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_2OR1 is
begin
  Y <= not (AN) or B;
end behavioral;

-- EOF
