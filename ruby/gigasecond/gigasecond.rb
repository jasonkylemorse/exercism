# assignment 3: gigasecond
# author: Jason Morse
# date: May 31, 2015
# 

class Gigasecond

  VERSION = 1

  def self.from(birthday)
    birthday + (10 ** 9)
  end

end