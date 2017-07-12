class Horizontal
  def self.apply(argument, bitmap)
    column_min = argument[0] - 1
    column_max = argument[1] - 1
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
