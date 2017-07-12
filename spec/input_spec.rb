require './lib/input.rb'

describe Input do
  describe '.parse' do
    context 'incorrect file' do
      it 'outputs error message' do
        message = "Please provide correct file\n"
        expect { described_class.parse('./test.txt') } .to output(message).to_stdout
      end
    end

    context 'correct file' do
      it 'returns the command from text file' do
        file_path = './spec/fixtures/test.txt'
        commands = {
          'I'=> [2, 2] ,
          'L'=> [1, 1, 'A'],
          'S'=> []
        }
        expect(described_class.parse(file_path)).to eq(commands)
      end
    end
  end
end
