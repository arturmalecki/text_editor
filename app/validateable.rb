module Validateable
  private
  def valid_image?
    @errors.push('There is no image') unless @image.created?
  end

  def valid_x?(x)
    return if !@image.created?
    @errors.push("X should be between 1 and #{@image.x_size}") if x > @image.x_size or x < 1
  end

  def valid_y?(y)
    return if !@image.created?
    @errors.push("Y should be between 1 and #{@image.y_size}") if y > @image.y_size or y < 1
  end
end
