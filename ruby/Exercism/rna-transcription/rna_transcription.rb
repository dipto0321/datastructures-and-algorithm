# Complement module

module Complement
  RNA_OF_DNA = %w[ACGT UGCA].freeze
  def self.of_dna(rna)
    rna.tr(RNA_OF_DNA[0], RNA_OF_DNA[1])
  end
end