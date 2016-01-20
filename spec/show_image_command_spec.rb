require 'spec_helper'

describe ShowImageCommand do
  let(:image) { Image.new }
  let(:show_image_command) { ShowImageCommand.new(x: 5, y: 10, image: image) }
  describe '#exit?' do
    it { expect(show_image_command.exit?).to be(false) }
  end

  describe '#invalid?' do
    it { expect(show_image_command.valid?).to be(true) }
  end

  describe '#run' do
    it 'should run create method on Image object' do
      expect(image).to receive(:draw)
      show_image_command.run
    end
  end
end
