# assignment 35: hexadecimal
# author: Jason Morse
# date: July 21, 2015
#

class Hexadecimal

  VALS =
    {
      '0' => 0, '1' => 1, '2' => 2, '3' => 3,
      '4' => 4, '5' => 5, '6' => 6, '7' => 7,
      '8' => 8, '9' => 9, 'a' => 10, 'b' => 11,
      'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15
    }

  def initialize(hex)
    @hex = hex
  end

  def to_decimal
    return 0 unless @hex.each_char.all? { |i| '0123456789abcdef'.include?(i) }
    @hex.reverse.chars.each_with_index.inject(0) do |sum, (digit, index)|
      sum + (VALS[digit] * (16**index))
    end
  end

end
