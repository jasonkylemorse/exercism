# assignment 4: RNA transcription
# author: Jason Morse
# date: May 31, 2015; updated: June 2, 2015
# 

class Complement

  DNA_TRANS = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
  RNA_TRANS = DNA_TRANS.invert

  def self.of_dna(dna)

    raise ArgumentError, 'Invalid input' unless dna.chars.all? { |nucleotide| DNA_TRANS.has_key?(nucleotide) }
    dna.chars.map {|nucleotide| DNA_TRANS[nucleotide]}.join

  end

  def self.of_rna(rna)

    raise ArgumentError, 'Invalid input' unless rna.chars.all? { |nucleotide| RNA_TRANS.has_key?(nucleotide) }
    rna.chars.map {|nucleotide| RNA_TRANS[nucleotide]}.join

  end

end