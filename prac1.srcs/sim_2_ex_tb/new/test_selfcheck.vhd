library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity test_selfcheck is
--  Port ( );
end test_selfcheck;

ARCHITECTURE behavioral OF test_selfcheck IS

 

component and2or IS
PORT(
		in1,in2,in3,in4 : IN std_logic;       
		outandor, outandor_flow, outandor_beh : OUT std_logic
		);
END component ;
 
 signal inputs : std_logic_vector(3 downto 0) := "0000";
 signal outandor, outandor_flow, outandor_beh: std_logic;

 
BEGIN
 -- Instantiate the Unit Under Test (UUT)
 uut: and2or PORT MAP (
 in1 => inputs(0),
 in2 => inputs(1),
 in3 => inputs(2),
 in4 => inputs(3),
 outandor => outandor,
 outandor_flow => outandor_flow,
 outandor_beh => outandor_beh
 );
 
 input_gen : process
 begin

 inputs <= "0000";
 --this loop will output the truth table for an AND gate
 for I in 1 to 16 loop
 wait for 10ps;

 
 if (inputs = "0000") then
    assert (outandor = '0' and outandor_flow = '0' and outandor_beh = '0') report "test for input = 0000 failed, wrong output!";
 elsif (inputs = "0001") then
    assert (outandor = '0' and outandor_flow = '0' and outandor_beh = '0') report "test for input = 0010 failed, wrong output!";
 elsif (inputs = "0010") then
    assert (outandor = '0' and outandor_flow = '0' and outandor_beh = '0') report "test for input = 0011 failed, wrong output!";
 elsif (inputs = "0011") then
    assert (outandor = '1' and outandor_flow = '1' and outandor_beh = '1') report "test for input = 0100 failed, wrong output!";
 elsif (inputs = "0100") then
    assert (outandor = '0' and outandor_flow = '0' and outandor_beh = '0') report "test for input = 0101 failed, wrong output!";
 elsif (inputs = "0101") then
    assert (outandor = '0' and outandor_flow = '0' and outandor_beh = '0') report "test for input = 0110 failed, wrong output!";
 elsif (inputs = "0110") then
    assert (outandor = '0' and outandor_flow = '0' and outandor_beh = '0') report "test for input = 0111 failed, wrong output!";
 elsif (inputs = "0111") then
    assert (outandor = '1' and outandor_flow = '1' and outandor_beh = '1') report "test for input = 1000 failed, wrong output!";
 elsif (inputs = "1000") then
    assert (outandor = '0' and outandor_flow = '0' and outandor_beh = '0') report "test for input = 1001 failed, wrong output!";
 elsif (inputs = "1001") then
    assert (outandor = '0' and outandor_flow = '0' and outandor_beh = '0') report "test for input = 1010 failed, wrong output!";
 elsif (inputs = "1010") then
    assert (outandor = '0' and outandor_flow = '0' and outandor_beh = '0') report "test for input = 1011 failed, wrong output!";
 elsif (inputs = "1011") then
    assert (outandor = '1' and outandor_flow = '1' and outandor_beh = '1') report "test for input = 1100 failed, wrong output!";
 elsif (inputs = "1100") then
    assert (outandor = '1' and outandor_flow = '1' and outandor_beh = '1') report "test for input = 1101 failed, wrong output!";
 elsif (inputs = "1101") then
    assert (outandor = '1' and outandor_flow = '1' and outandor_beh = '1') report "test for input = 1110 failed, wrong output!";
 elsif (inputs = "1110") then
    assert (outandor = '1' and outandor_flow = '1' and outandor_beh = '1') report "test for input = 1111 failed, wrong output!";
 elsif (inputs = "1111") then
    assert (outandor = '1' and outandor_flow = '1' and outandor_beh = '1') report "test for input = 0000 failed, wrong output!";
 end if;    
    
 inputs <= inputs + '1';
 end loop;
 wait;
 end process;
 
END;

