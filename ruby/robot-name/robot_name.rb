# assignment 8: robot-name
# author: Jason Morse
# date: June 4, 2015; updated: June 12, 2015
#

class Robot

  def generate_name
    ('A'..'Z').sample(2).join << (0..9).to_a.sample(3).join
  end

  def name
    @name ||= generate_name
  end

  def reset
    @name = nil
  end

end
