require 'spec_helper'

describe Command::DrawHorizontalSegment do
  let(:image) { Image.new }
  let(:command) { Command::DrawHorizontalSegment.new(image, [1, 5, 10, 'G']) }

  describe 'Validations' do
    include_examples 'validate image'

    context 'command with invalid x1' do
      let(:command) { Command::DrawHorizontalSegment.new(image, [15, 1, 2, 'G']) }
      include_examples 'validate x'
    end

    context 'command with invalid x2' do
      let(:command) { Command::DrawHorizontalSegment.new(image, [1, 15, 2, 'G']) }
      include_examples 'validate x'
    end

    context 'command with invalid y' do
      let(:command) { Command::DrawHorizontalSegment.new(image, [1, 1, 15, 'G']) }
      include_examples 'validate y'
    end
  end

  describe '#exit?' do
    it { expect(command.exit?).to be(false) }
  end

  describe '#run' do
    it 'should run draw horizontal segment method on Image object' do
      expect(image).to receive(:draw_horizontal_segment).with(1, 5, 10, 'G')
      command.run
    end
  end
end
