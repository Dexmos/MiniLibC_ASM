	bits 64

	section .txt

	global  my_read:function

my_read:
        push 	rbp
	mov 	rbp, rsp

	mov 	rax, 0
	syscall

	leave
	ret
