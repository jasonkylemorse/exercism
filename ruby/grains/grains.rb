# assignment: grains
# author: Jason Morse
# date: June 6, 2015
# 

class Grains

  AMOUNTS = [1]

  while AMOUNTS.size < 64
      AMOUNTS << (AMOUNTS.last * 2)
  end

  def self.square(number)
    AMOUNTS.at(number - 1)
  end

  def self.total
    AMOUNTS.inject(:+)
  end

end