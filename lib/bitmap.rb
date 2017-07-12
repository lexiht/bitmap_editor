class Bitmap
  attr_reader :width, :height
  attr_accessor :matrix

  def initialize(width, height)
    @width = width
    @height = height
    @matrix = Array.new(height, Array.new(width, 'O'))
  end

  def ==(bitmap)
    self.width == bitmap.width && self.height == bitmap.height
  end
end
