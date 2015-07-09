# assignment 28: anagram
# author: Jason Morse
# date: July 9, 2015
#

class Anagram

  def initialize(string)
    @orig = string
    @ord = string.each_char.map(&:downcase).sort.join
  end

  def match(words)
    results = []
    words.each do |word|
      ord = word.each_char.map(&:downcase).sort.join
      results << word if ord == @ord && word != @orig && case?(@orig, word)
    end
    results
  end

  def case?(word1, word2)
    word1.each_char.map { |char| char == char.upcase } ==
      word2.each_char.map { |char| char == char.upcase }
  end

end
