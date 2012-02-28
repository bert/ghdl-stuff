-- G_2AND.vhd
-- Generic 2 input AND gate.

library ieee;
use ieee.std_logic_1164.all;
  entity G_2AND is
    Port
    (
      A : In std_logic;
      B : In std_logic;
      Y : Out std_logic
    );
  end G_2AND;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_2AND is
    begin
      Y <= A and B;
    end behavioral;

-- EOF

