RSpec.describe Array do

  subject(:sally) do
    [1, 15]
  end

  it 'should start off empty' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(sally).to eq(subject)
  end
end