# assignment 42: triangle
# author: Jason Morse
# date: July 29, 2015
#

class Triangle

  def initialize(a, b, c)
    @a, @b, @c = [a, b, c].sort
    fail TriangleError, 'This triangle cannot exist!' if @a + @b <= @c
    fail TriangleError, 'This triangle cannot exist!' if @a <= 0
  end

  def kind
    return :equilateral if equilateral?
    return :isosceles if isosceles?
    :scalene
  end

  def equilateral?
    @a == @c
  end

  def isosceles?
    @a == @b || @b == @c || @a == @c
  end

end

class TriangleError < StandardError
end
