grammar-identifiers
testDynamicIdentifier
	self 
		parse: '{"test"}'
		rule: #dynamicIdentifier.
	self 
		parse: '{$test}'
		rule: #dynamicIdentifier.
	