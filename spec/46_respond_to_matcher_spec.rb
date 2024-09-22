class HotChocolate
  def drink
    "choco"
  end

  def discard
    "Plup!"
  end

  def purchase(number)
    "Purchased #{number} items"
  end
end

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:purchase)
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:discard) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end