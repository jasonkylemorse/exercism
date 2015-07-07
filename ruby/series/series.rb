# assignment 20: series
# author: Jason Morse
# date: July 7, 2015
#

class Series

  def initialize(series)
    @ints = series.split('').map(&:to_i)
  end

  def slices(digits)
    if digits > @ints.size
      fail ArgumentError, 'Slice length is longer than the string'
    end
    result = []
    @ints.each_with_index do |_, i|
      result << @ints[i..i + digits - 1] unless i + digits > @ints.size
    end
    result
  end

end
