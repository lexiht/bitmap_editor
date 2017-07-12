class Clear
  def self.apply(argument, bitmap)
    bitmap.matrix = Array.new(bitmap.height, Array.new(bitmap.width, 'O'))
  end
end
