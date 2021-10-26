//Find the smallest number.

VALUE EQU 0X1FFFF000

		AREA TEST,CODE,READONLY
		EXPORT __main
__main
		
		LDR R0,=VALUE
		MOVS R1,#0
		MOVS R2,#100
		
L1		LDRB R3,[R0]
		CMP R3,R2
		BLT L2
		
		ADDS R0,#1
		ADDS R1,#1
		CMP R1,#9
		BLE L1
		B L3
		
L2      MOVS R2,R3
		ADDS R0,#1
		ADDS R1,#1
		CMP R1,#9
		BLE L1
	
L3		NOP
		END		
