require 'spec_helper'

describe Command::ShowImage do
  let(:image) { Image.new }
  let(:show_image) { Command::ShowImage.new(x: 5, y: 10, image: image) }
  describe '#exit?' do
    it { expect(show_image.exit?).to be(false) }
  end

  describe '#invalid?' do
    it { expect(show_image.valid?).to be(true) }
  end

  describe '#run' do
    it 'should run create method on Image object' do
      expect(image).to receive(:draw)
      show_image.run
    end
  end
end
