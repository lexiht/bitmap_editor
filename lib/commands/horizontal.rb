class Horizontal
  class << self
    def apply(argument, bitmap)
      column_min = argument[0]
      column_max = argument[1]
      row = argument[2]
      colour = argument[3]
      if argument[0...-1].any? { |e| !e.is_a?(Integer) }
        puts 'Invalid coordinate'
      elsif column_min < 1 || column_max > bitmap.column
        puts 'The x coordinate is out of range'
      else
        column_min -= 1
        column_max -= 1
        row -= 1
        draw_horizontal(column_min, column_max, row, colour, bitmap)
      end
      bitmap
    end

    private

    def draw_horizontal(column_min, column_max, row, colour, bitmap)
        selected_row = bitmap.matrix[row]
        selected_row.each_with_index do |value, index|
          selected_row[index] = colour if (column_min..column_max).include?(index)
        end
      bitmap
    end
  end
end
