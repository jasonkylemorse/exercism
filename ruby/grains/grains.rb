# assignment 11: grains
# author: Jason Morse
# date: June 6, 2015; updated: June 13, 2015
#

class Grains

  def self.square(number)
    2 ** (number - 1)
  end

  def self.total
    (0..63).inject(0) { |sum, num| sum + (2 ** num) }
  end

end
