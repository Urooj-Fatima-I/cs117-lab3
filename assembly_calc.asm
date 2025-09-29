section .data
    msg1 db 'Sum = ', 0
    len1 equ $ - msg1

    msg2 db 'Product = ', 0
    len2 equ $ - msg2

    result db 0        ; space to store answer

    newline db 10      ; line break

section .text
    global _start

_start:
    ; first number in AL
    mov al, 2          
    ; second number in BL
    mov bl, 3          

    ; ---------- Addition ----------
    mov ah, al         ; copy first number into AH
    add ah, bl         ; AH = AL + BL

    add ah, '0'        ; turn into ASCII
    mov [result], ah   ; save answer

    ; show "Sum = "
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, len1
    int 0x80

    ; show the sum digit
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    ; go to next line
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80


    ; ---------- Multiplication ----------
    mov al, 2          ; load first number again
    mov bl, 3          ; load second number again
    mul bl             

    add al, '0'        ; turn into ASCII
    mov [result], al   ; save answer

    ; show "Product = "
    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, len2
    int 0x80

    ; show the product digit
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    ; exit program
    mov eax, 1
    mov ebx, 0
    int 0x80

