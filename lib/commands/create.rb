class Create
  def self.apply(argument, bitmap)
    if argument.length != 2 || argument.any? { |e| e.is_a?(String) }
      puts "Wrong input #{argument} after I"
    else
      column = argument[0]
      row = argument[1]
      Bitmap.new(column, row)
    end
  end
end
