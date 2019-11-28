.global _start
_start: 
	MOV R0, #0xFFFFFFFF 	@32bit or a word
	
	MOV R7, #1		@exit through syscall
