# assignment 26: beer song
# author: Jason Morse
# date: July 9, 2015
#

class BeerSong

  def verse(num)
    num == 0 ? num1 = 'No more' : num1 = num
    num == 0 ? num2 = 'no more' : num2 = num
    new_num = ('no more' if num == 1) || (99 if num == 0) || (num - 1)

    num == 1 ? plural1 = 'bottle' : plural1 = 'bottles'
    num == 2 ? plural2 = 'bottle' : plural2 = 'bottles'

    num == 1 ? one_it = 'it' : one_it = 'one'

    second1 = "Take #{one_it} down and pass it around, #{new_num} #{plural2} of beer on the wall.\n"
    second2 = "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

    num == 0 ? second_part = second2 : second_part = second1
    "#{num1} #{plural1} of beer on the wall, #{num2} #{plural1} of beer.\n" << second_part
  end

  def verses(first, last)
    result = ''
    (last..first).to_a.reverse_each { |i| result << verse(i) << "\n" }
    result
  end

  def sing
    verses(99, 0)
  end

end
