require 'spec_helper'

describe CommandParser do
  describe '#parse' do
    let(:command_parser) { CommandParser.new }

    it 'should return ExitCommand object for X command' do
      expect(command_parser.parse('X')).to be_a_kind_of(ExitCommand)
    end

    it 'should return InvalidCommand for invalid command' do
      expect(command_parser.parse('invalid command')).to be_a_kind_of(InvalidCommand)
    end

    it 'should return NewBoardCommand for I command' do
      expect(command_parser.parse('I 12 34')).to be_a_kind_of(NewBoardCommand)
    end

    it 'should pass params to NewBoardCommand' do
      new_board_command = command_parser.parse('I 12 34')
      expect(new_board_command.instance_variable_get(:@x)).to eql(12)
      expect(new_board_command.instance_variable_get(:@y)).to eql(34)
    end
  end
end
