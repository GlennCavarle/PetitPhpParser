grammar-literals
testFloatDnumFail
	self
		fail: '..1234'
		rule: #floatDnum.
	self
		fail: '1'
		rule: #floatDnum.
	self
		fail: '123'
		rule: #floatDnum.