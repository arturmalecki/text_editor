class CommandParser
  def initialize(options = {})
    @board = options[:board]
  end
  def parse(command)
    if(command == 'X')
      ExitCommand.new
    elsif(command =~ /^I\ \d+\ \d+$/)
      create_new_board_command(command)
    else
      InvalidCommand.new
    end
  end

  private

  def create_new_board_command(command)
    _c = command.split(' ')
    NewBoardCommand.new(
      x: _c[1].to_i,
      y: _c[2].to_i,
      board: @board
    )
  end
end
