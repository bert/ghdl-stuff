-- G_XOR.vhd
-- Generic exclusive OR gate.

library ieee;
use ieee.std_logic_1164.all;
entity G_XOR is
  port
  (
    A : In std_logic;
    B : In std_logic;
    Y : Out std_logic
  );
end G_XOR;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_XOR is
begin
  Y <= A xor B;
end behavioral;

-- EOF
