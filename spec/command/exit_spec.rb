require 'spec_helper'

describe Command::Exit do
  let(:exit) { Command::Exit.new }
  describe '#exit?' do
    it { expect(exit.exit?).to be(true) }
  end

  describe '#invalid?' do
    it { expect(exit.valid?).to be(true) }
  end
end
