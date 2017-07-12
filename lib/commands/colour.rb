class Colour
  def self.apply(argument, bitmap)
    if argument.size != 3 || argument[0...-1].any? { |e| e.is_a?(String) }
      puts 'Invalid coordinate'
    else
      column = argument[0] - 1
      row = argument[1] - 1
      colour = argument[2]
      bitmap.matrix[row][column] = colour
      bitmap
    end
  end
end
