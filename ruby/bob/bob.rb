# assignment: bob
# author: Jason Morse
# date: June 10, 2015
# 

# all test cases pass but this can definitely be more concise (regex?)


class Bob

  def hey(remark)

    case
    when (remark[-1] == '?' && remark != remark.upcase) || (remark[-1] == '?' && !remark.gsub(/\W+/, '').chars.any? { |char| char.between?('a', 'z') || char.between?('A', 'Z') })
      'Sure.'
    when remark == remark.upcase && !remark.strip.empty? && remark.gsub(/\W+/, '').chars.any? { |char| char.between?('a', 'z') || char.between?('A', 'Z') }
      'Whoa, chill out!'
    when remark.strip.empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end

  end
end