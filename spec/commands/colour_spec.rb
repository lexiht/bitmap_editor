require './lib/commands/colour.rb'
require './lib/bitmap.rb'

describe Colour do
  let(:old_bitmap) { Bitmap.new(1, 2) }

  describe '.apply' do
    context 'correct coordinate' do
      new_bitmap = Bitmap.new(1, 2)

      it 'replace O to C at coordinate 1, 1' do
        new_bitmap.matrix = [['C'], ['O']]
        expect(described_class.apply([1, 1, 'C'], old_bitmap)).to eq(new_bitmap)
      end

      it 'replace O to C at coordinate 1, 2' do
        new_bitmap.matrix = [['O'], ['C']]
        expect(described_class.apply([1, 2, 'C'], old_bitmap)).to eq(new_bitmap)
      end
    end

    context 'invalid argument returns false' do
      it 'when no coordinate is provided' do
        expect(described_class.valid?(['C'], old_bitmap)).to be false
      end

      it 'when coordinate is not Integer' do
        expect(described_class.valid?(['A','B','C'], old_bitmap)).to be false
      end

      it 'when coordinate is out of range' do
        expect(described_class.valid?([3, 4,'C'], old_bitmap)).to be false
      end

      it 'when coordinate is 0' do
        expect(described_class.valid?([0, 0,'C'], old_bitmap)).to be false
      end
    end
  end
end
