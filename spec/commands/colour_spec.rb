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

    context 'incorrect coordinate' do
      message = "Invalid coordinate\n"

      it 'outputs error message when no coordinate is provided' do
        expect { described_class.apply(['C'], old_bitmap) }.to output(message).to_stdout
      end

      it 'outputs error message when coordinate is not Integer' do
        expect { described_class.apply(['A','B','C'], old_bitmap) }.to output(message).to_stdout
      end

      it 'outputs error message when coordinate is out of range' do
        message = "Coordinate is out of range\n"
        expect { described_class.apply([3, 4,'C'], old_bitmap) }.to output(message).to_stdout
      end
    end
  end
end
