# assignment 29: binary-search-tree
# author: Jason Morse
# date: July 14, 2015
#

class Bst

  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
  end

  def insert(value)
    if value <= data && left
      left.insert(value)
    elsif value <= data && !left
      @left = Bst.new(value)
    elsif value > data && right
      right.insert(value)
    else
      @right = Bst.new(value)
    end
  end

  def each(&block)
    left && left.each(&block)
    block.call(data)
    right && right.each(&block)
  end

end
