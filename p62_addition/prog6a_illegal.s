/*Perform R0=R1+R2*/
.global _start
_start:
	mov r1, #257    @ Set value into R1
	mov r2, #0	@ Set value into R2
	ADDS r0, r1, r2 @ 257 + 1 creates an illegal instruction

	mov r7, #1	@ exit through syscall
	swi 0
	
