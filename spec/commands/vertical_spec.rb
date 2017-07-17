require './lib/commands/vertical.rb'
require './lib/bitmap.rb'

describe Vertical do
  describe '.apply' do
    it 'replace an y range of O to C in 2x2 matrix' do
      old_bitmap = Bitmap.new(2, 2)
      new_bitmap = Bitmap.new(2, 2)
      new_bitmap.matrix = [['O', 'C'], ['O', 'C']]
      expect(described_class.apply([2, 1, 2, 'C'], old_bitmap)).to eq(new_bitmap)
    end

    it 'replace an y range of O to C in 2x3 matrix' do
      old_bitmap = Bitmap.new(2, 3)
      new_bitmap = Bitmap.new(2, 3)
      new_bitmap.matrix = [['O', 'O'], ['C', 'O'], ['C', 'O']]
      expect(described_class.apply([1, 2, 3, 'C'], old_bitmap)).to eq(new_bitmap)
    end

    context 'invalid argument' do
      it 'when y is out of range' do
        old_bitmap = Bitmap.new(2, 3)
        expect(described_class.valid?([1, 1, 4, 'C'], old_bitmap)).to be false
      end

      it 'outputs error message when y is 0' do
        old_bitmap = Bitmap.new(2, 3)
        expect(described_class.valid?([1, 0, 0, 'C'], old_bitmap)).to be false
      end

      it 'outputs error message when y coordinates are not Integer ' do
        old_bitmap = Bitmap.new(2, 3)
        expect(described_class.valid?([1, 'A', 'B', 'C'], old_bitmap)).to be false
      end
    end
  end
end
