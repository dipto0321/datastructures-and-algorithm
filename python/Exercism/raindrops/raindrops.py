def convert(number):
    FACTORS = {3: "Pling", 5: "Plang", 7: "Plong"}
    res = ""
    for key, value in FACTORS.items():
        if number % key == 0:
            res += value
    return str(res or number)
