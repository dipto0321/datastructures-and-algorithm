def reverse(x)
  sign = x < 0 ? -1 : 1
  x = x.to_s.split('').reverse.join.to_i * sign
  r_s = 2**31 * (-1)
  r_e = 2**31 -1
  return (r_s..r_e).include?(x) x : 0
end
