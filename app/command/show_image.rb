module Command
  class ShowImage
    include Commandable

    def initialize(options = {})
      @image = options[:image]
    end

    def run
      @image.draw
    end
  end
end
