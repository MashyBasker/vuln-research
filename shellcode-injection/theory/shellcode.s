# we are running a shellcode to open a shell
# the code is essentially just execve("/bin/sh", NULL, NULL) in C
# which can be used to open a shell process

.global _start
_start:
.intel_syntax noprefix
        mov rax, 59
        lea rdi, [rip+binsh]
        mov rsi, 0
        mov rdx, 0
        syscall

binsh:
        .string "/bin/sh"
