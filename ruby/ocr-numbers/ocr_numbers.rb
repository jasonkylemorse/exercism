# assignment 47: ocr-numbers
# author: Jason Morse
# date: July 31, 2015
#

class OCR

  TRANS =
  {
    "\s_\s\n|\s|\n|_|\n\s\s\s" => '0',
    "\s\s\s\n\s\s|\n\s\s|\n\s\s\s" => '1',
    "\s_\s\n\s_|\n|_\s\n\s\s\s" => '2',
    "\s_\s\n\s_|\n\s_|\n\s\s\s" => '3',
    "\s\s\s\n|_|\n\s\s|\n\s\s\s" => '4',
    "\s_\s\n|_\s\n\s_|\n\s\s\s" => '5',
    "\s_\s\n|_\s\n|_|\n\s\s\s" => '6',
    "\s_\s\n\s\s|\n\s\s|\n\s\s\s" => '7',
    "\s_\s\n|_|\n|_|\n\s\s\s" => '8',
    "\s_\s\n|_|\n\s_|\n\s\s\s" => '9'
  }

  def initialize(text)
    @text = text
  end

  def convert
    rows = split_into_rows(@text)
    rows = condense_into_four_rows(rows) if rows.size > 4
    num_of_digits = rows[0].size / 3
    check_for_immediate_solution(@text) if num_of_digits == 1
    digits = slice_digits(rows, num_of_digits)
    result = match_digits(digits)
    result = add_commas(result, rows.size) if rows.size > 4
    result
  end

  private

  def split_into_rows(text)
    text.split("\n")
  end

  def condense_into_four_rows(text)
    result = text
    the_rest = text[4..text.size]
    the_rest.each_with_index { |item, index| text[index % 4] << item }
    result
  end

  def check_for_immediate_solution(text)
    TRANS.key?(text) ? TRANS[text] : '?'
  end

  def slice_digits(rows, num_of_digits)
    split = rows.map { |line| line.chars.each_slice(3).map(&:join) }
    results = []
    (0..num_of_digits - 1).each do |digit|
      val = ''
      (0..3).each do |index|
        val << split[index][digit] << "\n"
      end
      results << val.chop
    end
    results
  end

  def match_digits(digits)
    digits.collect { |item| TRANS.key?(item) ? TRANS[item] : '?' }.join
  end

  def add_commas(result, size)
    result.reverse.chars.each_slice(size / 4).map(&:join).join(',').reverse
  end

end
