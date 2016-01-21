module Command
  class NewImage
    include Commandable

    def initialize(image, params)
      @image = image
      @x = params[0].to_i
      @y = params[1].to_i
    end

    def run
      @image.create(@x, @y)
    end
  end
end
