require 'spec_helper'

describe Command::DrawVerticalSegment do
  let(:image) { Image.new }
  let(:command) { Command::DrawVerticalSegment.new(image, [1, 5, 10, 'G']) }

  describe 'Validations' do
    include_examples 'validate image'

    context 'command with invalid x' do
      let(:command) { Command::DrawVerticalSegment.new(image, [15, 1, 2, 'G']) }
      include_examples 'validate x'
    end

    context 'command with invalid y1' do
      let(:command) { Command::DrawVerticalSegment.new(image, [1, 15, 2, 'G']) }
      include_examples 'validate y'
    end

    context 'command with invalid y2' do
      let(:command) { Command::DrawVerticalSegment.new(image, [1, 1, 15, 'G']) }
      include_examples 'validate y'
    end
  end

  describe '#exit?' do
    it { expect(command.exit?).to be(false) }
  end

  describe '#run' do
    it 'should run draw vertical segment method on Image object' do
      expect(image).to receive(:draw_vertical_segment).with(1, 5, 10, 'G')
      command.run
    end
  end
end
