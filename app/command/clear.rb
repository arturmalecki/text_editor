module Command
  class Clear
    include Commandable
    include Validateable

    def initialize(image, params = {})
      @image = image
      @errors = []
    end

    def run
      @image.clear
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
    end
  end
end
