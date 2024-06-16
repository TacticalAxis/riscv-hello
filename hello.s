.global _start

_start:
    # STDOUT FILE DESCRIPTOR = 1
    
    # load syscall number for write (64) into a7
    addi a7, x0, 64
    addi a0, x0, 1
    la a1, helloworld
    addi a2, zero, 13
    ecall
    
    addi a7, x0, 93
    addi a0, x0, 13
    ecall

helloworld:
    .ascii "Hello World\n"
