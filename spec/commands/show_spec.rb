require './lib/commands/show.rb'
require './lib/bitmap.rb'

describe Show do
  describe '.apply' do
    it 'outputs the 1x1 matrix' do
      bitmap = Bitmap.new(1, 1)
      message = "\"O\"\n"
      expect { described_class.apply([], bitmap) }.to output(message).to_stdout
    end

    it 'outputs the 2x2 matrix' do
      bitmap = Bitmap.new(2, 2)
      message = "\"OO\"\n\"OO\"\n"
      expect { described_class.apply([], bitmap) }.to output(message).to_stdout
    end
  end
end
