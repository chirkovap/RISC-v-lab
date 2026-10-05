# (б) числа от min(x, 118) до max(x, 118) с шагом 22

.data
prompt: .asciz "x = "

.text
    la   a0, prompt
    li   a7, 4
    ecall
    li   a7, 5
    ecall

    mv   t0, a0         # t0 = min
    li   t1, 118        # t1 = max
    ble  t0, t1, loop
    mv   t0, t1
    mv   t1, a0

loop:
    bgt  t0, t1, end
    mv   a0, t0
    li   a7, 1
    ecall
    li   a0, 10
    li   a7, 11
    ecall
    addi t0, t0, 22
    j    loop

end:
    li   a7, 10
    ecall
