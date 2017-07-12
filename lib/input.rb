class Input
  def self.parse(file_path)
    return puts "please provide correct file" if file_path.nil? || !File.exists?(file_path)
    commands = {}
    File.open(file_path).each do |line|
      arguments = line.strip.split(' ')
      command = arguments.shift
      arguments = arguments.map { |value| value =~ /\d+/ ? value.to_i : value }
      commands[command] = arguments
    end
    commands
  end
end
