module Command
  class ColorPixel
    include Commandable

    def initialize(options = {})
      @x = options[:x]
      @y = options[:y]
      @color = options[:color]
      @image = options[:image]
    end

    def run
      @image.color_pixel(@x, @y, @color)
    end
  end
end
