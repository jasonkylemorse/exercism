# file: squares.rb
# author: Jason Morse
# date: June 1, 2015
# 

class Squares
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def square_of_sums
    result = 0

    (0..@number).each do |num|
      result += num
    end

    return result**2

  end

  def sum_of_squares
    result = 0

    (0..@number).each do |num|
      result += (num**2)
    end

    return result

  end

  def difference
    return square_of_sums - sum_of_squares
  end

end