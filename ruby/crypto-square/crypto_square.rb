# assignment 30: crypto-square
# author: Jason Morse
# date: July 16, 2015
#

class Crypto

  def initialize(message)
    @message = message
  end

  def normalize_plaintext
    @message.scan(/[a-zA-Z0-9]/).join.downcase
  end

  def size
    mes = normalize_plaintext
    (mes.length**0.5).ceil
  end

  def plaintext_segments
    normalize_plaintext.chars.each_slice(size).map(&:join)
  end

  def ciphertext
    segs = plaintext_segments
    result = ''
    (0..size - 1).each do |char|
      (0..segs.length - 1).each do |word|
        result << segs[word][char] unless segs[word][char].nil?
      end
    end
    result
  end

  def normalize_ciphertext
    segs = plaintext_segments
    result = ''
    (0..size - 1).each do |char|
      (0..segs.length - 1).each do |word|
        result << segs[word][char] unless segs[word][char].nil?
      end
      result << ' '
    end
    result.chop!
  end

end
