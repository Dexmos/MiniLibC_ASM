	bits 64

	section .text

	global my_memset:function

my_memset:
	push    rbp
	mov     rbp, rsp

	xor     rcx, rcx
	jmp     memset_while

memset_while:
	cmp		[rdi + rcx],  byte 0
	je		memset_return

	cmp		rcx, rdx
	je		memset_return

	mov		[rdi + rcx], sil
	inc		rcx
	jmp		memset_while

memset_return:
	mov		rax, rdi

	leave
	ret