        BITS 64

	SECTION .text

	GLOBAL my_write:function

my_write:
	PUSH RBP
	MOV RBP, RSP

	mov RAX, 1
	SYSCALL

	LEAVE
	RET
