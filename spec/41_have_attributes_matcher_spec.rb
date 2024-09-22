class Fruits
  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end

RSpec.describe 'have attributes matchers' do

  context Fruits.new('Apple', 'Red') do
    it 'checks whether the object attributes and proper values' do
      expect(subject).to have_attributes(name: 'Apple')
      expect(subject).to have_attributes(name: 'Apple', color: 'Red')
    end

    it { is_expected.to have_attributes(name: 'Apple')}
  end
end