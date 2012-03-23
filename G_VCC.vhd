-- G_VCC.vhd
-- Generic Vcc source.

library ieee;
use ieee.std_logic_1164.all;
  entity G_VCC is
    port
    (
      Y : Out std_logic
    );
  end;

  architecture behavioral of G_VCC is
    begin
      Y <= '1';
    end behavioral;

-- EOF
