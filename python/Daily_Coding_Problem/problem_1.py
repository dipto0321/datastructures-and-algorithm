# This problem was recently asked by Google.

# Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

# For example, given[10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

arr = [10, 15, 3, 7]
k = 20


def check_sum(numbers, target):
    num_pairs = set()
    for num in numbers:
        if target - num in num_pairs:
            return True
        else:
            num_pairs.add(num)


print(check_sum(arr, k))
