//Calculate Quotient and Remainder 

VALUE1 EQU 0X1FFFF000
		AREA TEST,CODE,READONLY
		EXPORT __main
__main
		LDR R0,=VALUE1
		LDRB R1,[R0]
		MOVS R4,R1
		ADDS R0,#1
		LDRB R2,[R0]
		MOVS R3,#0
		
L1	    	SUBS R1,R1,R2
		ADDS R3,#1
		CMP R1,#0 
		BGT L1
        
        		ADDS R0,#1
	    	STRB R3,[R0]
		MULS R3,R2,R3
		SUBS R4,R4,R3
		ADDS R0,#1
		STRB R4,[R0]

    		NOP
		END	
