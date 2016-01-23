module Command
  class Fill
    include Commandable
    include Validateable

    def initialize(image, params = {})
      @image = image
      @x = params[0].to_i
      @y = params[1].to_i
      @color = params[2]
      @errors = []
    end

    def run
      @image.fill(@x, @y, @color)
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
      valid_y?(@y)
    end
  end
end
