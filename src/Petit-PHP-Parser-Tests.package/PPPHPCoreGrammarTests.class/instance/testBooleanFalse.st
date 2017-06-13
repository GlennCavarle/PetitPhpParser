grammar-literals
testBooleanFalse
	""
	self 
		parse: 'false' "result should be false"
		rule: #booleanFalse.
	self 
		parse: 'FALSE' "result should be FALSE"
		rule: #booleanFalse.
	self 
		parse: 'FAlse ' "result should be FAlse"
		rule: #booleanFalse.