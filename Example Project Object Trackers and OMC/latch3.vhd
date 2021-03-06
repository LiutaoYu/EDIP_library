library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--library UNISIM;
--use UNISIM.VComponents.all;

entity latch3 is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           DATA_IN : in  STD_LOGIC_VECTOR (2 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR (2 downto 0));
end latch3;

architecture Behavioral of latch3 is
signal int_data: STD_LOGIC_VECTOR (2 downto 0);
begin

data_out<=int_data;

process(clk,rst)
begin
	if(rst='1') then
			int_data<=(others=>'0');
	elsif(clk='1' and clk'event) then
			int_data<=data_in;
	end if;
end process;


end Behavioral;
