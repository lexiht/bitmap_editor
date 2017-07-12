class Colour
  def self.apply(argument, bitmap)
    if argument.size != 3 || argument[0..1].any? { |e| e.is_a?(String) }
      puts 'Invalid coordinate'
    else
      x = argument[0] - 1
      y = argument[1] - 1
      colour = argument[2]
      bitmap.matrix[y][x] = colour
      bitmap
    end
  end
end
