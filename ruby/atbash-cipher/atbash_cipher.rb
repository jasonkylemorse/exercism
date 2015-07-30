# assignment 43: atbash-cipher
# author: Jason Morse
# date: July 30, 2015
#

class Atbash

  ALPHA = ('a'..'z').to_a
  REVERSE = ALPHA.reverse

  def self.encode(message)
    stripped = format_message(message)
    encoded = swap_chars(stripped)
    result = add_spaces(encoded)
    result
  end

  def self.format_message(message)
    message.gsub(/[\W+]/, '').downcase
  end

  def self.swap_chars(stripped)
    encoded = ''
    stripped.each_char do |char|
      index = ALPHA.index(char)
      index.nil? ? encoded << char : encoded << REVERSE[index]
    end
    encoded
  end

  def self.add_spaces(encoded)
    sliced = encoded.chars.each_slice(5).map(&:join)
    sliced.collect { |chunk| chunk << ' ' }.join.chop!
  end

end
