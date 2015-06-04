# assignment: difference of squares
# author: Jason Morse
# date: June 1, 2015; updated: June 3, 2015
# 

class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sums
    result = 0
    (0..@number).each { |num| result += num }
    result ** 2
  end

  def sum_of_squares
    result = 0
    (0..@number).each { |num| result += (num ** 2) }
    result
  end

  def difference
    square_of_sums - sum_of_squares
  end

end