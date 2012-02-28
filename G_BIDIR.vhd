-- G_BIDIR.vhd
-- Generic bidirectional port.

library ieee;
use ieee.std_logic_1164.all;
  entity G_BIDIR is
    Port
    (
      A0 : In std_logic;
      OE : In std_logic;
      XB0 : InOut std_logic;
      Z0 : Out std_logic
    );
  end G_BIDIR;


library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_BIDIR is
    begin
      XB0 <= A0 when OE='1' else 'Z';
      Z0 <= XB0;
    end behavioral;

-- EOF

