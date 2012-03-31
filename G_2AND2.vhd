-- G_2AND2.vhd
-- Generic AND gate with 2 inputs, 2 inputs inverted.

library ieee;
use ieee.std_logic_1164.all;
entity G_2AND2 is
  port
  (
    AN : In std_logic;
    BN : In std_logic;
    Y : Out std_logic
  );
end G_2AND2;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_2AND2 is
begin
  Y <= not (AN) and not (BN);
end behavioral;

-- EOF
