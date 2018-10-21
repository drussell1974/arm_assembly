.global _start
_start:
	mov r5, #1
loop:
	bal write
	add r5, r5, #1
	cmp r5, #50
	ble loop
write:
	mov r7, #4
	mov r0, #0
	mov r2, #10
	ldr r1, =string
	swi 0
exit:
	mov r7, #1
	SWI 0
.data
string: .ascii "Hello, world"
