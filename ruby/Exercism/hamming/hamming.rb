module Hamming
  def self.compute(f_strand, s_strand)
    count = 0
    raise ArgumentError if f_strand.length != s_strand.length
    f_strand.split("").each_index {|i| count += 1 if f_strand[i] != s_strand[i]}
    count
  end
end