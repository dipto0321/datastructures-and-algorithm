def fiboTabulation(n):
    cache = [None] * (n + 1)
    cache[0] = 0
    cache[1] = 1
    for i in range(2, n+1):
        cache[i] = cache[i - 1] + cache[i - 2]
    return cache[n]


def fiboMemoization(n, cache):
    if n < 2:
        return n
    if cache[n] != None:
        return cache[n]
    else:
        cache[n] = fiboMemoization(n-1, cache) + fiboMemoization(n-2, cache)
        return cache[n]


number = 10
print(
    "[Bottom-Up: Tabulation] Fibonacci of {} is {}".format(number, fiboTabulation(number)))
print("[Top-Down: Memoization] Fibonacci of {} is {}".format(
    number, fiboMemoization(number, [None] * (number+1))))
