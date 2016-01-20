require './app/core'

class App
  def ping
    puts "Text Editor"
    Core.new.run_console
  end
end
