class Vertical
  def self.apply(argument, bitmap)
    column = argument[0] - 1
    row_min = argument[1] - 1
    row_max = argument[2] - 1
    colour = argument[-1]
    bitmap.matrix.each_with_index do |array, index|
      if index >= row_min && index <= row_max
        array[column] = colour
      end
    end
    bitmap
  end
end
