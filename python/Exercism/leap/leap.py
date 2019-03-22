def is_leap_year(year):
    if (year % 400 is 0 or year % 100 is not 0) and (year % 4 is 0):
        return True
    else:
        return False
