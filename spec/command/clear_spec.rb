require 'spec_helper'

describe Command::Clear do
  let(:image) { Image.new }
  let(:command) { Command::Clear.new(image, [5, 10, 'G']) }

  describe 'Validations' do
    include_examples 'validate image'
  end

  describe '#exit?' do
    it { expect(command.exit?).to be(false) }
  end

  describe '#run' do
    it 'should run create method on Image object' do
      image.create(10, 10)
      expect(image).to receive(:clear)
      command.run
    end
  end
end
