require 'matrix'

class Bitmap
  attr_reader :column, :row, :matrix

  def initialize(column, row)
    @column = column
    @row = row
    @matrix = Array.new(row) { Array.new(column, 'O') }
  end

  def matrix=(new_matrix)
    raise RuntimeError, "Matrix dimensions mismatch" if dimensions != dimensions(new_matrix) && new_matrix.is_a?(Array)
    @matrix = new_matrix
    self
  end

  def ==(bitmap)
    raise "Object is not Bitmap #{bitmap.class}" if self.class != bitmap.class
    self.matrix == bitmap.matrix
  end

  def reset
    Bitmap.new(column, row)
  end

  private

  def dimensions(object = matrix)
    raise "Not a valid matrix." if matrix.nil? || !matrix.is_a?(Array)
    response = []
    response << object.size
    response << object[0].size
  end
end
