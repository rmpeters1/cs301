mov rdi,Menu ; rdi == address in memory where the string is stored

extern puts
call puts

mov rax, 1 ; input = 1

cmp rax,1
je Encrypt

cmp rax,2
je Decrypt

ret

Encrypt:
	mov rdi, EncDec
	call puts
	
	mov rax,1 ; input = 1
	
	cmp rax, 1
	je XOR
	cmp rax, 2
	je RC5

Decrypt:
	mov rdi, EncDec
	call puts
	
	mov rax, 1 ; input = 1
	
	cmp rax,1
	je XOR
	cmp rax,2

XOR:
	mov rax,4
	ret
	
RC5:
	mov rax,3
	ret

Menu:
	db `Please choose an option (Enter an integer.)\n 1 Encryption \n 2 Decryption`,0
EncDec:	
	db `Please choose an option (Enter an integer.)\n 1 XOR \n 2 RC5`,0