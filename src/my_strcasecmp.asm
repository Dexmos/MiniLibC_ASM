	BITS 64

	SECTION .text

	global  my_strcasecmp:function

my_strcasecmp:
	PUSH    RBP
	mov     RBP, RSP

	xor	rcx, rcx

strcasecmp_lower_rdi:
        mov     r8b, [rdi + rcx]

	cmp     r8b, byte 65
	jl      strcasecmp_lower_rsi
	cmp     r8b, byte 90
	jg      strcasecmp_lower_rsi
	add     r8b, 32

strcasecmp_lower_rsi:
	mov     r9b, [rsi + rcx]

	cmp     r9b, byte 65
	jl      strcasecmp_while
	cmp     r9b, byte 90
	jg      strcasecmp_while
	add     r9b, 32

	jmp	strcasecmp_while

strcasecmp_while:
	cmp     r8b, byte 0
	je      strcasecmp_return
	cmp     r9b, byte 0
	je      strcasecmp_return

	cmp     r8b, r9b
	jne     strcasecmp_return

	inc	rcx
	jmp     strcasecmp_lower_rdi

strcasecmp_return:
	mov     al, r8b
	sub     al, r9b
	movsx   rax, al

	LEAVE
	ret
