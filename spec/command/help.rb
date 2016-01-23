require 'spec_helper'

describe Command::Help do
  let(:image) { double :image }
  let(:command) { Command::Help.new(image) }

  describe '#exit?' do
    it { expect(command.exit?).to be(false) }
  end
end
