shared_examples 'validate image' do
  context 'when image is not created' do
    it 'should fail validation' do
      command.valid?
      expect(command.error_messages).to eql 'There is no image'
    end
  end
end

shared_examples 'validate x' do
  context 'when x is out of range' do
    it 'should fail validation' do
      image.create(10, 10)
      command.valid?
      expect(command.error_messages).to eql 'X should be between 1 and 10'
    end
  end
end

shared_examples 'validate y' do
  context 'when y is out of range' do
    it 'should fail validation' do
      image.create(10, 10)
      command.valid?
      expect(command.error_messages).to eql 'Y should be between 1 and 10'
    end
  end
end
