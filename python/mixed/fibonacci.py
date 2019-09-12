def fibo(n):
    cache = [None] * (n + 1)
    cache[0] = 0
    cache[1] = 1
    for i in range(2, n+1):
        cache[i] = cache[i - 1] + cache[i - 2]
    return cache[n]


number = 10
print("Fibonacci of {} is {}".format(number, fibo(number)))
