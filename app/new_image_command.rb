class NewImageCommand
  def initialize(options = {})
    @x = options[:x]
    @y = options[:y]
    @image = options[:image]
  end

  def message
  end

  def exit?
    false
  end

  def valid?
    true
  end

  def run
    @image.create(@x, @y)
  end
end
