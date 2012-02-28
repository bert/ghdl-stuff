-- G_BUF.vhd
-- Generic buffer port.

library ieee;
use ieee.std_logic_1164.all;
  entity G_BUF is
    Port
    (
      A : In std_logic;
      Y : Out std_logic
    );
  end G_BUF;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_BUF is
    begin
      Y <= A;
    end behavioral;

-- EOF

