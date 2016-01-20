class CommandParser
  def initialize(options = {})
    @image = options[:image]
  end
  def parse(command)
    if(command == 'X')
      ExitCommand.new
    elsif(command == 'S')
      ShowImageCommand.new(image: @image)
    elsif(command =~ /^I\ \d+\ \d+$/)
      create_new_image_command(command)
    else
      InvalidCommand.new
    end
  end

  private

  def create_new_image_command(command)
    _c = command.split(' ')
    NewImageCommand.new(
      x: _c[1].to_i,
      y: _c[2].to_i,
      image: @image
    )
  end
end
