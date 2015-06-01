# assignment 4: RNA transcription
# author: Jason Morse
# date: May 31, 2015
# 

class Complement

  def self.of_dna(dna)
    rna = ''

    dna.each_char do |nucleotide|
      case nucleotide
      when 'G'
        rna << 'C'
      when 'C'
        rna << 'G'
      when 'T'
        rna << 'A'
      when 'A'
        rna << 'U'
      else
        raise ArgumentError.new("Invalid input")
      end

    end

    return rna

  end

  def self.of_rna(rna)
    dna = ''

    rna.each_char do |nucleotide|
      case nucleotide
      when 'C'
        dna << 'G'
      when 'G'
        dna << 'C'
      when 'A'
        dna << 'T'
      when 'U'
        dna << 'A'
      else
        raise ArgumentError.new("Invalid input")
      end

    end

    return dna

  end

end