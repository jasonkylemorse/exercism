# assignment 45: secret-handshake
# author: Jason Morse
# date: July 30, 2015
#

class SecretHandshake

  def initialize(num)
    (num.to_i == num) ? @num = num.to_s(2).rjust(5, '0') : @num = '00000'
  end

  def commands
    results = []
    results << 'wink' if @num[4] == '1'
    results << 'double blink' if @num[3] == '1'
    results << 'close your eyes' if @num[2] == '1'
    results << 'jump' if @num[1] == '1'
    results.reverse! if @num[0] == '1'
    results
  end

end
