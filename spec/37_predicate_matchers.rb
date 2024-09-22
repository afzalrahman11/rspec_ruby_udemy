RSpec.describe 'predicate methods and predicate matcher' do
  it 'can be tested with Ruby methods' do
    result = 18 / 3
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    expect(18 / 3).to be_even
    expect(5 - 4).not_to be_zero
    expect([]).to be_empty
    expect('Afzal Rahman').to be_include('man')
  end

  describe 10 do
    it { is_expected.to be_even }
  end
end