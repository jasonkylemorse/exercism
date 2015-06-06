# assignment: nth prime 
# author: Jason Morse
# date: June 6, 2015
# 

# this is very slow for large requests

class Prime

  def nth(number)
    raise ArgumentError, 'Invalid input' unless number > 0
    count = 0
    prime_num = 1

    while count < number
      prime_num += 1
      count += 1 if isPrime?(prime_num)
    end

    prime_num
  end

  def isPrime?(n)
    return false if n < 2
    (2...((n ** 0.5).to_i + 1)).to_a.all? { |number| n % number != 0 }
  end

end