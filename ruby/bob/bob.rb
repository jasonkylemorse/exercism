# assignment 13: bob
# author: Jason Morse
# date: June 10, 2015
#

class Bob

  def hey(remark)
    case
    when remark == remark.upcase && remark != remark.downcase
      'Whoa, chill out!'
    when remark[-1] == '?'
      'Sure.'
    when remark.strip.empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

end
