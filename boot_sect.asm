;interrupts, CPU registers
mov ah, 0x0e
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10
mov al, 'a'
int 0x10
mov al, 'd'
int 0x10
mov al, 'i'
int 0x10
mov al, 'n'
int 0x10
mov al, 'g'
int 0x10
;memory offsets, pointers
mov ah, 0x0e
mov al, "1"
int 0x10
mov al, the_secret
int 0x10
mov al, "2"
int 0x10
mov al, [the_secret]
int 0x10
int 0x10
mov bx, the_secret
add bx, 0x7c00
mov al, [bx]
int 0x10
mov al, "4"
int 0x10
mov al, [0x7c2d]
int 0x10
the_secret:
    db "X"
;stack
mov ah, 0x0e
mov bp, 0x8000
mov sp, bp
push 'A'
push 'B'
push 'C'
mov al, [0x7ffe] ; 0x8000 - 2
int 0x10
mov al, [0x8000]
int 0x10
pop bx
mov al, bl
int 0x10
pop bx
mov al, bl
int 0x10
pop bx
mov al, bl
int 0x10
mov al, [0x8000]
int 0x10
;infinite loop, padding and magic number
jmp $
times 510-($-$$) db 0
dw 0xaa55


