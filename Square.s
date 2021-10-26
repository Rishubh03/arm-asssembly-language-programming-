// calculate x*x
VALUE EQU 0X1FFFF000

		AREA TEST,CODE,READONLY
		EXPORT __main
__main
		LDR R0,=VALUE
		LDRB R1,[R0]
		MULS R1,R1,R1
    	              NOP
		END	
