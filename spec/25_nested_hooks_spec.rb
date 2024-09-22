RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end

  before(:example) do
    puts 'OUTER Before example'
  end
  
  it 'Sum of two numbers' do
    expect(4 + 7).to eq(11)
  end
  
  context 'with condition A' do
    before(:context) do
      puts 'INNER Before Context'
    end

    before(:example) do
      puts 'INNER Before example'
    end
  
    it 'product of two numbers' do
      expect(123 * 2).to eq(246)
    end

    it 'division of two numbers' do
      expect(24 / 6).to eq(4)
    end
  end
end

# before and after hooks
# OUTER Before context
# OUTER Before example
#   Sum of two numbers
#   with condition A
# INNER Before Context
# OUTER Before example
# INNER Before example
#     product of two numbers
# OUTER Before example
# INNER Before example
#     division of two numbers

# Finished in 0.00338 seconds (files took 0.1803 seconds to load)
# 3 examples, 0 failures
