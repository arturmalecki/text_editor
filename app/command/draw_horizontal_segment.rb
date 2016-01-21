module Command
  class DrawHorizontalSegment
    include Commandable

    def initialize(image, params = {})
      @image = image
      @x1 = params[0].to_i
      @x2 = params[1].to_i
      @y = params[2].to_i
      @color = params[3]
    end

    def run
      @image.draw_horizontal_segment(@x1, @x2, @y, @color)
    end
  end
end
