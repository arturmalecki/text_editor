require 'spec_helper'

describe Image do
  let(:image) { Image.new }
  describe '#create' do
    it 'should create array filled with "O"' do
      expect(image.create(2, 3)).to eql [['O', 'O'], ['O', 'O'], ['O', 'O']]
    end
  end

  describe '#draw' do
    it 'should draw image' do
      image.create(2, 3)
      expect { image.draw }.to output("OO\nOO\nOO\n").to_stdout
    end
  end

  describe '#draw_horizontal_segment' do
    it 'should draw image' do
      image.create(5, 5)
      image.draw_horizontal_segment(2, 4, 1, 'W')

      expect { image.draw }.to output("OWWWO\nOOOOO\nOOOOO\nOOOOO\nOOOOO\n").to_stdout
    end
  end

  describe '#draw_vertical_segment' do
    it 'should draw image' do
      image.create(5, 5)
      image.draw_vertical_segment(1, 2, 5, 'W')

      expect { image.draw }.to output("OOOOO\nWOOOO\nWOOOO\nWOOOO\nWOOOO\n").to_stdout
    end
  end

  describe '#clear' do
    it 'should draw image' do
      image.create(5, 5)
      image.color_pixel(3, 3, 'W')
      image.clear

      expect { image.draw }.to output("OOOOO\nOOOOO\nOOOOO\nOOOOO\nOOOOO\n").to_stdout
    end
  end
end
