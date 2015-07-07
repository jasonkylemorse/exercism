# assignment 18: sum of multiples
# author: Jason Morse
# date: July 6, 2015
#

require 'set'

class SumOfMultiples

  @mults = [3, 5]

  def initialize(*mults)
    @mults = mults
  end

  def self.to(num)
    return 0 if @mults.min >= num
    set = Set.new
    @mults.each do |mult|
      (mult...num).each { |i| set << i if i % mult == 0 }
    end
    set.inject(:+)
  end

  def to(num)
    return 0 if @mults.min >= num
    set = Set.new
    @mults.each do |mult|
      (mult...num).each { |i| set << i if i % mult == 0 }
    end
    set.inject(:+)
  end

end
