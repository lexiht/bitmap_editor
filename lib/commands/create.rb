class Create
  def self.apply(argument, bitmap)
    column = argument[0]
    row = argument[1]
    if argument.length != 2 || argument.any? { |e| !e.is_a?(Integer) }
      puts "Wrong input #{argument} after I"
    elsif !(1..250).include?(column) || !(1..250).include?(row)
      puts 'Input needs to be between 1 and 250 after I'
    else
      Bitmap.new(column, row)
    end
  end
end
