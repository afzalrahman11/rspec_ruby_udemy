RSpec.describe 'allow method use cases' do
  it 'can customize return values for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(5)

    expect(calculator.add).to eq(5)
    expect(calculator.add(1,2,3,4)).to eq(5)
  end

  it 'can customize return values for methods on real objects' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10)
    
    expect(arr.sum).to eq(10)
  end

  it 'can return multiple return values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil)

    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to be_nil
  end
end