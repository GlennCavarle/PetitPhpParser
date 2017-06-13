grammar-identifiers
testValidItentifierWithBooleanFails
	self 
		fail: 'true' "language construct"
		rule: #validIdentifier.
		