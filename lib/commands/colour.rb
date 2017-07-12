class Colour
  def self.apply(argument, bitmap)
    x = argument[0]
    y = argument[1]
    colour = argument[2]
    bitmap.matrix[y][x] = colour
    bitmap
  end
end
