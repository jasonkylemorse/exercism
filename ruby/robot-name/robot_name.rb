# assignment: robot name
# author: Jason Morse
# date: June 4, 2015
# 

class Robot

  def initialize
    text = (0...2).map { (65 + rand(26)).chr }.join
    num = rand(100..999).to_s
    @name = text << num
  end

  def name
    if @name == nil
      text = (0...2).map { (65 + rand(26)).chr }.join
      num = rand(100..999).to_s
      @name = text << num
    end
    @name
  end

  def reset
    @name = nil
  end

end