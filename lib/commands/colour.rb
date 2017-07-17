class Colour
  class << self
    def apply(argument, bitmap)
      column, row, colour = argument
      column -= 1
      row -= 1
      bitmap.matrix[row][column] = colour
      bitmap
    end

    def valid?(argument, bitmap)
      column, row, colour = argument
      return false if argument.size != 3 || argument[0...-1].any? { |e| !e.is_a?(Integer) }
      return false if !(1..bitmap.column).include?(column) || !(1..bitmap.row).include?(row)
      true
    end
  end
end
