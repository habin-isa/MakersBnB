require 'spaces.rb'
describe Spaces do
  describe '.all' do
    it 'returns all spaces in an array' do
      expected_spaces = ['flat 1', 'flat 2', 'flat 3']
      expect(Spaces.all).to include 'flat 1'
      expect(Spaces.all).to include 'flat 2'
      expect(Spaces.all).to include 'flat 3'
    end
  end

  describe '.add' do
    it 'adds a space to the spaces array' do
      Spaces.add('flat 4')
      expect(Spaces.all).to include 'flat 4'
    end
  end
end
