def do_stuff(text)
  res = []
  temp = []
  text.each_char do |c|
    if c == 'n'
      temp.push(res.pop) while res[-1] == 'g'
      res.push(c)
      res.push(temp.pop) until temp.empty?
    else
      res.push(c)
    end
  end
  puts res.join
end
sample = ['he was searchign on Bign for signign kigns',
          'rignadingdiggn!',
          'gngngnnggnngggnnn',
          'pign me when you see ggn',
          'ggggggnnnnnn']
sample.each { |test| do_stuff(test) }
