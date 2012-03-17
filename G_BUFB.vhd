-- G_BUFB.vhd
-- Generic buffer, inverted input.

library ieee;
use ieee.std_logic_1164.all;
  entity G_BUFB is
    Port
    (
      AN : In std_logic;
      Y : Out std_logic
    );
  end G_BUFB;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_BUFB is
    begin
      Y <= not (AN);
    end behavioral;

-- EOF
