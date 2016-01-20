class CommandParser
  def initialize(options = {})
    @image = options[:image]
  end
  def parse(command)
    if(command == 'X')
      Command::Exit.new
    elsif(command == 'S')
      Command::ShowImage.new(image: @image)
    elsif(command =~ /^I\ \d+\ \d+$/)
      create_new_image_command(command)
    elsif(command =~ /^L\ \d+\ \d+\ [A-Z]{1}$/)
      color_pixel_command(command)
    else
      Command::Invalid.new
    end
  end

  private

  def create_new_image_command(command)
    _c = command.split(' ')
    Command::NewImage.new(
      x: _c[1].to_i,
      y: _c[2].to_i,
      image: @image
    )
  end

  def color_pixel_command(command)
    _c = command.split(' ')
    Command::ColorPixel.new(
      x: _c[1].to_i,
      y: _c[2].to_i,
      color: _c[3],
      image: @image
    )
  end
end
