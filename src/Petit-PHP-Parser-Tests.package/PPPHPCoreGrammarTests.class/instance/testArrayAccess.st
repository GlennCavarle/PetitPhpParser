grammar-array
testArrayAccess
	self
		parse: '["index"]'
		rule: #arrayAccess.
	self
		parse: '[3]'
		rule: #arrayAccess.