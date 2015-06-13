# assignment 4: rna-transcription
# author: Jason Morse
# date: May 31, 2015; updated: June 12, 2015
#

class Complement

  def self.of_dna(dna)
    fail ArgumentError, 'Invalid' unless
      dna.each_char.all? { |nucleotide| 'GCTA'.include?(nucleotide) }
    dna.tr('GCTA', 'CGAU')
  end

  def self.of_rna(rna)
    fail ArgumentError, 'Invalid' unless
      rna.each_char.all? { |nucleotide| 'CGAU'.include?(nucleotide) }
    rna.tr('CGAU', 'GCTA')
  end

end
