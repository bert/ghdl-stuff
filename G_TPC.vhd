-- G_TPC.vhd
-- Generic T flip-flop with preset and clear.

library ieee;
use ieee.std_logic_1164.all;
entity G_TPC is
  port
  (
    T : In std_logic;
    CLK : In std_logic;
    P : In std_logic;
    C : In std_logic;
    Q : Out std_logic
  );
end G_TPC;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_TPC is
begin
  process (CLK, C, P)
  variable Q_local : std_logic;
  begin
    if C = '1' then
      Q_local := '0';
    elsif P = '1' then
      Q_local := '1';
    elsif rising_edge (CLK) then
      if T = '1' then
        Q_local := not Q_local ;
      end if;
    end if;
    Q <= Q_local;
  end process;
end behavioral;

-- EOF
