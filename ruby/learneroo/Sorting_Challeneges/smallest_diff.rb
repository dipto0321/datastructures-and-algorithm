def do_stuff(ar)
  ar.sort!
  min_diff = 99999999999999999
  min_pair = []
  ar.each_with_index do |element, index|
    comp_element = ar[index - 1]
    subs = (element - comp_element).abs
    if min_diff > subs
      min_diff = subs
      min_pair = [comp_element, element]
    end
  end

  puts min_pair.join(' ');
end


do_stuff([-20, -3916237, -357920, -3620601, 7374819, -7330761, 30, 6246457, -6461594, 266854]);