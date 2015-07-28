# assignment 39: palindrome-products
# author: Jason Morse
# date: July 28, 2015
#

Palindrome = Struct.new(:value, :factors)

class Palindromes

  def initialize(max_factor: 1, min_factor: 1)
    @min = min_factor
    @max = max_factor
  end

  def generate
    @results = {}
    (@min..@max).each do |i|
      (@min..@max).each do |j|
        product = i * j
        if palindrome?(product)
          new_pal = @results[product] || Palindrome.new(product, [])
          new_pal.factors << [i, j].sort
          new_pal.factors.uniq!
          @results[product] = new_pal
        end
      end
    end
  end

  def palindrome?(product)
    product.to_s.reverse == product.to_s
  end

  def sort
    @results.sort_by { |key, _| key }
  end

  def largest
    sort.max[1]
  end

  def smallest
    sort.min[1]
  end

end
