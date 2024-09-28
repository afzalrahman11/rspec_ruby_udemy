class Person
  def a(say)
    sleep(2)
    'Hello'
  end
end

RSpec.describe Person do
  describe 'instance double' do
    it 'normal double' do
      person = double(a: 'Hello', b: 23)
      allow(person).to receive(:a).and_return('Hello')
      expect(person.b).to eq(23)
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined in the class' do
      person = instance_double(Person)
      allow(person).to receive(:a).with('hi').and_return('Hello')
      # allow(person).to receive(:b).and_return(23)  --> error: no function :b on the class.
      # expect(person.a).to eq('Hi')  --> error: no arguments passed.
    end
  end

end