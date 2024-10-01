[BITS 16]
[ORG 0x7C00]  ; Set origin

start:
    mov ax, 0x07C0   ; Set up stack
    add ax, 0x0200
    mov ss, ax
    mov sp, 0x0200

    mov ah, 0x0E     ; Teletype output (BIOS interrupt)
    mov al, 'P'      ; Print 'P'
    int 0x10

    mov al, 'l'      ; Print 'l'
    int 0x10

    mov al, 'a'      ; Print 'a'
    int 0x10

    mov al, 'y'      ; Print 'y'
    int 0x10

    mov al, 'b'      ; Print 'b'
    int 0x10

    mov al, 'o'      ; Print 'o'
    int 0x10

    mov al, 'i'      ; Print 'i'
    int 0x10

    mov al, ' '      ; Print ' '
    int 0x10

    mov al, 'O'      ; Print 'O'
    int 0x10

    mov al, 'S'      ; Print 'S'
    int 0x10

hang:
    jmp hang         ; Infinite loop to hang the system

times 510 - ($ - $$) db 0
dw 0xAA55            ; Boot sector signature
