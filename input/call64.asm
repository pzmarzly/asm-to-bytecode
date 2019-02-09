SECTION .data
SECTION .text
global _start
_start:
    push rbp ; taken from https://www.csee.umbc.edu/portal/help/nasm/sample_64.shtml
    mov rdi,2
    call func_exit
    pop rbp
func_exit:
    mov rax,60
    syscall
