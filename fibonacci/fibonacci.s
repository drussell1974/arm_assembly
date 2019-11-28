@ Fibonacci sequence @

.global _start
_start:
	@mov r10, .word 48
	mov r11, .word #99 
	ldr r1, =fmt @ Point r1 to string
	bal _fib
_fib:
	@mov r10, #1 	@ ASCII '1'
	str r11, [r1]	@ Store '0' in string

	mov r0, #1 	@MONITOR
	mov r7, #4 	@WRITE
	mov r2, #2	@LEN
 	
	swi 0

	@cmp r10, r11	
	bal _fib
_exit:

	mov r7, #1
	swi 0

.data
fmt: .word 4
