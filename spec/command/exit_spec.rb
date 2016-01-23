require 'spec_helper'

describe Command::Exit do
  let(:image) { double :image }
  let(:command) { Command::Exit.new(image) }

  describe '#exit?' do
    it { expect(command.exit?).to be(true) }
  end

  describe '#invalid?' do
    it { expect(command.valid?).to be(true) }
  end
end
