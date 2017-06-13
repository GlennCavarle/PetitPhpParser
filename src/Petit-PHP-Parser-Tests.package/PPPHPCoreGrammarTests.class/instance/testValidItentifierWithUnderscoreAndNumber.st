grammar-identifiers
testValidItentifierWithUnderscoreAndNumber
	self 
		parse: '_2tes2t' "result should be '_test' "
		rule: #validIdentifier.