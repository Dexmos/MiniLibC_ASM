    bits 64

	section .text

	global 	my_strstr:function

my_strstr:
	push    rbp
	mov     rbp, rsp

	xor		rcx, rcx
	jmp     strstr_while

strstr_while:
	mov     r9b, [rsi]
	cmp     r9b, byte 0
	je      strstr_return

    mov     r8b, [rdi + rcx]
	cmp		r8b, byte 0
	je		strstr_return_null

	cmp		r8b, r9b
	je		strstr_occur

 	inc		rdi
	jmp		strstr_while

strstr_occur:
	inc		rsi
	inc		rcx
	jmp		strstr_while

strstr_return_null:
	xor		rax, rax

	leave
	ret

strstr_return:
	mov		rax, rdi

	leave
	ret