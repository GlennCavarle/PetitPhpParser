grammar-identifiers
testValidItentifier
	self 
		parse: 'test' "result should be 'test' "
		rule: #validIdentifier.
	self 
		parse: 'A'
		rule: #validIdentifier.