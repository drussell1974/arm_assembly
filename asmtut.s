.global _start
_start:
	adr r3, numbers
	ldmia r3, {r5-r8}
	mov r0, r6
end:
	mov r7, #1
	swi 0
.align 2
numbers:
	.word 1, 2, 3, 4
