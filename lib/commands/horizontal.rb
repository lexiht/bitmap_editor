class Horizontal
  def self.apply(argument, bitmap)
    x_min = argument[0]
    x_max = argument[1]
    y = argument[2]
    colour = argument[3]
    selected_row = bitmap.matrix[y - 1]
    selected_row.each_with_index do |value, index|
      if index >= x_min && index <= x_max
        selected_row[index] = colour
      end
    end
    bitmap
  end
end
