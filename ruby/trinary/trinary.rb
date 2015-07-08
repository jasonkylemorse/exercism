# assignment 25: trinary
# author: Jason Morse
# date: July 8, 2015
#

class Trinary

  def initialize(tri)
    @tri = tri
  end

  def to_decimal
    return 0 unless @tri.each_char.all? { |digit| '012'.include?(digit) }
    @tri.reverse.chars.each_with_index.inject(0) do |sum, (digit, index)|
      digit == '0' ? sum : sum + digit.to_i * (3**index)
    end
  end

end
