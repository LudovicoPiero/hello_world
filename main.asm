section .data
    msg db "Hello, World!", 0xA ; The message with a newline character
    len equ $ - msg            ; Calculate the length of the message

section .text
    global _start              ; Entry point for the program

_start:
    ; Write system call (sys_write)
    mov eax, 4                 ; syscall number for write (Linux: sys_write)
    mov ebx, 1                 ; file descriptor 1 (stdout)
    mov ecx, msg               ; pointer to the message
    mov edx, len               ; length of the message
    int 0x80                   ; call kernel

    ; Exit system call (sys_exit)
    mov eax, 1                 ; syscall number for exit (Linux: sys_exit)
    xor ebx, ebx               ; exit code 0
    int 0x80                   ; call kernel
