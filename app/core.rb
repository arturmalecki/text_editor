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
      show_command_message(command)
    end while !command.exit?
  end

  private

  def show_command_message(command)
    puts "< #{command.message}" if command.message
  end
end
