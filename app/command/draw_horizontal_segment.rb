module Command
  class DrawHorizontalSegment
    include Commandable
    include Validateable

    def initialize(image, params = {})
      @image = image
      @x1 = params[0].to_i
      @x2 = params[1].to_i
      @y = params[2].to_i
      @color = params[3]
      @errors = []
    end

    def run
      @image.draw_horizontal_segment(@x1, @x2, @y, @color)
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
      valid_x?(@x1)
      valid_x?(@x2)
      valid_y?(@y)
    end
  end
end
