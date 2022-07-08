library IEEE;
use IEEE.STD_LOGIC_1164.ALL; -- We added std_logic_1164 package to use std_logic and std_logic_vector


entity tb_kayan_isik is
generic (bit_sayisi : integer :=16);--generic specifies at entity in testbench
end tb_kayan_isik;

architecture Behavioral of tb_kayan_isik is

component kayan_isik is -- We represent design source to simulation source
Port (

clk : in std_logic;
cikti : out std_logic_vector(bit_sayisi-1 downto 0)

 );
end component;

signal clk :  std_logic;-- We created signals same name with input and output
signal cikti :  std_logic_vector(bit_sayisi-1 downto 0);

constant clock_period : time:=10ns;-- clock will complete one period in 10ns

begin

clk_process:process begin

clk<='1';
wait for clock_period/2;

clk<='0';
wait for clock_period/2;


end process;


uut: kayan_isik port map(

 clk      => clk   ,        
 cikti    => cikti 

);


end Behavioral;