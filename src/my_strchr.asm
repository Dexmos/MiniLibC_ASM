	BITS 64
	
	SECTION .text

	global my_strchr:function

my_strchr:
	PUSH    RBP
	mov     RBP, RSP

strchr_while:
	cmp	[rdi], byte 0
	je	do_things
	
	cmp	[rdi], sil
	je	strchr_return

	inc	rdi
	jmp	strchr_while

do_things:
	cmp	sil, byte 0
	je	strchr_return

	jmp	strchr_return_null
	
strchr_return_null:
	xor	rax, rax

	LEAVE
	ret
	
strchr_return:
	lea	rax, [rdi]

	LEAVE
	ret
