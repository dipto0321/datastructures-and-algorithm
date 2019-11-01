# A override function for find factors
class Integer
  def factors
    1.upto(Math.sqrt(self)).select { |i| (self % i).zero? }.inject([]) do |f, i|
      f << self / i unless i == self / i
      f << i
    end.sort
  end
end
