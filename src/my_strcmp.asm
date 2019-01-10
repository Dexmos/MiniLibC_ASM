    bits 64

	section .text

	global my_strcmp:function

my_strcmp:
	push 	rbp
	mov 	rbp, rsp

	xor   	rcx, rcx
	jmp		strcmp_while

strcmp_while:
	mov		r8b, [rdi + rcx]
	mov		r9b, [rsi + rcx]

	cmp		r8b, byte 0
	je		strcmp_return
	cmp		r9b, byte 0
	je		strcmp_return

	cmp		r8b, r9b
	jne		strcmp_return
	inc		rcx
	jmp		strcmp_while

strcmp_return:
	mov		al, r8b
	sub		al, r9b
	movsx	rax, al

	leave
	ret
