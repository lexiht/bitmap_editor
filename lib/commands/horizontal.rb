class Horizontal
  class << self
    def apply(argument, bitmap)
      if argument[0...-1].any? { |e| e.is_a?(String) }
        puts 'Invalid coordinate'
      else
        column_min = argument[0] - 1
        column_max = argument[1] - 1
        row = argument[2] - 1
        colour = argument[3]
        draw_horizontal(column_min, column_max, row, colour, bitmap)
      end
      bitmap
    end

    private

    def draw_horizontal(column_min, column_max, row, colour, bitmap)
      if column_min < 0 || column_max + 1 > bitmap.column
        puts 'The x coordinate is out of range'
      else
        selected_row = bitmap.matrix[row]
        selected_row.each_with_index do |value, index|
          selected_row[index] = colour if (column_min..column_max).include?(index)
        end
      end
      bitmap
    end
  end
end
