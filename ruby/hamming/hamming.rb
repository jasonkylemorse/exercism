# assignment 2: hamming
# author: Jason Morse
# date: May 31, 2015; updated: June 12, 2015
#

class Hamming

  VERSION = 1

  def self.compute(s1, s2)
    fail ArgumentError, 'Strands are different sizes' if s1.length != s2.length
    s1.each_char.zip(s2.each_char).count { |a, b| a != b }
  end

end
