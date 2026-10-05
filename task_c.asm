# (в) ввод массива из 16 + 22 = 38 чисел, остановка на 0

.data
array: .space 152

.text
    la   s0, array
    li   s1, 0          # счётчик
    li   s2, 38

read:
    beq  s1, s2, print
    li   a7, 5
    ecall
    beqz a0, print
    sw   a0, 0(s0)
    addi s0, s0, 4
    addi s1, s1, 1
    j    read

print:
    la   s0, array
    li   t0, 0
next:
    beq  t0, s1, end
    lw   a0, 0(s0)
    li   a7, 1
    ecall
    li   a0, 32
    li   a7, 11
    ecall
    addi s0, s0, 4
    addi t0, t0, 1
    j    next

end:
    li   a7, 10
    ecall
