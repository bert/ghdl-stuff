-- G_4AND4.vhd
-- Generic 4 input AND gate, 4 inverted inputs.

library ieee;
use ieee.std_logic_1164.all;
  entity G_4AND4 is
    Port
    (
      AN : In std_logic;
      BN : In std_logic;
      CN : In std_logic;
      DN : In std_logic;
      Y : Out std_logic
    );
  end G_4AND4;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_4AND4 is
    begin
      Y <= not (AN) and not (BN) and not (CN) and not (DN);
    end behavioral;

-- EOF
