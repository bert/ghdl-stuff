-- G_3OR.vhd
-- Generic 3 input OR gate.

library ieee;
use ieee.std_logic_1164.all;
entity G_3OR is
  port
  (
    A : In std_logic;
    B : In std_logic;
    C : In std_logic;
    Y : Out std_logic
  );
end G_3OR;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_3OR is
begin
  Y <= A or B or C;
end behavioral;

-- EOF
