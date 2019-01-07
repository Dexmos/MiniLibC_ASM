	BITS 64

	SECTION .text

	global my_memset:function

my_memset:
	PUSH    RBP
	mov     RBP, RSP

	xor     rcx, rcx
	jmp     memset_while

memset_while:
	cmp	[rdi + rcx],  byte 0
	je	memset_return

	cmp	rcx, rdx
	je	memset_return

	mov	[rdi + rcx], sil
	inc	rcx
	jmp	memset_while

memset_return:
	mov	rax, rdi

	LEAVE
	ret
