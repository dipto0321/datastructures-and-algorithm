def do_stuff(ar)
  hold = []
  duplicate = []
  ar.each do |el|
    if hold.include?(el)
      duplicate.push(el)
    else
      hold.push(el)
    end
  end
  puts duplicate.join(' ')
end

inputs = [[1, 2, 3, 1, 5, 6, 7, 8, 5, 2], [85, 105, 90, 275, 30, 100, 275, 110, 125, 130, 275, 10, 20, 30, 45, 50, 275, 65, 70, 111]]

inputs.each { |item| do_stuff(item) }
