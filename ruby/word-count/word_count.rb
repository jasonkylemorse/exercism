# assignment: word count
# author: Jason Morse
# date: June 6, 2015
# 

class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = {}
    words = @phrase.downcase.scan(/[a-z0-9]+[']*[a-z0-9]*/)
    words.each do |word| 
      count[word] += 1 if count.has_key?(word)
      count.merge!(word => 1) if !count.has_key?(word)
    end
    count 
  end

end
