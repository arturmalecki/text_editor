require 'spec_helper'

describe NewImageCommand do
  let(:image) { Image.new }
  let(:new_image_command) { NewImageCommand.new(x: 5, y: 10, image: image) }
  describe '#exit?' do
    it { expect(new_image_command.exit?).to be(false) }
  end

  describe '#invalid?' do
    it { expect(new_image_command.valid?).to be(true) }
  end

  describe '#run' do
    it 'should run create method on Image object' do
      expect(image).to receive(:create).with(5, 10)
      new_image_command.run
    end
  end
end
