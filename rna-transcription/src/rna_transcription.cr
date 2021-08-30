module RnaComplement

  def self.of_dna(dna_code)
    dna_code.tr "ACTG", "UGAC"
  end

end