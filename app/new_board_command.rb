class NewBoardCommand
  def initialize(options = {})
    @x = options[:x]
    @y = options[:y]
    @board = options[:board]
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
    @board.create(@x, @y)
  end
end
