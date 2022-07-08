library ieee;
use ieee.std_logic_1164.all; -- We added std_logic_1164 package to use std_logic and std_logic_vector

entity kayan_isik is -- output value cikti will change its value when clk at rising edge

generic (bit_sayisi : integer :=16); --bit_sayisi will correspond to 16

Port (

clk : in std_logic; 
cikti : out std_logic_vector(bit_sayisi-1 downto 0)

 );
end kayan_isik;

architecture Behavioral of kayan_isik is

signal mevcut_durum : std_logic_vector(bit_sayisi-1 downto 0):="0000000000000001";
-- mevcut_durum initialized as "0000000000000001"

begin

process(clk) begin -- process will work depend on changing of clk

if (rising_edge(clk)) then
 
     mevcut_durum<=mevcut_durum(14 downto 0)& mevcut_durum(15); 
     --Most Significant Bit will transfer to Least Significant Bit

 end if;
 
end process;

     cikti<=mevcut_durum; -- Result of signal(mevcut_durum) will assign to output value

end Behavioral;