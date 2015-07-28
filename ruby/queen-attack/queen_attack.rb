# assignment 38: queen-attack
# author: Jason Morse
# date: July 28, 2015
#

class Queens

  attr_reader :white, :black

  def initialize(white: [0, 3], black: [7, 3])
    fail ArgumentError, 'Queens cannot occupy the same square' if white == black
    @white = white
    @black = black
  end

  # rubocop:disable Metrics/MethodLength
  def to_s
    board = <<-BOARD.chomp
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _
    BOARD
    board[(@white[0] * 16) + (@white[1] * 2)] = 'W'
    board[(@black[0] * 16) + (@black[1] * 2)] = 'B'
    board
  end

  def attack?
    white[0] == black[0] || white[1] == black[1] || diagonals
  end

  private

  def diagonals
    check_first_diag || check_second_diag
  end

  def check_first_diag
    (0..7).any? do |i|
      [@white[0] + i, @white[1] + i] == @black ||
        [@white[0] - i, @white[1] - i] == @black
    end
  end

  def check_second_diag
    (0..7).any? do |i|
      [@white[0] + i, @white[1] - i] == @black ||
        [@white[0] - i, @white[1] + i] == @black
    end
  end

end
