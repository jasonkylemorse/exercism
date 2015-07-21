# assignment 31: clock
# author: Jason Morse
# date: July 21, 2015
#

class Clock

  def initialize(hour, min)
    @time = Time.utc(2015, 7, 21, hour, min)
  end

  def self.at(hour, min = 0)
    new(hour, min)
  end

  def +(other)
    (@time + (60 * other)).strftime '%H:%M'
  end

  def -(other)
    (@time - (60 * other)).strftime '%H:%M'
  end

  def to_s
    @time.strftime '%H:%M'
  end

  def ==(other)
    to_s == other.to_s
  end

end
