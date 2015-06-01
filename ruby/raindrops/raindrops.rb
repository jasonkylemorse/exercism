# file: randrops.rb
# author: Jason Morse
# date: May 31, 2015
# 

require 'prime'

class Raindrops

  def self.convert(number)
    output = ''

    array_of_primes = number.prime_division.map(&:first) + number.prime_division.map(&:last)
    
    output << 'Pling' if array_of_primes.include?(3)
    output << 'Plang' if array_of_primes.include?(5)
    output << 'Plong' if array_of_primes.include?(7)
    output << number.to_s if (!array_of_primes.include?(3) && !array_of_primes.include?(5) && !array_of_primes.include?(7))
    
    return output

  end

end