grammar-identifiers
testValidItentifierFails
	self 
		fail: '1_tes_2t' "starting with a number is not allowed "
		rule: #validIdentifier.
		