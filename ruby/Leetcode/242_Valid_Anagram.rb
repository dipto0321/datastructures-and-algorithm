def is_anagram(s, t)
    return false if s.size != t.size
    s.chars.sort == t.chars.sort
end


s1 = "anagram"
t1 = "nagaram"

s2 = "rat"
t2 = "car"

s3 = "a"
t3 = "ab"

puts is_anagram(s1, t1)
puts is_anagram(s2, t2)
puts is_anagram(s3, t3)
