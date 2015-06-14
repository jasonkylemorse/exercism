# assignment 4: rna-transcription
# author: Jason Morse
# date: May 31, 2015; updated: June 14, 2015
#

class Complement

  def self.of_dna(dna)
    unless dna.each_char.all? { |nucleotide| 'GCTA'.include?(nucleotide) }
      fail ArgumentError, "Nucleotide #{nucleotide} is not valid input (GCTA)"
    end
    dna.tr('GCTA', 'CGAU')
  end

  def self.of_rna(rna)
    unless rna.each_char.all? { |nucleotide| 'CGAU'.include?(nucleotide) }
      fail ArgumentError, "Nucleotide #{nucleotide} is not valid input (CGAU)"
    end
    rna.tr('CGAU', 'GCTA')
  end

end
