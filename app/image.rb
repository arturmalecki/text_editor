class Image
  def initialize
    @data = nil
  end

  def create(x, y)
    @data = Array.new(y) { Array.new(x, 'O') }
  end

  def draw
    @data.each do |row|
      row.each { |pixel| print pixel }
      puts
    end
  end

  def color_pixel(x, y, color)
    @data[y - 1][x - 1] = color
  end
end
