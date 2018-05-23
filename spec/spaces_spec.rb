require_relative '../lib/spaces'

describe Spaces do

describe '#all' do
  it 'returns spaces from database' do
    Spaces.add('Bork 1')
    Spaces.add('Bigger Bork 2')
    expect(described_class.all).to eq(['Bork 1', 'Bigger Bork 2'])
  end
end

end
