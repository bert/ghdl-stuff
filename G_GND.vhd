-- G_GND.vhd
-- Generic ground potential.

library ieee;
use ieee.std_logic_1164.all;
  entity G_GND is
    port
    (
      Y : Out std_logic
    );
  end;

  architecture behavioral of G_GND is
    begin
      Y <= '0';
    end behavioral;

-- EOF
