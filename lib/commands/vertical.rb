class Vertical
  def self.apply(argument, bitmap)
    if argument[0...-1].any? { |e| e.is_a?(String) }
      puts 'Invalid coordinate'
    else
      column = argument[0] - 1
      row_min = argument[1] - 1
      row_max = argument[2] - 1
      colour = argument[-1]
      if row_min < 0 || row_max + 1 > bitmap.row
        puts 'The y coordinate is out of range'
      else
        bitmap.matrix.each_with_index do |array, index|
          if index >= row_min && index <= row_max
            array[column] = colour
          end
        end
        bitmap
      end
    end
  end
end
