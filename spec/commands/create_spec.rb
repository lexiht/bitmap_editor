require './lib/commands/create.rb'
require './lib/bitmap.rb'

describe Create do
  describe '.apply' do
    it 'returns a 3x3 matrix' do
      argument = [3, 3]
      width = argument[0]
      height = argument[1]
      bitmap = nil
      matrix = Bitmap.new(width, height)
      expect(described_class.apply(argument, bitmap)).to eq(matrix)
    end
  end
end
