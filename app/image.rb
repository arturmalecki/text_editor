class Image
  def initialize
    @data = nil
  end

  def create(x, y)
    @data = Array.new(y) { Array.new(x, 'O') }
  end
end
