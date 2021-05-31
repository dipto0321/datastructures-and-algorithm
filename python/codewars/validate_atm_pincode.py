
def validate_pin(pin):
    return len(pin) in (4, 6) and pin.isdigit()


print(validate_pin("123456"))
print(validate_pin("12345a"))
print(validate_pin("1"))
print(validate_pin("1.356"))
