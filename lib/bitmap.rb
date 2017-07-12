class Bitmap
  attr_reader :width, :height, :matrix

  def initialize(width, height)
    @width = width
    @height = height
    @matrix = Array.new(height, Array.new(width, 'O'))
  end

  def matrix=(new_matrix)
    raise RuntimeError, "Matrix dimensions mismatch" if dimensions != dimensions(new_matrix)
  end

  def ==(bitmap)
    self.width == bitmap.width && self.height == bitmap.height
  end

  private
  
  def dimensions(object = matrix)
    raise "Not a valid matrix." if matrix.nil? || !matrix.is_a?(Array)
    response = []
    response << object.size
    response << object[0].size
  end
end
