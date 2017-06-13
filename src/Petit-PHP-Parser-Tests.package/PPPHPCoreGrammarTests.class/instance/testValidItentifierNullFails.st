grammar-identifiers
testValidItentifierNullFails
	self 
		fail: 'null' "usually this could be correct but leads to problems when parsing"
		rule: #validIdentifier.
		