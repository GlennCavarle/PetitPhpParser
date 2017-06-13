grammar-array
testArrayInstantiationMultiDimensional
	self
		parse: 'array(
				array(1,2,3),
				array(true,false))'
		rule: #arrayInstantiation.