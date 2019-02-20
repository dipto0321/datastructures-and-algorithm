def do_stuff(ar)
  ar.sort!
  min_diff = 99_999_999_999_999_999
  min_pair = []
  ar.each_with_index do |element, index|
    comp_element = ar[index - 1]
    subs = (element - comp_element).abs
    if min_diff > subs
      min_diff = subs
      min_pair = [comp_element, element]
    end
  end

  puts min_pair.join(' ')
end

do_stuff([-20, -3_916_237, -357_920, -3_620_601, 7_374_819, -7_330_761, 30, 6_246_457, -6_461_594, 266_854])
