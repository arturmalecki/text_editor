module Command
  class ColorPixel
    include Commandable

    def initialize(image, params = {})
      @image = image
      @x = params[0]
      @y = params[1]
      @color = params[2]
    end

    def run
      @image.color_pixel(@x, @y, @color)
    end
  end
end
