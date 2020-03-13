# you can write to stdout for debugging purposes, e.g.
# print("this is a debug message")


def solution(N):
    # write your code in Python 3.6
    bin_N = bin(N)
    counter = 0
    gap = 0
    for i in range(2, len(bin_N)):
        if bin_N[i] == "0":
            counter += 1
        else:
            if counter > gap:
                gap = counter
            counter = 0
    return gap


print(solution(20))
