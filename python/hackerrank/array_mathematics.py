import numpy as np

n, m = map(int, input().split())

a = np.array([int(x) for x in input().split()])
b = np.array([int(x) for x in input().split()])

print("[{}]".format(np.add(a, b)))
print("[{}]".format(np.subtract(a, b)))
print("[{}]".format(np.multiply(a, b)))
print("[{}]".format(np.floor_divide(a, b)))
print("[{}]".format(np.mod(a, b)))
print("[{}]".format(np.power(a, b)))
