-- G_OUTPUT.vhd
-- Generic output port.

library ieee;
use ieee.std_logic_1164.all;
  entity G_OUTPUT is
    Port
    (
      I : In std_logic;
      O : Out std_logic
    );
  end G_OUTPUT;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_OUTPUT is
    begin
      O <= (I);
    end behavioral;

-- EOF

