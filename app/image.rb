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
end
