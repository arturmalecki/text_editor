require 'spec_helper'

describe Command::DrawVerticalSegment do
  let(:image) { double :image }
  let(:command) { Command::DrawVerticalSegment.new(image, [1, 5, 10, 'G']) }
  describe '#exit?' do
    it { expect(command.exit?).to be(false) }
  end

  describe '#invalid?' do
    it { expect(command.valid?).to be(true) }
  end

  describe '#run' do
    it 'should run draw vertical segment method on Image object' do
      expect(image).to receive(:draw_vertical_segment).with(1, 5, 10, 'G')
      command.run
    end
  end
end
