class Bitmap
  attr_reader :width, :height
  attr_accessor :matrix

  def initialize(width, height)
    @width = width
    @height = height
    @matrix = Array.new(height, Array.new(width, 'O'))
  end
end
