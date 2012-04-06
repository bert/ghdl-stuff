-- G_CLKBUF.vhd
-- Generic clock buffer.

library ieee;
use ieee.std_logic_1164.all;
entity G_CLKBUF is
  port
  (
    I : In std_logic;
    O : Out std_logic
  );
end G_CLKBUF;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_CLKBUF is
begin
  O <= (I);
end behavioral;

-- EOF

