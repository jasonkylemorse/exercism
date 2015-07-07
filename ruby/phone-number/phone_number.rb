# assignment 21: phone number
# author: Jason Morse
# date: July 7, 2015
#

class PhoneNumber

  def initialize(number)
    @number = number
    @stripped
  end

  def number
    return '0000000000' if /[A-Za-z]/ =~ (@number)
    stripped = @number.tr('^0-9', '')
    stripped.slice!(0) if stripped[0] == '1' && stripped.size == 11
    return '0000000000' if stripped.size != 10
    @stripped = stripped
  end

  def area_code
    number
    @stripped[0..2]
  end

  def to_s
    number
    '(' + @stripped[0..2] + ') ' + @stripped[3..5] + '-' + @stripped[6..9]
  end

end
