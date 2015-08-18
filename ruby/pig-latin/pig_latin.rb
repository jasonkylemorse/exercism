# assignment 48: pig-latin
# author: Jason Morse
# date: August 18, 2015
#

class PigLatin

  ALPHA = ('a'..'z').to_a
  VOWELS = %w(a e i o u)
  CONS = ALPHA - VOWELS
  SPECIALS_2 = %w(ch qu th yt)
  SPECIALS_3 = %w(thr sch)
  SPECIALS = %w(ty)
  XR_TY = %w(xr yt)
  XE = %w(xe)

  def self.translate(english)
    english.split(' ').map { |word| check_cases(word) }.join(' ')
  end

  def self.check_cases(word)
    if SPECIALS_3.include?(word[0..2])
      result = word[3..word.size] << word[0..2] << 'ay'
    elsif XR_TY.include?(word[0..1])
      result = word << 'ay'
    elsif XE.include?(word[0..1])
      result = word[1..word.size] << word[0] << 'ay'
    elsif SPECIALS_2.include?(word[0..1])
      result = word[2..word.size] << word[0..1] << 'ay'
    elsif CONSONANTS.include?(word[0]) && word[1..2] == 'qu'
      result = word[3..word.size] << word[0..2] << 'ay'
    else
      result = word << 'ay' if VOWELS.include?(word[0])
      result = word[1..word.size] << word[0] << 'ay' if CONS.include?(word[0])
    end
    result
  end

end
