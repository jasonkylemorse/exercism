# assignment 15: sieve
# author: Jason Morse
# date: June 16, 2015
#

class Sieve

  def initialize(limit)
    @limit = limit
  end

  def primes
    my_primes = (2..@limit).to_a
    my_primes.each do |prime|
      my_primes -= my_primes.select { |num| num % prime == 0 && num > prime }
    end
    my_primes
  end

end
