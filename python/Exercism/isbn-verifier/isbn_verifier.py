import re

ISBN_REGX = re.compile(r"^\d-?\d{3}-?\d{5}-?[0-9X]$")


def is_valid(isbn):
    if not ISBN_REGX.match(isbn):
        return False
    digits = [10 if d == "X" else int(d) for d in isbn if d != "-"]
    checksum = sum([d * i for i, d in enumerate(digits[::-1], 1)]) % 11
    return checksum == 0
