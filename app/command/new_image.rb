module Command
  class NewImage
    include Commandable

    def initialize(options = {})
      @x = options[:x]
      @y = options[:y]
      @image = options[:image]
    end

    def run
      @image.create(@x, @y)
    end
  end
end
