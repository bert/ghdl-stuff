-- G_TRI.vhd
-- Generic tri-state buffer port.

library ieee;
use ieee.std_logic_1164.all;
entity G_TRI is
  port
  (
    A0 : In std_logic;
    OE : In std_logic;
    XB0 : Out std_logic
  );
end G_TRI;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_TRI is
begin
  XB0 <= A0 when OE='1' else 'Z';
end behavioral;

-- EOF

