	bits 64

	section .text

	global my_strncmp:function

my_strncmp:
	push    rbp
	mov     rbp, rsp

	xor		rcx, rcx
	jmp     strncmp_while

strncmp_while:
	cmp		rdx, 0
	je		strncmp_null

	cmp     rcx, rdx
	je      strncmp_return

    mov     r8b, [rdi + rcx]
	mov     r9b, [rsi + rcx]

    cmp     [rdi + rcx], byte 0
	je      strncmp_return
	cmp     [rsi + rcx], byte 0
	je      strncmp_return

	cmp     r8b, r9b
	jne     strncmp_return

	inc     rcx
	jmp     strncmp_while

strncmp_null:
	xor		rax, rax

	leave
	ret

strncmp_return:
	mov     al, r8b
	sub     al, r9b
	movsx   rax, al

	leave
	ret