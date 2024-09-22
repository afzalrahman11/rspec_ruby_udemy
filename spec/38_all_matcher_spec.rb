RSpec.describe 'all matcher' do
  it 'allows for aggregate checkers' do
    expect([1,3,7]).to all(be_odd)
    expect([11,13,7]).to all(be < 17)
    expect([[], []]).to all(be_empty)
    expect([10,2,8]).to all(be_even)
  end
end