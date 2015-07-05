# assignment 17: accumulate
# author: Jason Morse
# date: July 5, 2015
#

class Array

  def accumulate
    accumulated = []

    each do |element|
      accumulated << (yield element)
    end

    accumulated
  end

end
