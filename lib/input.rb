class Input
  def self.parse(file_path)
    return puts "please provide correct file" if file_path.nil? || !File.exists?(file_path)
  end
end
