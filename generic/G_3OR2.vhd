-- G_3OR2.vhd
-- Generic 3 input OR gate, 2 inverted inputs.

library ieee;
use ieee.std_logic_1164.all;
entity G_3OR2 is
  port
  (
    C : In std_logic;
    AN : In std_logic;
    BN : In std_logic;
    Y : Out std_logic
  );
end G_3OR2;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_3OR2 is
begin
  Y <= not (AN) or not (BN) or C;
end behavioral;

-- EOF
