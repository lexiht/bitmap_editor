require './lib/commands/create.rb'
require './lib/bitmap.rb'

describe Create do
  describe '.apply' do

    it 'returns a 3x3 matrix' do
      matrix = Bitmap.new(3, 3)
      expect(described_class.apply([3, 3], nil)).to eq(matrix)
    end

    it 'returns a 3x4 matrix' do
      matrix = Bitmap.new(3, 4)
      expect(described_class.apply([3, 4], nil)).to eq(matrix)
    end

    context 'invalid argument returns false' do
      it 'when argument is an empty array' do
        expect(described_class.valid?([], nil)).to be false
      end

      it 'when argument is an array of not Integer' do
        expect(described_class.valid?(["A", "B"], nil)).to be false
      end

      it 'when argument is the right length' do
        expect(described_class.valid?([3], nil)).to be false
      end

      it 'when column is out of range' do
        expect(described_class.valid?([251, 1], nil)).to be false
      end

      it 'when row is out of range' do
        expect(described_class.valid?([1, 251], nil)).to be false
      end
    end
  end
end
