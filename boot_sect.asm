; A simple boot sector program that loops forever
loop:
	jmp loop

; fill remaining 510 bytes with 0
times 510-($-$$) db 0

; this signifies a boot loader exists
dw 0xaa55
