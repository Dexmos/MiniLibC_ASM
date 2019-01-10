	bits 64

	section .text

	global 	my_rindex:function

my_rindex:
	push 	rbp
	mov 	rbp, rsp

	xor		rdx, rdx

rindex_while:
    cmp     [rdi], byte 0
	je      do_things

	cmp     [rdi], sil
	je      rindex_inc

	inc     rdi
	jmp     rindex_while

rindex_inc:
	inc     rdx

	jmp     rindex_check

rindex_check:
	cmp		[rdi + rdx], byte 0
	je		rindex_return

	cmp		[rdi + rdx], sil
	je		rindex_back

	inc		rdx
	jmp		rindex_check

rindex_back:
	cmp		rdx, 0
	je		rindex_while

	inc		rdi
	dec		rdx
	jmp		rindex_back

do_things:
	cmp     sil, byte 0
	je      rindex_return

	jmp     rindex_return_null

rindex_return_null:
	xor     rax, rax

	leave
	ret

rindex_return:
	mov		rax, rdi

	leave
	ret