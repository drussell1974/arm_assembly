/* How to use Syscall 4 to write a string */
.global _start
_start:
	mov r7, #4	@ Syscall number
	mov r0, #1	@ Stdout is monitor
	mov r2, #19	@ String is 19 characters long
	ldr r1, =string	@ string is located at string label
	swi 0
_exit:
	mov r7, #1
	swi 0		@ exit call

.data
string:
.ascii "Hello World string\n"
