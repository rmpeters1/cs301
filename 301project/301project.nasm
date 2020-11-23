extern puts
extern printf
push rdi ; user input

mov rdi,Menu ; rdi == address in memory where the string is stored
call puts

pop rax
cmp rax,1
je Encrypt

cmp rax,2
je Decrypt


ret

Encrypt:
	push rax
	mov rdi, msg
	call puts
	mov eax,[msg]
	mov ebx,[msg2]
	xor eax,ebx
	push answer
	call printf
	add esp,4
	
Decrypt:
	mov rdi, msg

pop rax
ret


Menu:
	db `Please choose an option (Enter an integer.)\n 1 Encryption \n 2 Decryption`,0
answer:
	db `Result: %x`,10,0
msg:
	dw `0x34534`,0
msg2:
	dw `0x39243`,0



