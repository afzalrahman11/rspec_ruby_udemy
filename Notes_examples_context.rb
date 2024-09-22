2. Subjects, Shared Examples, and Shared Context - [ 21 - 32 ]

21. Reducing Duplication: The let Method
# Advantages
- Memoization :- Caching the result of a computationally expensive operation to reuse it later
- Lazy Loading :- Loading only when needed.
    eg:
    Rspec.describe..
    let(:card) { Card.new('Ace', 'Spades')}
    .
    .
    end
    Here, card variable is only generated/loaded when there is a call in any of the assertions.

23. The Context method and Nested Describes
- describe/context method is used to nest the conditions or group the contexts.
- eg: check 23_context_spec.rb

24. The Before and After hooks
- ref:- 24_before_and_after_spec.rb

25. Nested Logic: hooks
- ref:- 25_nested_hooks_spec.rb

26. Overwriting let variables
- ref:- 26_overwriting_let_variables

27. Implicit subject
- subject helper method is already defined in the rspec, as we can use it without invoking it.
- subject will initialize and store an instant of the class, for eg; [] for Array and {} for Hash.
- ref:- 27_array_spec.rb
28. Explicit subject
- override the subject method
- give other names [ we can use subject or alias in the same describe group. ]
- ref:- 28_array2_spec.rb

29. One-liner syntax
- this is available for subject
- eq;-  it 'should equal 5' do
          expect(subject).to eq(5)
        end 

        replace with:- it { is_expected.to eq(5) }
- ref:- 29_one_liner_syntax_spec.rb

30. described class
- used for avoid hectic work if class name is changed.
- it gives a dynamic class which will get the new class, without changing the name everywhere.
- eg:- 30_described_class_spec.rb

31. shared examples
- repeating examples can be shared to reduce redundancy.
- ref:- 31_shared_examples_spec.rb

32. shared context
- repeating context can be shared to reduce redundancy.
- ref:- 32_shared_context_spec.rb