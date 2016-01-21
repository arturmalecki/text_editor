require 'spec_helper'

describe Command::DrawHorizontalSegment do
  let(:image) { double :image }
  let(:command) { Command::DrawHorizontalSegment.new(image, [1, 5, 10, 'G']) }
  describe '#exit?' do
    it { expect(command.exit?).to be(false) }
  end

  describe '#invalid?' do
    it { expect(command.valid?).to be(true) }
  end

  describe '#run' do
    it 'should run draw horizontal segment method on Image object' do
      expect(image).to receive(:draw_horizontal_segment).with(1, 5, 10, 'G')
      command.run
    end
  end
end
