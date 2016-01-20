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
end
