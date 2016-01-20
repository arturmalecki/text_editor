require 'spec_helper'

describe Image do
  let(:Image) { Image.new }
  describe '#create' do
    it 'should create array filled with "O"' do
      image = Image.new
      expect(image.create(2 ,3)).to eql [['O', 'O'], ['O', 'O'], ['O', 'O']]
    end
  end
end
