# assignment 27: space-age
# author: Jason Morse
# date: July 9, 2015
#

class SpaceAge

  attr_accessor :seconds

  def initialize(sec)
    @seconds = sec
  end

  def on_earth
    @seconds / 31_557_600.to_f
  end

  def on_mercury
    @seconds / (31_557_600.to_f * 0.2408467)
  end

  def on_venus
    @seconds / (31_557_600.to_f * 0.61519726)
  end

  def on_mars
    @seconds / (31_557_600.to_f * 1.8808158)
  end

  def on_jupiter
    @seconds / (31_557_600.to_f * 11.862615)
  end

  def on_saturn
    @seconds / (31_557_600.to_f * 29.447498)
  end

  def on_uranus
    @seconds / (31_557_600.to_f * 84.016846)
  end

  def on_neptune
    @seconds / (31_557_600.to_f * 164.79132)
  end

end
