RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }
  let(:word) { "cars" }
  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'can accept a custom error message' do
    expect(word).to satisfy('be a palindrome') do |value|
      joined = value + value.reverse
      joined == joined.reverse
    end
  end
end

RSpec.describe 'compound expectation matcher' do
  it 'checks for multiple expectations in a single line' do
    expect(10).to be_even.and be < 12
    expect('caterpillar').to start_with('cat').and end_with('lar')
    expect([1, 2, 3, 4, 5]).to include(1).or include(5)
  end
end