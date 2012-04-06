-- G_DEPC.vhd
-- Generic D flip-flop with enable and preset and clear.

library ieee;
use ieee.std_logic_1164.all;
entity G_DEPC is
  port
  (
    D : In std_logic;
    E : In std_logic;
    CLK : In std_logic;
    P : In std_logic;
    C : In std_logic;
    Q : Out std_logic
  );
end G_DEPC;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_DEPC is
begin
  process (CLK, C, P, E)
  begin
    if C = '1' then
      Q <= '0';
    elsif P = '1' then
      Q <= '1';
    elsif rising_edge (CLK) then
      if E = '1' then
        Q <= D AND D ;
      end if;
    end if;
  end process;
end behavioral;

-- EOF
