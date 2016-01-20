require 'spec_helper'

describe ExitCommand do
  let(:exit_command) { ExitCommand.new }
  describe '#exit?' do
    it { expect(exit_command.exit?).to be(true) }
  end

  describe '#invalid?' do
    it { expect(exit_command.valid?).to be(true) }
  end
end
