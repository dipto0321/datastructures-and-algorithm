module Isogram
  def self.isogram?(input)
     /(\w).*\1/.match(input.downcase).nil?
  end
end