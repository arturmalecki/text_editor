require 'spec_helper'

describe CommandParser do
  describe '#parse' do
    let(:command_parser) { CommandParser.new }

    it 'should return command object' do
      expect(command_parser.parse('X')).to be_a_kind_of(Command)
    end

    it 'should return proper command object for X command' do
      expect(command_parser.parse('X').exit?).to be(true)
    end
  end
end
