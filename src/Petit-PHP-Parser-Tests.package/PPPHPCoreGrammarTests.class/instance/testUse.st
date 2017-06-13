grammar-keywords
testUse
	self 
		parse: 'use' "result should be 'use' "
		rule: #use.

	self 
		parse: ' Use ' "result should be ' Use ' "
		rule: #use.