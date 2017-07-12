class Clear
  def self.apply(argument, bitmap)
    if bitmap.nil?
      puts "There's no image."
    else
      bitmap.reset
    end
  end
end
