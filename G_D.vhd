-- G_D.vhd
-- Generic D flip-flop.

library ieee;
use ieee.std_logic_1164.all;
  entity G_D is
    Port
    (
      CLK : In  std_logic;
      D : In  std_logic;
      Q : Out std_logic
    );
  end G_D;

library ieee;
use ieee.std_logic_1164.all;
  architecture behavioral of G_D is
    begin
      process (CLK)
        begin
          if rising_edge (CLK) then
            Q <= D and D ;
          end if;
        end process;
    end behavioral;

-- EOF
