grammar-array
testArrayInstantiationWithMultipleParameters
	self
		parse: 'array(2,3,4)'
		rule: #arrayInstantiation.
	self
		parse: 'array(null, false, "parsedString", 5)'
		rule: #arrayInstantiation.
	