RSpec.shared_examples 'A Ruby object with 3 elements' do
  it 'has only 3 elemets' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1,2,3] }
  include_examples 'A Ruby object with 3 elements'
end

RSpec.describe Hash do
  subject { {a: 1, b: 2, c: 3} }
  include_examples 'A Ruby object with 3 elements'
end

RSpec.describe String do
  subject { 'Afz' }
  include_examples 'A Ruby object with 3 elements'
end