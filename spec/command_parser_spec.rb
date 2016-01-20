require 'spec_helper'

describe CommandParser do
  describe '#parse' do
    let(:command_parser) { CommandParser.new }

    it 'should return Command::Exit object for X command' do
      expect(command_parser.parse('X')).to be_a_kind_of(Command::Exit)
    end

    it 'should return Command::Invalid for invalid command' do
      expect(command_parser.parse('invalid command')).to be_a_kind_of(Command::Invalid)
    end

    it 'should return Command::NewImage for I command' do
      expect(command_parser.parse('I 12 34')).to be_a_kind_of(Command::NewImage)
    end

    it 'should pass params to Command::NewImage' do
      new_image_command = command_parser.parse('I 12 34')
      expect(new_image_command.instance_variable_get(:@x)).to eql(12)
      expect(new_image_command.instance_variable_get(:@y)).to eql(34)
    end
  end
end
