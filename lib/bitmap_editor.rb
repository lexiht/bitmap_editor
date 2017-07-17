require_relative 'input.rb'
require_relative 'bitmap.rb'

require './lib/commands/clear.rb'
require './lib/commands/create.rb'
require './lib/commands/colour.rb'
require './lib/commands/horizontal.rb'
require './lib/commands/vertical.rb'
require './lib/commands/show.rb'

class BitmapEditor
  def initialize
    @commands = {
      'I' => Create,
      'C' => Clear,
      'L' => Colour,
      'V' => Vertical,
      'H' => Horizontal,
      'S' => Show
    }
  end

  def run(file_path)
    commands = Input.parse(file_path)
    bitmap = nil
    commands.each do |command, argument|
      if bitmap.nil? && command != 'I'
        puts !@commands[command].nil? ? "There's no image" : "Invalid command"
      elsif !@commands[command].valid?(argument, bitmap)
        puts "Invalid argument #{argument} for #{command}"
      else
        bitmap = @commands[command].apply(argument, bitmap)
      end
    end
  end
end
