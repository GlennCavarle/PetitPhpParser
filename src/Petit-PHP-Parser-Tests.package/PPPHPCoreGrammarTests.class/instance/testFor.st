grammar-keywords
testFor
	self 
		parse: 'for' "result should be 'for' "
		rule: #for.

	self 
		parse: 'foR ' "result should be 'foR' "
		rule: #for.