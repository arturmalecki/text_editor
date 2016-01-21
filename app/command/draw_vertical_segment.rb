module Command
  class DrawVerticalSegment
    include Commandable

    def initialize(image, params = {})
      @image = image
      @x = params[0].to_i
      @y1 = params[1].to_i
      @y2 = params[2].to_i
      @color = params[3]
    end

    def run
      @image.draw_vertical_segment(@x, @y1, @y2, @color)
    end
  end
end
