-- G_DC.vhd
-- Generic D flip-flop with clear.

library ieee;
use ieee.std_logic_1164.all;
entity G_DC is
  port
  (
    D : In std_logic;
    CLK : In std_logic;
    C : In std_logic;
    Q : Out std_logic
  );
end G_DC;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_DC is
begin
  process (CLK, C)
  begin
    if C = '1' then
      Q <= '0';
    elsif rising_edge (CLK) then
      Q <= D and D ;
    end if;
  end process;
end behavioral;

-- EOF
