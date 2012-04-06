-- G_4AND3.vhd
-- Generic 4 input AND gate, 3 inverted inputs.

library ieee;
use ieee.std_logic_1164.all;
entity G_4AND3 is
  port
  (
    D : In std_logic;
    AN : In std_logic;
    BN : In std_logic;
    CN : In std_logic;
    Y : Out std_logic
  );
end G_4AND3;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_4AND3 is
begin
  Y <= not (AN) and not (BN) and not (CN) and D;
end behavioral;

-- EOF
