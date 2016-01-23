require 'spec_helper'

describe Command::ShowImage do
  let(:image) { Image.new }
  let(:command) { Command::ShowImage.new(image, [5, 10]) }

  describe 'Validations' do
    include_examples 'validate image'
  end

  describe '#exit?' do
    it { expect(command.exit?).to be(false) }
  end

  describe '#run' do
    it 'should run create method on Image object' do
      expect(image).to receive(:draw)
      command.run
    end
  end
end
