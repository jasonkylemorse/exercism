# assignment 32: acronym
# author: Jason Morse
# date: July 21, 2015
#

class Acronym

  VERSION = 1

  def self.abbreviate(given)
    given.scan(/[A-Z]+[a-z]*|[a-z]+/).collect { |word| word[0].upcase }.join
  end

end
