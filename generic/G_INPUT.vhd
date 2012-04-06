-- G_INPUT.vhd
-- Generic input port.

library ieee;
use ieee.std_logic_1164.all;
entity G_INPUT is
  port
  (
    I : In std_logic;
    O : Out std_logic
  );
end G_INPUT;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_INPUT is
begin
  O <= (I);
end behavioral;

-- EOF

