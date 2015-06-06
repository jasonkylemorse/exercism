# assignment: robot name
# author: Jason Morse
# date: June 4, 2015; updated: June 5, 2015
# 

class Robot

  def initialize
    @name = ('A'..'Z').to_a.sample(2).join << (0..9).to_a.sample(3).join
  end

  def name
    initialize if @name == nil
    @name
  end

  def reset
    @name = nil
  end

end