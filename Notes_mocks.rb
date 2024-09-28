4. MOCKS

1. Test Double
- allows defined methods to invoke on a double(as in cinema) of an object.
- ref:- 50_double_spec.rb

2. counts
- count how many times a method invoked.
- eg; expect(stuntman).to receive(:act).once
      expect(stuntman).to receive(:act).exactly(1).times
      expect(stuntman).to receive(:act).at_least(2).times
      expect(stuntman).to receive(:act).at_most(3).times

3. allow method 
- can use to overwrite default methods like sum in array.
- ref:- 54_allow_method_spec.rb

4. matching arguments
- will return different values depending on the arguments
- ref:- 55_matching_arguments_spec.rb
- ref:- https://rspec.info/features/3-12/rspec-mocks/setting-constraints/matching-arguments/

5. instance doubles
- you pass it the class whose instance you want to double on
- can only pass same methods with same number of arguments in the class.
- ref:- 56_instance_double_spec.rb