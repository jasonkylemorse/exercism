# assignment 2: hamming
# author: Jason Morse
# date: May 31, 2015, updated June 2, 2015
# 

class Hamming

  VERSION = 1

  def self.compute(strand1, strand2)

    raise ArgumentError, "Sequences are different lengths" unless strand1.length == strand2.length

    mutations = 0
    strand1.chars.each_with_index { |nucleotide, index| mutations += 1 if nucleotide != strand2[index] }

    mutations

  end

end