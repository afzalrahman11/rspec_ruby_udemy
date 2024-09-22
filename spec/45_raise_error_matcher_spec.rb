RSpec.describe 'raise error matchers' do

  def some_method
    x
  end

  class CustomError < StandardError ; end

  it 'raises any errors' do
    expect { some_method }.to raise_error(NameError)
    expect { 5 / 0 }.to raise_error(ZeroDivisionError)
    expect{ raise CustomError }.to raise_error(CustomError)
  end
end