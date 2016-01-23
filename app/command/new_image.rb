module Command
  class NewImage
    include Commandable

    def initialize(image, params)
      @image = image
      @x = params[0].to_i
      @y = params[1].to_i
      @errors = []
    end

    def run
      @image.create(@x, @y)
    end

    def valid?
      validate_range(@x, 'X')
      validate_range(@y, 'Y')
      @errors.empty?
    end

    def error_messages
      @errors.join(', ')
    end

    private

    def validate_range(value, name)
      if(value < 1 || value > 250)
        @errors.push "#{name} should be between 1 and 250"
      end
    end
  end
end
