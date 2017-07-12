class Colour
  def self.apply(argument, bitmap)
    column, row = argument
    if argument.size != 3 || argument[0...-1].any? { |e| e.is_a?(String) }
      puts 'Invalid coordinate'
    elsif !(0..bitmap.column).include?(column) || !(0..bitmap.row).include?(row)
      puts 'Coordinate is out of range'
    else
      column -= 1
      row -= 1
      colour = argument[2]
      bitmap.matrix[row][column] = colour
    end
    bitmap
  end
end
