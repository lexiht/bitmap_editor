require './lib/commands/colour.rb'

describe Colour do
  describe '.apply' do
    it 'replace O to C at coordinate 1, 1' do
      old_matrix = Bitmap.new(1, 2)
      new_matrix = Bitmap.new(1, 2)
      new_matrix.matrix = [['C'], ['O']]
      expect(described_class.apply([1, 1, 'C'], old_matrix)).to eq(new_matrix)
    end

    it 'replace O to C at coordinate 1, 2' do
      old_matrix = Bitmap.new(1, 2)
      new_matrix = Bitmap.new(1, 2)
      new_matrix.matrix = [['O'], ['C']]
      expect(described_class.apply([1, 2, 'C'], old_matrix)).to eq(new_matrix)
    end
  end
end
