# assignment 41: saddle-points
# author: Jason Morse
# date: July 29, 2015
#

class Matrix

  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = matrix.split("\n").map { |row| row.split(' ').map(&:to_i) }
    @columns = @rows.transpose
  end

  def saddle_points
    row_range = (0..@rows.size - 1)
    col_range = (0..@columns.size - 1)
    get_points(row_range, col_range)
  end

  private

  def get_points(row_range, col_range)
    results = []
    row_range.each do |row|
      col_range.each do |col|
        target = @rows[row][col]
        if target >= @rows[row].max && target <= @columns[col].min
          results << [row, col]
        end
      end
    end
    results
  end

end
