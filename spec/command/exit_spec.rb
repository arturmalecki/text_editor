require 'spec_helper'

describe Command::Exit do
  let(:image) { double :image }
  let(:exit) { Command::Exit.new(image) }
  describe '#exit?' do
    it { expect(exit.exit?).to be(true) }
  end

  describe '#invalid?' do
    it { expect(exit.valid?).to be(true) }
  end
end
