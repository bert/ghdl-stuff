-- G_3OR3.vhd
-- Generic 3 input OR gate, 3 inverted inputs.

library ieee;
use ieee.std_logic_1164.all;
  entity G_3OR3 is
    Port
    (
      AN : In std_logic;
      BN : In std_logic;
      CN : In std_logic;
      Y : Out std_logic
    );
  end G_3OR3;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_3OR3 is
    begin
      Y <= not (AN) or not (BN) or not (CN);
    end behavioral;

-- EOF
