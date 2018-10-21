/*Perform R0=R1+R2*/
.global _start
_start:
	mov r1, #256
	mov r2, #1
	ADDS r0, r1, r2 @ 257 + 1 creates an illegal instruction

	mov r7, #1
	swi 0
	
