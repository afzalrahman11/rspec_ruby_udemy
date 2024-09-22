RSpec.describe 'change matchers' do
  subject { [1, 2, 3] }

  it 'checks whether the object state changes' do
    expect {subject.push(4)}.to change {subject.length}.from(3).to(4)
    expect { subject.push(4,5) }.to change { subject.length}.by(2)
  end

  it 'accepts negative arguments'do
    expect { subject.pop }.to change { subject.length}.by(-1)
  end
end

RSpec.describe 'contain exactly matchers' do
  subject { [1, 2, 3] }

  it 'checks whether the object contain exactly same arguments' do
    expect(subject).to contain_exactly(1,3,2)
    expect(subject).to contain_exactly(2,1,3)
  end

  it { is_expected.to contain_exactly(2,3,1)}
  it { is_expected.to contain_exactly(3,1, 2)}
end

RSpec.describe 'include matchers' do
  describe ( [1, 2, 3] ) do
    it 'checks whether the object contain the arguments' do
      expect(subject).to include(1,3)
      expect(subject).to include(3)
    end

    it { is_expected.to include(1)}
  end

  describe ( {a: 2, b: 4, c: 6} ) do
    it 'can check for key-value pair' do
      expect(subject).to include(:a)
      expect(subject).to include(b: 4)
    end

    it { is_expected.to include(a: 2, c: 6)}
  end
end