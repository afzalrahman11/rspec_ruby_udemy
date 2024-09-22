RSpec.describe 'equality matchers' do

  context 'eq matcher' do
    it 'tests for value and ignores types' do
      expect(7).to eq(7.0)
      expect(7).not_to eq(13)
    end
  end

  context 'eq matcher' do
    it 'tests for value and includes type' do
      expect(7.0).to eql(7.0)
      expect(7).not_to eql(7.0)
    end
  end

  context 'equal and be matcher' do
    let(:a) { [1, 2, 4] }
    let(:b) { [1, 2, 4] }
    let(:c) { b }

    it 'cares about object identity' do
      expect(b).to be(c)
      expect([1,2,3]).not_to be([1,2,3])
      expect(c).not_to equal([1, 2, 4])
    end
  end
end