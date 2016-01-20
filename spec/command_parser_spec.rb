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
  end
end
