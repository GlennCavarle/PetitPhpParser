grammar-array
testArrayInstantiationWithSingleParameter
	self
		parse: 'array()'
		rule: #arrayInstantiation.
	self
		parse: 'array(true)'
		rule: #arrayInstantiation.