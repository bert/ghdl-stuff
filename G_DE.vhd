-- G_DE.vhd
-- Generic D flip-flop with scan.

library ieee;
use ieee.std_logic_1164.all;
entity G_DE is
  port
  (
    D : In std_logic;
    E : In std_logic;
    CLK : In std_logic;
    Q : Out std_logic
  );
end G_DE;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_DE is
begin
  process (CLK, E)
  begin
    if rising_edge (CLK) then
      if E = '1' then
        Q <= D and D ;
      end if;
    end if;
  end process;
end behavioral;

-- EOF
