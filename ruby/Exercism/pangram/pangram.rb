module Pangram
  def self.pangram? sentence
    ('a'..'z').all? {|char| sentence.downcase.include?char}
  end
end