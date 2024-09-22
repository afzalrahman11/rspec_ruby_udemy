RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end 
  end

  context 'one liner syntax' do
    it { is_expected.to eq(5) }
  end
end

# shorthand syntax
#   classic syntax
#     should equal 5
#   one liner syntax
#     is expected to eq 5
