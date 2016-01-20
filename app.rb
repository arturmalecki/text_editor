require './app/core'
require './app/exit_command'
require './app/invalid_command'
require './app/new_board_command'
require './app/command_parser'
require './app/board'

class App
  def start
    puts "Text Editor"
    Core.new.run_console
  end
end
