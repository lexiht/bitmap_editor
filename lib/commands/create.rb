class Create
  def self.apply(argument, bitmap)
    if argument.length != 2 || argument.any? { |e| e.is_a?(String) }
      puts "Wrong input #{argument} after I"
    else
      width = argument[0]
      height = argument[1]
      Bitmap.new(width, height)
    end
  end
end
