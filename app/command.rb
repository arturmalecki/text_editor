class Command
  def initialize(options = {})
    @command = options[:command]
  end

  def exit?
    @command == 'X'
  end
end
