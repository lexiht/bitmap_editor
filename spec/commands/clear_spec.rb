require './lib/commands/clear.rb'
require './lib/bitmap.rb'

describe Clear do
  describe '.apply' do
    it 'reset the 1x1 matrix to original state' do
      old_matrix = Bitmap.new(1, 1)
      old_matrix.matrix = [['C']]
      new_bitmap = Bitmap.new(1, 1)
      expect(described_class.apply([], old_matrix)).to eq(new_bitmap)
    end

    it 'returns false when bitmap is nil' do
      expect(described_class.valid?([], nil)).to be false
    end

    it 'raises an error when old and new matrix does not have the same dimension' do
      bitmap = Bitmap.new(2, 2)
      expect { bitmap.matrix = Bitmap.new(3,2).matrix }.to raise_error(RuntimeError, 'Matrix dimensions mismatch')
    end
  end
end
