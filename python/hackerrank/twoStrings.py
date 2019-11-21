def twoString(s1, s2):
    set_s1 = set(s1)
    set_s2 = set(s2)
    if len(set_s1.intersection(set_s2)) > 0:
        return 'YES'
    return 'NO'


print(twoString("hello", "world"))
print(twoString("hi", "world"))
