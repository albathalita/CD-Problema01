library ieee;
use ieee.std_logic_1164.all;

entity C1 is
    port (w,x,y,z: in  std_logic;
            A,B,C: out std_logic);
end C1;

architecture log of C1 is

begin
    A <= (not(w) and x) or (not(w) and y) or (not(w) and not(z)) or (w and not(x) and not(y));
    B <= (not(w) and z) or (not(w) and y) or (not(x) and not(y));
    C <= (not(w) and x) or (not(w) and y) or (not(w) and not(z)) or (w and not(x) and not(y));
end log;