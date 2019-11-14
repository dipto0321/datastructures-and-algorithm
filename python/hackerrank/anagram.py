from collections import Counter


def anagram(s):
    l = len(s)
    if l % 2 == 1:
        return - 1
    else:
        mid = len(s) // 2
        s1, s2 = Counter(s[:mid]), Counter(s[mid:])
        count = 0
        for char in s2:
            cur = s2[char] - s1.get(char, 0)
            if cur > 0:
                count += cur
        return count


print(anagram("aaabbb"))
print(anagram("ab"))
print(anagram("abc"))
print(anagram("mnop"))
print(anagram("xyyx"))
print(anagram("xaxbbbxx"))
print(anagram("fdhlvosfpafhalll"))

fdhlvosfpafhalll
