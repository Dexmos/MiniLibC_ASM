    bits 64

	section .text

	global my_memcpy:function

my_memcpy:
	push    rbp
	mov     rbp, rsp

	cmp		rdx, 0
	je		memcpy_return

	dec		rdx

	jmp     memcpy_while

memcpy_while:
 	cmp     rdx, -1
	je      memcpy_return

	mov		r8b, [rsi + rdx]

	mov     [rdi + rdx], r8b
	dec     rdx
	jmp     memcpy_while

memcpy_return:
	mov		rax, rdi

	leave
	ret