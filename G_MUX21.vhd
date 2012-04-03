-- G_MUX21.vhd
-- Generic 2 to 1 multiplexer.

library ieee;
use ieee.std_logic_1164.all;
entity G_MUX21 is
  port
  (
    A : In std_logic;
    B : In std_logic;
    S : In std_logic;
    Y : Out std_logic
  );
end G_MUX21;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_MUX21 is
begin
  Y <= (A and (not S)) or (B and S) ; 
end behavioral;


-- EOF
