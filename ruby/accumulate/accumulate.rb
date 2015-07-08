# assignment 17: accumulate
# author: Jason Morse
# date: July 5, 2015
#

class Array

  def accumulate
    result = []
    each do |element|
      result << (yield element)
    end
    result
  end

end
