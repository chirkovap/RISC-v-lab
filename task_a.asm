# (а) 1, если x == 22, иначе 0

.data
prompt: .asciz "x = "

.text
    la   a0, prompt
    li   a7, 4
    ecall
    li   a7, 5
    ecall

    li   t0, 22
    sub  t1, a0, t0
    seqz a0, t1

    li   a7, 1
    ecall
    li   a7, 10
    ecall
