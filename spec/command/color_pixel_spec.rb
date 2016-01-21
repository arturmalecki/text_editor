require 'spec_helper'

describe Command::ColorPixel do
  let(:image) { Image.new }
  let(:new_image) { Command::ColorPixel.new(image, [5, 10, 'G']) }
  describe '#exit?' do
    it { expect(new_image.exit?).to be(false) }
  end

  describe '#invalid?' do
    it { expect(new_image.valid?).to be(true) }
  end

  describe '#run' do
    it 'should run create method on Image object' do
      expect(image).to receive(:color_pixel).with(5, 10, 'G')
      new_image.run
    end
  end
end
