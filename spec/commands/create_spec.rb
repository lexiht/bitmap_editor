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

    context 'outputs error message' do
      it 'when argument is an empty array' do
        message = "Wrong input [] after I\n"
        expect { described_class.apply([], nil) }.to output(message).to_stdout
      end

      it 'when argument is an array of String' do
        message = "Wrong input [\"A\", \"B\"] after I\n"
        expect { described_class.apply(["A", "B"], nil) }.to output(message).to_stdout
      end

      it 'when argument is the right length' do
        message = "Wrong input [3] after I\n"
        expect { described_class.apply([3], nil) }.to output(message).to_stdout
      end
    end
  end
end
