require './lib/commands/horizontal.rb'
require './lib/bitmap.rb'

describe Horizontal do
  describe '.apply' do
    it 'replace an x range of O to C in 3x2 matrix' do
      old_bitmap = Bitmap.new(3, 2)
      new_bitmap = Bitmap.new(3, 2)
      new_bitmap.matrix = [['O', 'C', 'C'], ['O', 'O', 'O']]
      expect(described_class.apply([2, 3, 1, 'C'], old_bitmap)).to eq(new_bitmap)
    end

    it 'replace an x range of O to C in 2x2 matrix' do
      old_bitmap = Bitmap.new(2, 2)
      new_bitmap = Bitmap.new(2, 2)
      new_bitmap.matrix = [['O', 'O'], ['C', 'C']]
      expect(described_class.apply([1, 2, 2, 'C'], old_bitmap)).to eq(new_bitmap)
    end

    context 'invalid argument returns false' do
      it 'when x is out of range' do
        old_bitmap = Bitmap.new(2, 3)
        expect(described_class.valid?([4, 5, 1, 'C'], old_bitmap)).to be false
      end

      it 'when x is 0' do
        old_bitmap = Bitmap.new(2, 3)
        expect(described_class.valid?([0, 0, 1, 'C'], old_bitmap)).to be false
      end

      it 'when x coordinates are not Integer' do
        old_bitmap = Bitmap.new(2, 3)
        expect(described_class.valid?([1, 'A', 'B', 'C'], old_bitmap)).to be false
      end
    end
  end
end
