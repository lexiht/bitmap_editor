class Clear
  def self.apply(argument, bitmap)
    if bitmap.nil?
      puts "There's no image."
    else
      bitmap.matrix = Array.new(bitmap.height, Array.new(bitmap.width, 'O'))
    end
  end
end
