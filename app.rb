require './app/core'
require './app/commandable'
require './app/validateable'
require './app/command/exit'
require './app/command/invalid'
require './app/command/new_image'
require './app/command/show_image'
require './app/command/color_pixel'
require './app/command/draw_vertical_segment'
require './app/command/draw_horizontal_segment'
require './app/command/clear'
require './app/command/fill'
require './app/command/help'
require './app/command_parser'
require './app/image'

class App
  def start
    puts "Text Editor"
    Core.new.run_console
  end
end
