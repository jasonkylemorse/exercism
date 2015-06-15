# assignment 14: food-chain
# author: Jason Morse
# date: June 14, 2015
#

class FoodChain

  VERSION = 1

  def self.song
    song = File.open('song.txt').read
    song.each_line { |line| "#{line}" }
  end

end
