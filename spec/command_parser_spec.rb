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

    it 'should return Command::ColorPixel for L command' do
      expect(command_parser.parse('L 1 2 G')).to be_a_kind_of(Command::ColorPixel)
    end

    it 'should return Command::Fill for I command' do
      expect(command_parser.parse('F 1 2 G')).to be_a_kind_of(Command::Fill)
    end

    it 'should return Command::Clear for C command' do
      expect(command_parser.parse('C')).to be_a_kind_of(Command::Clear)
    end
  end
end
