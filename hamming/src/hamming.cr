module Hamming
  def self.distance(strand_a, strand_b)
    raise ArgumentError.new(message = "strands not equal length") unless strand_a.size == strand_b.size

    strand_a.chars.zip(strand_b.chars).count { |a, b| a != b }
  end
end
