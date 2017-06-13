grammar-identifiers
testValidItentifierWithUnderscore
	self 
		parse: '_test' "result should be '_test' "
		rule: #validIdentifier.