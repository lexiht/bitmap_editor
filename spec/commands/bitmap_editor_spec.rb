require './lib/bitmap_editor.rb'

describe BitmapEditor do
  subject(:editor) { described_class.new }

  describe '#run' do
    it 'outputs the result of test.txt' do
      file_path = './spec/fixtures/test.txt'
      message = "\"AO\"\n\"OO\"\n"
      expect { editor.run(file_path) }.to output(message).to_stdout
    end

    it 'outputs the result of show.txt' do
      file_path = './spec/fixtures/show.txt'
      message = "\"OOOOO\"\n\"OOZZZ\"\n\"AWOOO\"\n\"OWOOO\"\n\"OWOOO\"\n\"OWOOO\"\n"
      expect { editor.run(file_path) }.to output(message).to_stdout
    end
  end
end
