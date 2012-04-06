-- G_4OR3.vhd
-- Generic 4 input OR gate, 3 inputs inverted.

library ieee;
use ieee.std_logic_1164.all;
entity G_4OR3 is
  port
  (
    D : In std_logic;
    AN : In std_logic;
    BN : In std_logic;
    CN : In std_logic;
    Y : Out std_logic
  );
end G_4OR3;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_4OR3 is
begin
  Y <= not (AN) or not (BN) or not (CN) or D;
end behavioral;

-- EOF
