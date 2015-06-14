# assignment 9: nth-prime
# author: Jason Morse
# date: June 6, 2015; updated: June 14, 2015
#

class Prime

  def nth(number)
    fail ArgumentError, "Input #{number} not greater than 0" unless number > 0
    count = 0
    prime_num = 1

    while count < number
      prime_num += 1
      count += 1 if prime?(prime_num)
    end

    prime_num
  end

  def prime?(n)
    n >= 2 && (2..(n ** 0.5).to_i).all? { |number| n % number != 0 }
  end

  private :prime?

end
