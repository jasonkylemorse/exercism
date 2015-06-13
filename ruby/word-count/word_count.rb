# assignment 12: word-count
# author: Jason Morse
# date: June 6, 2015; updated: June 13, 2015
#

class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = {}
    words = @phrase.downcase.scan(/[a-z0-9]+[']*[a-z0-9]*/)
    words.each { |word| count.key?(word) ? count[word] += 1 : count.merge!(word => 1) }
    count
  end

end
