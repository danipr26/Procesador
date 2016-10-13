library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NPC is
    Port ( Registre_NPC : in  STD_LOGIC_VECTOR (31 downto 0);
           Reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Registreout_NPC : out  STD_LOGIC_VECTOR (31 downto 0));
end NPC;

architecture ArqNPC of NPC is

begin
	process(clk,Registre_NPC,Reset)
		begin	
			if(Reset= '0')then
				Registreout_NPC <= (others =>'0');
			else
				if(rising_edge(clk)) then
					Registreout_NPC <= Registre_NPC; 
				end if;
			end if;
		end process;
				
end ArqNPC;

