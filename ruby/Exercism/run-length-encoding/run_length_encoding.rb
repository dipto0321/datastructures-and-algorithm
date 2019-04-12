module RunLengthEncoding
  def self.encode(input)
    input.gsub(/(.)\1*/) { $&.length.eql?(1) ? Regexp.last_match(1) : $&.length.to_s + Regexp.last_match(1) }
  end

  def self.decode(input)
    input.gsub(/(\d+)(\D)/) {Regexp.last_match(2) * Regexp.last_match(1).to_i}
  end
end