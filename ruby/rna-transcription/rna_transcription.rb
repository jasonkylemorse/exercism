# assignment 4: RNA transcription
# author: Jason Morse
# date: May 31, 2015; updated: June 1, 2015
# 

class Complement

  attr_accessor :dna_translations
  attr_accessor :rna_translations

  def self.of_dna(dna)
    @dna_translations = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }

    dna.each_char do |nucleotide|
      raise ArgumentError, 'Invalid input' if !@dna_translations.has_key?(nucleotide)
    end

    dna.split('').map {|nucleotide| @dna_translations[nucleotide]}.join

  end

  def self.of_rna(rna)
    #@rna_translations = @dna_translations.invert <-- sometimes 'undefined method'
    @rna_translations = { 'C' => 'G', 'G' => 'C', 'A' => 'T', 'U' => 'A' }

    rna.each_char do |nucleotide|
      raise ArgumentError, 'Invalid input' if !@rna_translations.has_key?(nucleotide)
    end

    rna.split('').map {|nucleotide| @rna_translations[nucleotide]}.join

  end

end