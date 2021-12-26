global _start

section .text

_start:
  mov rax, 1        ; write(
  mov rdi, 1        ;   STDOUT_FILENO,
  mov rsi, msg      ;   "Hello World in x86 Assembly!\n",
  mov rdx, msglen   ;   sizeof("Hello World in x86 Assembly!\n")
  syscall           ; );

  mov rax, 60       ; exit(
  mov rdi, 0        ;   EXIT_SUCCESS
  syscall           ; );

section .rodata
  msg: db "Hello World in x86 Assembly!", 10
  msglen: equ $ - msg


