-- G_XNOR.vhd
-- Generic Exclusive NOR gate.

library ieee;
use ieee.std_logic_1164.all;
entity G_XNOR is
  port
  (
    A : In std_logic;
    B : In std_logic;
    YN : Out std_logic
  );
end G_XNOR;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_XNOR is
begin
  YN <= not (A xor B);
end behavioral;

-- EOF
