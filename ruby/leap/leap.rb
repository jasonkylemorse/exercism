# assignment 10: leap
# author: Jason Morse
# date: June 6, 2015; updated: June 13, 2015
#

class Year

  def self.leap?(year)
    (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
  end

end
