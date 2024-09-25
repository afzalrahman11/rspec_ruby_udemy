RSpec.describe 'matching arguments' do
  it 'can return different values depending on arguments' do
    mock_array = double    # [1, 2, 3]

    allow(mock_array).to receive(:first).with(no_args).and_return(1)
    allow(mock_array).to receive(:first).with(1).and_return([1])
    allow(mock_array).to receive(:first).with(2).and_return([1, 2])
    allow(mock_array).to receive(:first).with(be >= 3).and_return([1, 2, 3])

    expect(mock_array.first).to eq(1)
    expect(mock_array.first(1)).to eq([1])
    expect(mock_array.first(2)).to eq([1, 2])
    expect(mock_array.first(3)).to eq([1, 2, 3])
    expect(mock_array.first(100)).to eq([1, 2, 3])
  end
end