require 'spec_helper'

describe Command::NewImage do
  let(:image) { Image.new }
  let(:command) { Command::NewImage.new(image, [5, 10]) }

  describe 'Validations' do
    context 'command with invalid x and y' do
      let(:command) { Command::NewImage.new(image, [0, 0]) }

      it 'should fail validation' do
        command.valid?
        expect(command.error_messages).to eql 'X should be between 1 and 250, Y should be between 1 and 250'
      end
    end
  end

  describe '#exit?' do
    it { expect(command.exit?).to be(false) }
  end

  describe '#valid?' do
    it { expect(command.valid?).to be(true) }
  end

  describe '#run' do
    it 'should run create method on Image object' do
      expect(image).to receive(:create).with(5, 10)
      command.run
    end
  end
end
