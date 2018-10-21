/**** Convert number to binary for printing ***/
.global _start
_start:
	mov r6, #251
	mov r10, #1
	mov r9, r10, LSL #31    
	ldr r1, =string

_bits:
	tst r6,r9 
	beq _print0
	mov r8, r6
	mov r0, #49		@ ASCII '1'
	str r0, [r1]
	bl _write
	mov r6, r8
	bal _noprint1

_print0:
	mov r8, r6
	mov r0, #48		@ ASCII '0'
	str r0, [r1]

_noprint1:
	movs r9, r9, LSR #1
	bne _bits

_exit:
	mov r7, #1
	swi 0

_write: 
	/* Write to screen then mov r14 into r15 */
	mov r0, #1
	mov r2, #1
	mov r7, #4
	swi 0
	MOV PC, LR

.data
string:
	.ascii " "

