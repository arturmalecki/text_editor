module Command
  class ShowImage
    include Commandable

    def initialize(image, params = {})
      @image = image
    end

    def run
      @image.draw
    end
  end
end
