import numpy as np

n, m = map(int, input().split())

a = np.array([int(x) for x in input().split()])
b = np.array([int(x) for x in input().split()])

print(np.add(a, b).reshape(n, m))
print(np.subtract(a, b).reshape(n, m))
print(np.multiply(a, b).reshape(n, m))
print(np.floor_divide(a, b).reshape(n, m))
print(np.mod(a, b).reshape(n, m))
print(np.power(a, b).reshape(n, m))
