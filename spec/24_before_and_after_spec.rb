RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before context'
  end
  after(:context) do
    puts 'After context'
  end
  
  before(:example) do
    puts 'Before example'
  end
  after(:example) do
    puts 'After example'
  end
  it 'first random example' do
    expect(4 + 7).to eq(11)
  end
  it 'last random example' do
    expect(123 * 2).to eq(246)
  end
end