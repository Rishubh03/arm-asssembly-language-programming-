//Sort the numbers in ascending order.
value EQU 0X1FFFF000 
                                     AREA SORTING, CODE, READONLY 
                                     EXPORT __main 
__main 
                                   MOVS R1,#0X09 ; main counter 
L3                                 LDR R3, =value; Memory Pointer 
                                   MOV R0,R1 
L2                                 LDRB R4,[R3] 
                                   LDRB R5,[R3,#1] 
                                   CMP R4,R5 
                                   BMI L1 
                                   STRB R5,[R3] 
                                   STRB R4,[R3,#1] 
L1                                 ADDS R3,R3,#1 
                                   SUBS R0,R0,#1 
                                   BNE L2 
                                   SUBS R1,R1,#1 
                                   BNE L3 
		                               END
