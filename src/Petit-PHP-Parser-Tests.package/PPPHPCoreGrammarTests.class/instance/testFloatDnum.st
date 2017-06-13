grammar-literals
testFloatDnum
	self
		parse: '.1234'
		rule: #floatDnum.
	self
		parse: '12.3948'
		rule: #floatDnum.
	self
		parse: '12.'
		rule: #floatDnum.