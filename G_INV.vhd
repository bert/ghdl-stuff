-- G_INV.vhd
-- Generic inverter.

library ieee;
use ieee.std_logic_1164.all;
  entity G_INV is
    Port
    (
      A : In std_logic;
      YN : Out std_logic
    );
  end G_INV;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_INV is
    begin
      YN <= not (A);
    end behavioral;

-- EOF

