def repeatedString(s: str, n: int):
    # Write your code here
    return s.count("a") * (n // len(s)) + s[:n % len(s)].count('a')



print(repeatedString('abcac', 10))
