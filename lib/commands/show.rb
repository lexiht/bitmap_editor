class Show
  class << self
    def apply(argument, bitmap)
      bitmap.matrix.each { |array| p array.join('') }
    end

    def valid?(argument, bitmap)
      true
    end
  end
end
