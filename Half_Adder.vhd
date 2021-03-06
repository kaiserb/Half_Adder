
LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL;



-- DEFINE XOR GATE ENTITY FOR THE HALF ADDER
Entity XOR_GATE is

PORT (
		A, B : IN BIT; C : OUT BIT);
		
END XOR_GATE;

ARCHITECTURE XOR_FUNC OF XOR_GATE IS 
BEGIN

	C <= A XOR B;
END XOR_FUNC;




--DEFINE THE AND GATE FOR THE HALF ADDER
Entity AND_GATE is

PORT (
		A, B : IN BIT; C : OUT BIT);
		
END AND_GATE;

ARCHITECTURE AND_FUNC OF AND_GATE IS 
BEGIN

	C <= A AND B;
	
END AND_FUNC;


ENTITY Half_Adder is 

PORT 
	( A : IN BIT;
     B: IN BIT;
	  Sum : OUT BIT;
	  Carry : OUT BIT);
	  
END Half_Adder;

ARCHITECTURE Half_Adder_Structure of Half_Adder is

component XOR_GATE IS --INPORT XOR GATE DEFINED EARLIER

	PORT ( A, B : IN BIT; 
			C : OUT BIT);
END COMPONENT;

component AND_GATE IS --INPORT AND GATE DEFINED EARLIER

	PORT ( A, B : IN BIT; 
			C : OUT BIT);
END COMPONENT;

BEGIN


	Q1 : XOR_GATE PORT MAP (A,B, SUM);
	Q2 : AND_GATE PORT MAP (A,B, CARRY);
	
END Half_Adder_Structure;




	







