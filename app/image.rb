class Image
  def initialize
    @data = nil
    @x_size = nil
    @y_size = nil
  end

  def create(x, y)
    @x_size = x
    @y_size = y
    @data = Array.new(y) { Array.new(x, 'O') }
  end

  def created?
    !@data.nil?
  end

  def x_size
    @x_size
  end

  def y_size
    @y_size
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

  def draw_vertical_segment(x, y1, y2, color)
    min_y, max_y = y1 >= y2 ? [y2, y1] : [y1, y2]
    min_y.upto(max_y).each do |y|
      color_pixel(x, y, color)
    end
  end

  def draw_horizontal_segment(x1, x2, y, color)
    min_x, max_x = x1 >= x2 ? [x2, x1] : [x1, x2]
    min_x.upto(max_x).each do |x|
      color_pixel(x, y, color)
    end
  end

  def clear
    1.upto(@y_size).each do |y|
      1.upto(@x_size).each do |x|
        color_pixel(x, y, 'O')
      end
    end
  end

  def fill(x, y, new_color, old_color = nil)
    old_color = get_pixel(x, y) if old_color.nil?
    if(x < 1 || y < 1 || x > @x_size || y > @y_size)
      return
    else
      if(get_pixel(x, y) == old_color)
        color_pixel(x, y, new_color)

        fill(x, y - 1, new_color, old_color)
        fill(x, y + 1, new_color, old_color)
        fill(x - 1, y, new_color, old_color)
        fill(x + 1, y, new_color, old_color)
      end
    end
  end

  private

  def get_pixel(x, y)
    @data[y - 1][x - 1]
  end
end
