# assignment 36: say
# author: Jason Morse
# date: July 24, 2015
#

class Say

  NUMS =
    {
      0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three',
      4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven',
      8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
      12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen',
      16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen',
      20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty',
      60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'
    }

  RANGE = 0..999_999_999_999

  def initialize(num)
    fail ArgumentError, 'Number out of bounds!' unless RANGE.include?(num)
    @num = num
  end

  def in_english
    return NUMS[@num] if NUMS.key?(@num)
    result = ''
    translation = translate(@num)
    case translation.size
    when 1
      result << translation[0]
    when 2
      result << translation[0] << ' thousand ' << translation[1]
    when 3
      result << translation[0] << ' million '
      result << translation[1] << ' thousand ' unless translation[1].empty?
      result << translation[2] unless translation[2].empty?
    when 4
      result << translation[0] << ' billion '
      result << translation[1] << ' million ' unless translation[1].empty?
      result << translation[2] << ' thousand ' unless translation[2].empty?
      result << translation[3] unless translation[3].empty?
    end
    result.rstrip
  end

  private

  def translate(num)
    return NUMS[num] if NUMS.key?(num)
    words = []
    split(num).each do |chunk|
      case chunk.to_i.to_s.size
      when 1
        words << group_of_1(chunk.to_i)
      when 2
        words << group_of_2(chunk.to_i)
      when 3
        words << group_of_3(chunk.to_i)
      end
    end
    words
  end

  def group_of_1(num)
    return '' if num == 0
    NUMS[num]
  end

  def group_of_2(num)
    return '' if num == 0
    return NUMS[@num] if NUMS.key?(@num)
    tens_val = NUMS[num.to_s[0].to_i * 10]
    ones_val = group_of_1(num.to_s[1].to_i)
    ones_val.empty? ? "#{tens_val}" : "#{tens_val}-#{ones_val}"
  end

  def group_of_3(num)
    hundreds_val = NUMS[num.to_s[0].to_i]
    hundreds = "#{hundreds_val} hundred"
    if num.to_s[1].to_i == 0
      tens_ones_val = group_of_1(num.to_s[2].to_i)
    else
      tens_ones_val = group_of_2(num.to_s[1..2].to_i)
    end
    tens_ones_val.empty? ? hundreds : hundreds << ' ' << tens_ones_val
  end

  def split(num)
    num.to_s.reverse.chars.each_slice(3).map(&:join).reverse.map(&:reverse)
  end

end
