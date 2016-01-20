class CommandParser
  def parse(command)
    if(command == 'X')
      ExitCommand.new
    else
      InvalidCommand.new
    end
  end
end
