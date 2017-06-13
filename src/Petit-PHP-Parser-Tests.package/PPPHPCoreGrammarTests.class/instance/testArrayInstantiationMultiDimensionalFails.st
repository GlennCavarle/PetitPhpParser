grammar-array
testArrayInstantiationMultiDimensionalFails
	self
		fail: 'array(
				array(1,2,3),
				array(true,false)'
		rule: #arrayInstantiation.