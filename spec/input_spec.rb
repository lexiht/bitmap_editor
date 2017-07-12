require './lib/input.rb'

describe Input do
  describe '.parse' do
    context 'incorrect file' do
      it 'outputs error message' do
        message = "please provide correct file\n"
        expect { described_class.parse('./test.txt') } .to output(message).to_stdout
      end
    end
  end
end
