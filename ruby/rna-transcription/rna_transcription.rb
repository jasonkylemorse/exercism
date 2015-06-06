# assignment 4: RNA transcription
# author: Jason Morse
# date: May 31, 2015; updated: June 5, 2015
# 

class Complement

  DNA_TO_RNA = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
  RNA_TO_DNA = DNA_TO_RNA.invert

  def self.of_dna(dna)
    raise ArgumentError, 'Invalid input' unless dna.chars.all? { |nucleotide| DNA_TO_RNA.has_key?(nucleotide) }
    dna.chars.map {|nucleotide| DNA_TO_RNA[nucleotide]}.join
  end

  def self.of_rna(rna)
    raise ArgumentError, 'Invalid input' unless rna.chars.all? { |nucleotide| RNA_TO_DNA.has_key?(nucleotide) }
    rna.chars.map {|nucleotide| RNA_TO_DNA[nucleotide]}.join
  end

end