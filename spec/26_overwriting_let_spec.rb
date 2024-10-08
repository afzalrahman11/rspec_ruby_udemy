require './lib/programming_language.rb'

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python') }

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no arguments' do
    let(:language) { ProgrammingLanguage.new }
    it 'should default to Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end  
  end
end