-- G_MUX81.vhd
-- Generic 8 to 1 multiplexer.

library ieee;
use ieee.std_logic_1164.all;
entity G_MUX81 is
  Port
  (
    A : In std_logic;
    B : In std_logic;
    C : In std_logic;
    D : In std_logic;
    E : In std_logic;
    F : In std_logic;
    G : In std_logic;
    H : In std_logic;
    S0 : In std_logic;
    S1 : In std_logic;
    S2 : In std_logic;
    Y : Out std_logic
  );
end G_MUX81;

library ieee;
use ieee.std_logic_1164.all;
architecture behavioral of G_MUX81 is
begin
  P1: process (A,B,C,D,E,F,G,H,S2, S1, S0)
  begin
    if S2 = '0' then
      if S1 = '0' then   
        if S0 = '0' then   
          Y <= A;
        elsif S0 = '1' then 
          Y <= B;
        end if;
      elsif S1 = '1' then
        if S0 = '0' then   
          Y <= C;
        elsif S0 = '1' then 
          Y <= D;
        end if;
      end if;
    elsif S2 = '1' then
      if S1 = '0' then   
        if S0 = '0' then   
          Y <= E;
        elsif S0 = '1' then 
          Y <= F;
        end if;
      elsif S1 = '1' then
        if S0 = '0' then   
          Y <= G;
        elsif S0 = '1' then 
          Y <= H;
        end if;
      end if;
    end if;
  end process P1;
end behavioral;

-- EOF
