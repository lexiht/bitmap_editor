require './lib/commands/horizontal.rb'
require './lib/bitmap.rb'

describe Horizontal do
  describe '.apply' do
    it 'replace an x range of O to C in 3x2 matrix' do
      old_bitmap = Bitmap.new(3, 2)
      new_bitmap = Bitmap.new(3, 2)
      new_bitmap.matrix = [['O', 'C', 'C'], ['O', 'O', 'O']]
      expect(described_class.apply([1, 2, 1, 'C'], old_bitmap)).to eq(new_bitmap)
    end
  end
end
