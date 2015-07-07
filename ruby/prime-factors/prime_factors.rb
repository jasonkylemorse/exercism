# assignment 22: prime factors
# author: Jason Morse
# date: July 7, 2015
#

class PrimeFactors

  def self.for(num)
    prime_factors = []
    (2..num).each do |i|
      if num % i == 0
        prime_factors << i
        num /= i
        redo
      end
      break if num == 1
    end
    prime_factors
  end

end
