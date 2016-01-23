module Command
  class DrawVerticalSegment
    include Commandable
    include Validateable

    def initialize(image, params = {})
      @image = image
      @x = params[0].to_i
      @y1 = params[1].to_i
      @y2 = params[2].to_i
      @color = params[3]
      @errors = []
    end

    def run
      @image.draw_vertical_segment(@x, @y1, @y2, @color)
    end

    def valid?
      validate
      @errors.empty?
    end

    def error_messages
      @errors.join(', ')
    end

    private

    def validate
      valid_image?
      valid_x?(@x)
      valid_y?(@y1)
      valid_y?(@y2)
    end
  end
end
