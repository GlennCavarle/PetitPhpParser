grammar-identifiers
testValidItentifierWithUnderscoresAndNumber
	self 
		parse: '_tes_2t' "result should be '_test' "
		rule: #validIdentifier.