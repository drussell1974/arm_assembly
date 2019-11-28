.global _start
_start:
	mov r0, #100
	mov r1, #20
loop:
	cmp r0, r1
	beq stop
	blt less
	sub r0, r0, r1
	bl write
	bal loop
write:
	mov r7, #4
	mov r0, #1
	mov r2, #2
	ldr r1, =string
	swi 0
	mov pc, lr
less:
	sub r1, r1, r0
	bal loop
stop:
	mov r7, #1
	swi 0
.data
string: .asciz "%d\n"
