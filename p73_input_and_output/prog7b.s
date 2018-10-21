/* How to use syscall 3 to read from the keyboard */
.global _start
_start:
_read:
	mov r7, #3	@ syscall number for keyboard input
	mov r0, #0	@ stdin is keyboard
	mov r2, #5	@ read first 5 characters
	ldr r1, =string	@ string placed at string:
	swi 0
_write:
	mov r7, #4	@ syscall number for write to screen
	mov r0, #1	@ stdout is monitor
	mov r2, #19	@ string is 19 chars long
	ldr r1, =string	@ string located at string:
	swi 0
_exit:
	mov r7, #1
	swi 0
.data
string:.ascii "Hello World String\n"
