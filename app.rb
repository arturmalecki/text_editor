require './app/core'
require './app/commandable'
require './app/command/exit'
require './app/command/invalid'
require './app/command/new_image'
require './app/command/show_image'
require './app/command_parser'
require './app/image'

class App
  def start
    puts "Text Editor"
    Core.new.run_console
  end
end
