require_relative '../lib/spaces'

describe Spaces do

describe '#all' do
  it 'returns spaces from database' do
    data01 = { title: 'flat title01', description: 'flat description01', price: '100' }
    data02 = { title: 'flat title02', description: 'flat description02', price: '200' }
    Spaces.add(data01)
    Spaces.add(data02)
    expect(described_class.all).to eq([data01, data02])
  end
end

end
