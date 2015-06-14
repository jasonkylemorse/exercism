# assignment 12: word-count
# author: Jason Morse
# date: June 6, 2015; updated: June 14, 2015
#

class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = Hash.new(0)
    words = @phrase.downcase.scan(/[a-z0-9]+[']*[a-z0-9]*/)
    words.each { |word| count[word] += 1 }
    count
  end

end
