----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/01/2022 08:45:05 PM
-- Design Name: 
-- Module Name: test_and2gate - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_and2gate is
--  Port ( );
end test_and2gate;

ARCHITECTURE behavioral OF test_and2gate IS
 COMPONENT and2gate
 PORT(
 in1 : IN std_logic;
 in2 : IN std_logic;
 outAnd : OUT std_logic);
 END COMPONENT;
 signal inputs : std_logic_vector(1 downto 0) := "00";
 signal outAnd : std_logic;
 
BEGIN
 -- Instantiate the Unit Under Test (UUT)
 uut: and2gate PORT MAP (
 in1 => inputs(0),
 in2 => inputs(1),
 outAnd => outAnd);
 
 input_gen : process
 begin
 inputs <= "00";
 --this loop will output the truth table for an AND gate
 for I in 1 to 4 loop
 wait for 10ps;
 inputs <= inputs + '1';
 end loop;
 wait;
 end process;
 
END;

