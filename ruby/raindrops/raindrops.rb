# assignment: raindrops
# author: Jason Morse
# date: May 31, 2015; updated: June 5, 2015
# 

class Raindrops

  def self.convert(number)
    output = ""
    
    output << "Pling" if number % 3 == 0
    output << "Plang" if number % 5 == 0
    output << "Plong" if number % 7 == 0
    output << number.to_s if output == ""
    
    output

  end

end