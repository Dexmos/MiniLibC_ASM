	bits	64

	section	.txt

	global	my_strpbrk:function

my_strpbrk:
	push	rbp
	mov		rbp, rsp

	xor		rdx, rdx

	jmp		strpbrk_while

strpbrk_while:
	mov		r9b, [rdi]
	cmp		r9b, byte 0
	je		strpbrk_return_null

	mov		r8b, [rsi + rdx]
	cmp		r8b, byte 0
	je		strpbrk_check

	cmp		r9b, r8b
	je		do_things

	inc		rdx
	jmp		strpbrk_while

strpbrk_check:
	xor		rdx, rdx
	inc		rdi

	jmp		strpbrk_while

strpbrk_return_null:
	xor		rax, rax

	leave
	ret

do_things:
	cmp		rdx, 0
	je		strpbrk_return

	inc		rsi
	dec		rdx
	jmp		do_things

strpbrk_return:
	mov     rax, rdi

	leave
	ret