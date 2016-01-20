class Core
  def initialize
    @board = Board.new
    @command_parser = CommandParser.new
  end

  def run_console
    begin
      print '> '
      input = gets.chomp
      command = @command_parser.parse(input)
    end while !command.exit?
  end
end
