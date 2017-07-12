require './lib/bitmap_editor.rb'

describe BitmapEditor do
  subject(:editor) { described_class.new }
  let(:message) {"\"AO\"\n\"OO\"\n"}

  describe '#run' do
    it 'outputs the result of test.txt' do
      file_path = './spec/fixtures/test.txt'
      expect { editor.run(file_path) }.to output(message).to_stdout
    end
  end
end
