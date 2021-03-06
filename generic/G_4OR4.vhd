-- G_4OR4.vhd
-- Generic 4 input OR gate, 4 inputs inverted.

library ieee;
use ieee.std_logic_1164.all;
entity G_4OR4 is
  port
  (
    AN : In std_logic;
    BN : In std_logic;
    CN : In std_logic;
    DN : In std_logic;
    Y : Out std_logic
  );
end G_4OR4;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_4OR4 is
begin
  Y <= not (AN) or not (BN) or not (CN) or not (DN);
end behavioral;

-- EOF
