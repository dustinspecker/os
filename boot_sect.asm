mov ah, 0x0e ; use tty mode

; print H
mov al, 'H'
int 0x10 ; tell video service to print al register (because we're in tty mode)

mov al, 'E'
int 0x10
mov al, 'L'
int 0x10
mov al, 'L'
int 0x10
mov al, 'O'
int 0x10

jmp $ ; infinite loop

; fill remaining 510 bytes with 0
times 510-($-$$) db 0

; this signifies a boot loader exists
dw 0xaa55
