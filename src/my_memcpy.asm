        BITS 64

	SECTION .text

	global my_memcpy:function

my_memcpy:
	PUSH    RBP
	mov     RBP, RSP

	cmp	rdx, 0
	je	memcpy_return

	dec	rdx
	
	jmp     memcpy_while

memcpy_while:
 	cmp     rdx, -1
	je      memcpy_return

	mov	r8b, [rsi + rdx]
	
	mov     [rdi + rdx], r8b
	dec     rdx
	jmp     memcpy_while

memcpy_return:
	mov	rax, rdi

	LEAVE
	ret
