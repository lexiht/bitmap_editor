require './lib/commands/clear.rb'

describe Clear do
  describe '.apply' do
    it 'reset the 1x1 matrix to original state' do
      old_matrix = Bitmap.new(1, 1)
      old_matrix.matrix = [['C']]
      new_matrix = Bitmap.new(1, 1).matrix
      expect(described_class.apply([], old_matrix)).to eq(new_matrix)
    end

    it 'reset the 2x2 matrix to original state' do
      old_matrix = Bitmap.new(2, 2)
      old_matrix.matrix = [['C', 'C'], ['C', 'C'], ['C', 'C']]
      # why does the test still work?
      new_matrix = Bitmap.new(2, 2).matrix
      expect(described_class.apply([], old_matrix)).to eq(new_matrix)
    end

    it 'outputs error message when bitmap is nil' do
      message = "There's no image.\n"
      expect { described_class.apply([], nil)}.to output(message).to_stdout
    end
  end
end
