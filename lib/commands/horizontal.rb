class Horizontal
  def self.apply(argument, bitmap)
    if argument[0...-1].any? { |e| e.is_a?(String) }
      puts 'Invalid coordinate'
    else
      column_min = argument[0] - 1
      column_max = argument[1] - 1
      if column_min < 0 || column_max + 1 > bitmap.column
        puts 'The x coordinate is out of range'
      else
        row = argument[2] - 1
        colour = argument[3]
        selected_row = bitmap.matrix[row]
        selected_row.each_with_index do |value, index|
          if index >= column_min && index <= column_max
            selected_row[index] = colour
          end
        end
        bitmap
      end
    end
  end
end
