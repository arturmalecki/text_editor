require 'spec_helper'

describe Command::Fill do
  let(:image) { Image.new }
  let(:command) { Command::Fill.new(image, [5, 10, 'G']) }

  describe 'Validations' do
    include_examples 'validate image'

    context 'command with invalid x' do
      let(:command) { Command::Fill.new(image, [15, 1, 'G']) }
      include_examples 'validate x'
    end

    context 'command with invalid y' do
      let(:command) { Command::Fill.new(image, [1, 15, 'G']) }
      include_examples 'validate y'
    end
  end

  describe '#exit?' do
    it { expect(command.exit?).to be(false) }
  end

  describe '#run' do
    it 'should run create method on Image object' do
      image.create(10, 10)
      expect(image).to receive(:fill).with(5, 10, 'G')
      command.run
    end
  end
end
