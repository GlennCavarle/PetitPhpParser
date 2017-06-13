grammar-array
testArrayInstantiationAssociative
	self
		parse: 'array(
			"hashOne" => 23032,
			"hashTwo" => 45898,
			"hashThree" => null,
		)'
		rule: #arrayInstantiation.