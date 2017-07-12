class Create
  def self.apply(argument, bitmap)
    width = argument[0]
    height = argument[1]
    Bitmap.new(width, height)
  end
end
