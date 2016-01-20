require 'spec_helper'

describe NewBoardCommand do
  let(:board) { Board.new }
  let(:new_board_command) { NewBoardCommand.new(x: 5, y: 10, board: board) }
  describe '#exit?' do
    it { expect(new_board_command.exit?).to be(false) }
  end

  describe '#invalid?' do
    it { expect(new_board_command.valid?).to be(true) }
  end

  describe '#run' do
    it 'should run create method on Board object' do
      expect(board).to receive(:create).with(5, 10)
      new_board_command.run
    end
  end
end
