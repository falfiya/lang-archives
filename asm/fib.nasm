; nasm fib.nasm -f elf64 -g -F dwarf -o fib.o && ld fib.o -o fib
section .bss
   outputs: resb 64

section .text
   global _start

%define a r8
%define b r9
%define c r10
%define tmp r11
%define counter r12

%macro puts 1
   mov rax, 1        ; system call 1
   mov rdi, 1        ; file descriptor 1 (stdout)
   mov [outputs], %1 ;
   mov rsi, outputs  ; 
   ; mov rdx, %2     ; length
   mov rdx, 1
   syscall
%endmacro

%macro lf 0
   mov tmp, 10
   puts tmp
%endmacro

%define integer_offset 0x30

_start:
   xor a, a             ; a = 0
   mov b, 1             ; b = 1
   mov counter, 2       ; counter = 0
   mov tmp, '0'
   puts tmp
   lf
   mov tmp, '1'
   puts tmp
   lf
loop:
   inc counter
   xor c, c ; c = 0
   add c, a ; c += a
   add c, b ; c += b
   mov a, b ; a = b
   mov b, c ; b = c
   add c, integer_offset
   puts c
   lf
   cmp counter, 7
   jl loop
exit:
   mov rax, 60
   mov rdi, 0
   syscall
