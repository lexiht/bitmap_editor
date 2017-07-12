class Input
  class << self
    def parse(file_path)
      return puts "please provide correct file" if file_path.nil? || !File.exists?(file_path)
      commands = {}
      File.open(file_path).each do |line|
        arguments = line.strip.split(' ')
        command = arguments.shift
        arguments = normalise(arguments)
        commands[command] = arguments
      end
      commands
    end

    private

    def normalise(arguments)
      arguments.map do |value|
        value =~ /\d+/ ? value.to_i : value
      end
    end
  end
end
