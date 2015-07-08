# assignment 23: strain
# author: Jason Morse
# date: July 8, 2015
#

class Array

  def keep(&block)
    result = []
    each do |element|
      result << element if block.call(element)
    end
    result
  end

  def discard(&block)
    result = []
    each do |element|
      result << element unless block.call(element)
    end
    result
  end

end
