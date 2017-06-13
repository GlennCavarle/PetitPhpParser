grammar-keywords
testProtected
	self 
		parse: 'protected' "result should be 'protected' "
		rule: #protected.

	self 
		parse: ' proteCTEd' "result should be 'proteCTEd' "
		rule: #protected.