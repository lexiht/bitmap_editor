require './lib/bitmap.rb'

describe Bitmap do
  subject(:bitmap2x2) { described_class.new(2, 2)}
  subject(:bitmap2x3) { described_class.new(2, 3)}

  describe '#reset' do
    it 'clears the 2x2 matrix to original state' do
      bitmap2x2.matrix = [['C', 'C'], ['C', 'C']]
      new_matrix = Bitmap.new(2, 2).matrix
      expect(bitmap2x2.reset).to eq(new_matrix)
    end

    it 'clears the 2x3 matrix to original state' do
      bitmap2x3.matrix = [['C', 'C'], ['C', 'C'], ['O', 'O']]
      new_matrix = Bitmap.new(2, 3).matrix
      expect(bitmap2x3.reset).to eq(new_matrix)
    end
  end
end
