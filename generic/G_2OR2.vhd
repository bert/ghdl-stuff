-- G_2OR2.vhd
-- Generic 2 input OR gate, 2 inputs inverted.

library ieee;
use ieee.std_logic_1164.all;
entity G_2OR2 is
  port
  (
    AN : In std_logic;
    BN : In std_logic;
    Y : Out std_logic
  );
end G_2OR2;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_2OR2 is
begin
  Y <= not (AN) or not (BN);
end behavioral;

-- EOF
