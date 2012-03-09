-- G_3AND3.vhd
-- Generic 3 input AND gate, 3 inputs inverted.

library ieee;
use ieee.std_logic_1164.all;
  entity G_3AND3 is
    Port
    (
      AN : In std_logic;
      BN : In std_logic;
      CN : In std_logic;
      Y : Out std_logic
    );
  end G_3AND3;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_3AND3 is
    begin
      Y <= not (AN) and not (BN) and not (CN);
    end behavioral;

-- EOF
