# assignment 34: nucleotide-count
# author: Jason Morse
# date: July 21, 2015
#

class Nucleotide

  def initialize(strand)
    @strand = strand
    fail ArgumentError unless @strand.each_char.all? { |n| 'GCTA'.include?(n) }
  end

  def self.from_dna(strand)
    new(strand)
  end

  def count(nucleotide)
    @strand.count(nucleotide)
  end

  def histogram
    {
      'A' => count('A'), 'T' => count('T'),
      'C' => count('C'), 'G' => count('G')
    }
  end

end
