def fizzBuzz(n):
    # Write your code here
    FACTORS = {3: "Fizz", 5: "Buzz"}
    for i in range(1, n+1):
        res = ""
        for key, value in FACTORS.items():
            if i % key == 0:
                res += value
        print(str(res or i))


fizzBuzz(15)
