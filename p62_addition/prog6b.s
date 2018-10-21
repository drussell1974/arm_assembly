/* Add two 64bit numbers */
.global _start
_start:
	mov r2, #0xFFFFFFFF
	mov r3, #0x1
	mov r4, #0xFFFFFFFF
	mov r5, #0xFF
	adds r0, r2, r4
	adcs r1, r3, r5

	mov r7, #1
	swi 0
