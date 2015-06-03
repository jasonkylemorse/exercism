# assignment 2: hamming
# author: Jason Morse
# date: May 31, 2015, updated June 2, 2015
# 

class Hamming

  VERSION = 1

  def self.compute(strand1, strand2)
    mutations = 0

    raise ArgumentError.new("Sequences are different lengths") unless strand1.length == strand2.length
    
    strand1.chars.each_with_index do |char, index|
      mutations += 1 if char != strand2[index]
    end

    mutations

  end

end