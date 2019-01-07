        BITS 64

	SECTION .text

	global my_strlen:function

my_strlen:
	PUSH RBP
	mov RBP, RSP

	push RDI
	jmp _my_strlen
	ret
	
_my_strlen:
	push  rcx
	xor   rcx, rcx

	push rdi
	jp _strlen_while
	ret
	
_strlen_while:
	cmp   [rdi + rcx], byte 0
	jz    _strlen_null

	inc   rcx
	jmp   _strlen_while
	
_strlen_null:
	mov rax, rcx
	pop rcx
	LEAVE
	ret
