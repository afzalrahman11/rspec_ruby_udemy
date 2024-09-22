3. Built-In Matchers [ 33 - ]

1. 'eq' vs 'eql' vs 'equal'/'be'
- 'eq' checks only the value, 'eql' checks value and type and 'equal' checks identity 
  along with these two (ie, value, type and identity). For eg; 
  --  5 eq(5.0)  --> true
  --  5 eql(5.0) -->false
  --  let(:a) { [1, 2] }
      let(:b) { [1, 2] }
      let(:c) { b }
      a eq(b)   --> true
      a eql(c)  --> true
      a equal(c)--> false
      c be(b)   --> true
    # Identity means the address they're stored in. c has different address than a,
    # even though they have the same data.
- ref:- 35_equality_matchers.rb

2. comparison matchers
- use mathematical comparison '<', '>' and so.
- describe method can invoke subjet with direct values like initialize with a particular class.
  For eg, describe Array do
            it { is_expected.to eq([])} -- true
          end

          Similarly, describe 100 do
                       it { is_expected.to be <= 105 } -- true
                     end
                      
3. Predicate matchers
- for predicate methods like even?, empty? . . . rspec has predicate matchers like 
  be_even, be_empty
- ref:- 37_predicate_matchers.rb

4. Change matchers
- checks whether the object state changes.
- ref:- 40_change_matchers_spec.rb

5. contain_exactly matchers
- check exactly the same arguments regardless of order in the object.
- ref:- 40_change_matchers_spec.rb

6. Have attributes matchers
- check for hash
- ref:- 41_have_attributes_matcher_spec.rb

7. Incldue Matchers (similar to Ruby includes method)
- check the arguments regardless of order included in the object.
- ref:- 40_change_matchers_spec.rb

8. start_with and end_with matchers
- subject { 'Iphone 16 series has not much innovation than the previous year' }
  expect(subject).to start_with('Iphone')
  expect(subject).to end_with('year')
  it { is_expected.to start_with('Iphone') }

9. raise error matchers
- to raise errors by its name
- need to mention the correct ruby error names like NameError, DivisionByZero etc.
- ref:- 45_raise_error_matcher_spec.rb

10. respond_to matchers
- check if an object responds to a method