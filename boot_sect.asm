[org 0x7c00] ; start memory access at start of boot sector
mov ah, 0x0e ; use tty mode

mov al, [the_secret]
int 0x10

jmp $ ; infinite loop

the_secret:
	; store X right before 0 padding
	db 'X'

; fill remaining 510 bytes with 0
times 510-($-$$) db 0

; this signifies a boot loader exists
dw 0xaa55
