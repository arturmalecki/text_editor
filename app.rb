require './app/core'
require './app/command'
require './app/command_parser'
require './app/board'

class App
  def ping
    puts "Text Editor"
    Core.new.run_console
  end
end
