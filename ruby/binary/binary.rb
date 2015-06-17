# assignment 16: binary
# author: Jason Morse
# date: June 16, 2015
#

class Binary

  def initialize(num)
    @num = num
  end

  def to_decimal
    return 0 unless @num.each_char.all? { |digit| '01'.include?(digit) }
    @num.reverse.chars.each_with_index.inject(0) do |sum, (digit, index)|
      digit == '1' ? sum + (2**index) : sum
    end
  end

end
