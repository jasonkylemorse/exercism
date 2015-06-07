# assignment: grains
# author: Jason Morse
# date: June 6, 2015
# 

class Grains

  AMOUNTS = (0..63).map { |num| 2 ** num }

  def self.square(number)
    AMOUNTS[number - 1]
  end

  def self.total
    AMOUNTS.inject(:+)
  end

end