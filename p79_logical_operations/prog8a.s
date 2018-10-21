/* Using ORR to toggle a character case */
.global _start
_start:
_read:
	mov r7, #3	@ syscall
	mov r0, #0	@ stdin is keyboard
	mov r2, #1	@ read one character only
	ldr r1, =string	@ string at label string:
	swi 0
_togglecase:
	ldr r1, =string	@ address of char
	ldr r0, [r1]	@ load it into r0
	orr r0, r0, #0x20	@ change case
	str r0, [r1]	@ write one char back
_write:
	mov r7, #4	@ syscall
	mov r0, #1	@ stdout is monitor
	mov r2, #1	@ string is 1 char long
	ldr r1, =string	@ string at string:
	swi 0
_exit:
	@ syscall
	mov r7, #1
	swi 0

.data
string: .ascii " "
