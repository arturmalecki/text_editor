require 'spec_helper'

describe Command::NewImage do
  let(:image) { Image.new }
  let(:new_image) { Command::NewImage.new(image, [5, 10]) }

  describe '#exit?' do
    it { expect(new_image.exit?).to be(false) }
  end

  describe '#valid?' do
    it { expect(new_image.valid?).to be(true) }
  end

  describe '#run' do
    it 'should run create method on Image object' do
      expect(image).to receive(:create).with(5, 10)
      new_image.run
    end
  end
end
