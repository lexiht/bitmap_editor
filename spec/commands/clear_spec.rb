require './lib/commands/clear.rb'

describe Clear do
  describe '.apply' do
    it 'reset the matrix to original state' do
      old_matrix = Bitmap.new(1, 1)
      old_matrix.matrix = [['C']]
      new_matrix = Bitmap.new(1, 1).matrix
      expect(described_class.apply([], old_matrix)).to eq(new_matrix)
    end
  end
end
