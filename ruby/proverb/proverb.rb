# assignment 46: proverb
# author: Jason Morse
# date: July 31, 2015
#

class Proverb

  def initialize(*words, qualifier: nil)
    @words = words
    @qual = qualifier
  end

  def to_s
    @qual.nil? ? want = @words[0] : want = @qual << ' ' << @words[0]
    result = (0..@words.size - 2).collect do |item|
      "For want of a #{@words[item]} the #{@words[item + 1]} was lost.\n"
    end
    result.join << "And all for the want of a #{want}."
  end

end
