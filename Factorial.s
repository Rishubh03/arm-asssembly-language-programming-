// calculate 5*4*3*2*1

VALUE EQU 0X1FFFF000                

                AREA FACTORIAL,CODE,READONLY
		        EXPORT __main
__main

                LDR R6,=VALUE
                MOVS R0,#7
                MOVS R4, #1
                BEQ L1
L2              MULS R4,R0,R4
                SUBS R0,#1
	              CMP R0, #1
                STR R4,[R6]
                BNE L2

L1              NOP
                END
