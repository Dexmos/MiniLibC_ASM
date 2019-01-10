        bits 64

	section	.text

	global 	my_write:function

my_write:
	push	rbp
	mov 	rbp, rsp

	mov 	rax, 1
	syscall

	leave
	ret