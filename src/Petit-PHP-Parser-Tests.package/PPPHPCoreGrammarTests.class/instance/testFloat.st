grammar-literals
testFloat
	self
		parse: '.1234'
		rule: #float.
	self
		parse: '12.3948'
		rule: #float.
	self
		parse: '1.e7'
		rule: #float.
	self
		parse: '2E-7'
		rule: #float.