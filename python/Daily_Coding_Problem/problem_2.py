import numpy as np



def multy_array(_items):
    res = []
    for i in range(0, len(_items)):
        list_copy = _items.copy()
        list_copy.pop(i)
        res.append(np.prod(list_copy))
    return res


inputs = [[1, 2, 3, 4, 5], [3, 2, 1]]

for _input in inputs:
    print(multy_array(_input))
