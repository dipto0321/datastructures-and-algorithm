def dig_pow(n, p):
    # your code
    sum_res = sum(pow(int(d), p+i) for i, d in enumerate(str(n)))
    return sum_res//n if sum_res % n == 0 else -1


print(dig_pow(89, 1))
print(dig_pow(92, 1))
print(dig_pow(695, 2))
print(dig_pow(46288, 3))
