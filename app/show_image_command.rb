class ShowImageCommand
  def initialize(options = {})
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
    @image.draw
  end
end
