// Calculate a + b 

VALUE1 EQU 0X1FFFF000
VALUE2 EQU 0X1FFFF001
		AREA Addition, CODE, READONLY
		EXPORT __main
__main
		LDR R0,=VALUE1
		LDR R1,=VALUE2
		LDRB R2,[R0]
		LDRB R3,[R1]
		ADDS R4,R2,R3
		ADDS R1,#1
		STRB R4,[R1]
		END
