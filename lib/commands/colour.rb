class Colour
  def self.apply(argument, bitmap)
    column, row = argument
    if argument.size != 3 || argument[0...-1].any? { |e| !e.is_a?(Integer) }
      puts 'Invalid coordinate'
    elsif !(1..bitmap.column).include?(column) || !(1..bitmap.row).include?(row)
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
