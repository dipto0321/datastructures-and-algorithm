def solution(A, K):
    if len(A) == 0:
        return A
    for _ in range(K):
        last_element = A.pop()
        A.insert(0, last_element)
    return A


print(solution([], 1))
