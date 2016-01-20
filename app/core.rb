class Core
  def initialize
    @image = Image.new
    @command_parser = CommandParser.new(image: @image)
  end

  def run_console
    begin
      print '> '
      input = gets.chomp
      command = @command_parser.parse(input)
      command.run
      puts "< #{command.message}"
    end while !command.exit?
  end
end
