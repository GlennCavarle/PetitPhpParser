grammar-literals
testFloatExponentDnum
	self
		parse: '1.2e3'
		rule: #floatExponentDnum.
	self
		parse: '7E-10'
		rule: #floatExponentDnum.
	self
		parse: '1.e-2'
		rule: #floatExponentDnum.