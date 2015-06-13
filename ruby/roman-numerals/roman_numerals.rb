# assignment 7: roman-numerals
# author: Jason Morse
# date: June 4, 2015; updated: June 12, 2015
#

class Fixnum

  SPECIAL_CASES = { 1 => 'I', 4 => 'IV', 5 => 'V', 9 => 'IX', 10 => 'X',
                    40 => 'XL', 50 => 'L', 90 => 'XC', 100 => 'C', 400 => 'CD',
                    500 => 'D', 900 => 'CM', 1000 => 'M' }

  def to_roman
    number = self
    result = ''

    while number > 0
      selection = SPECIAL_CASES.select { |k, _| k <= number }.keys.max
      result << SPECIAL_CASES[selection]
      number -= selection
    end

    result
  end

end
