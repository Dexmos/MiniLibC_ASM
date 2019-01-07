	BITS	64

	SECTION	.txt

	global	my_strcspn:function

my_strcspn:
	PUSH	RBP
	mov	RBP, RSP

	xor	rdx, rdx
	xor	rcx, rcx
	
	jmp	strcspn_while
	
strcspn_while:
	mov     r8b, [rdi + rcx]
	cmp     r8b, byte 0
	je      strcspn_return

	mov     r9b, [rsi + rdx]
	cmp     r9b, byte 0
	je      strcspn_check
	
	cmp	r8b, r9b
	je	strcspn_return

	inc	rdx
	jmp	strcspn_while
	
strcspn_check:
	xor	rdx, rdx
	inc	rcx

	jmp	strcspn_while
	
strcspn_return:
	mov     rax, rcx
	
	LEAVE
	RET	

