require 'spaces.rb'

describe Spaces do

connection = PG.connect :dbname => 'bork_bnb_test'
connection.exec 'TRUNCATE TABLE borks'

describe '#all' do
  it 'returns spaces from database' do
    Spaces.add('Bork 1')
    Spaces.add('Bigger Bork 2')
    expect(described_class.all).to eq(['Bork 1', 'Bigger Bork 2'])
  end

end




  #
  #
  # describe '.all' do
  #   it 'returns all spaces in an array' do
  #     expected_spaces = ['flat 1', 'flat 2', 'flat 3']
  #     expect(Spaces.all).to include 'Bork 1'
  #     expect(Spaces.all).to include 'Bork 2'
  #
  #   end
  # end
  #
  # describe '.add' do
  #   it 'adds a space to the spaces array' do
  #     Spaces.add('flat 4')
  #     expect(Spaces.all).to include 'flat 4'
  #   end
  # end
end
