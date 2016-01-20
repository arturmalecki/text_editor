require 'spec_helper'

describe Board do
  let(:Board) { Board.new }
  describe '#create' do
    it 'should create array filled with "O"' do
      board = Board.new
      expect(board.create(2 ,3)).to eql [['O', 'O'], ['O', 'O'], ['O', 'O']]
    end
  end
end
