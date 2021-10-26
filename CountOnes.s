//Write an Assembly Language Program to Find No of 1’s present in a 32 bit number.

VALUE1 EQU 0X1FFFF000
VALUE2 EQU 0X1FFFF01B
		AREA TEST,CODE,READONLY
		EXPORT __main
__main
		
		LDR R0,=VALUE1
		LDR R1,=VALUE2
		MOVS R2,#0
		MOVS R5,#0
		
L1	    LDRB R3,[R0]
L2		MOVS R4,#1
		TST R4,R3
		BNE L3
		ASRS R3,R3,#1
		BNE L2
		ADDS R0,#1
		ADDS R5,#1
		CMP R5,#4
		BLT L1
		B L4
		
L3		ADDS R2,#1
		ASRS R3,R3,#1
		BNE L2		
		ADDS R0,#1
		ADDS R5,#1
		CMP R5,#4
		BLT L1
		B L4
	
L4   	STRB R2,[R1]
		NOP
		END		

	
