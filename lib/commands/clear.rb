class Clear
  class << self
    def apply(argument, bitmap)
      bitmap.reset
    end

    def valid?(argument, bitmap)
      return false if bitmap.nil?
    end
  end
end
