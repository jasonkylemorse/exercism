# assignment 6: difference-of-squares
# author: Jason Morse
# date: June 1, 2015; updated: June 12, 2015
#

class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sums
    (0..@number).inject(:+) ** 2
  end

  def sum_of_squares
    (0..@number).inject { |sum, num| sum + (num ** 2) }
  end

  def difference
    square_of_sums - sum_of_squares
  end

end
