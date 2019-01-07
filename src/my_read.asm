        BITS    64

	SECTION .txt

	global  my_read:function

my_read:
        PUSH RBP
	mov RBP, RSP

	mov rax, 0
	SYSCALL
	
	LEAVE
	ret
