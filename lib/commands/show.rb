class Show
  def self.apply(argument, bitmap)
    bitmap.matrix.each { |array| p array.join('') }
  end
end
