# assignment 19: grade school
# author: Jason Morse
# date: July 7, 2015
#

class School

  def initialize
    @students = Hash.new
  end

  def add(name, grade)
    if !@students.has_key?(grade)
      @students[grade] = [name]
    else
      @students[grade] << name
      @students[grade].sort!
    end
  end

  def grade(grade)
    return [] unless @students.has_key?(grade)
    @students[grade]
  end

  def to_hash
    Hash[@students.sort]
  end

end