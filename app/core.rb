class Core
  def initialize
    @board = Board.new
    @command_parser = CommandParser.new(board: @board)
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
