grammar-keywords
testCatch
	self 
		parse: 'catch' "result should be 'catch' "
		rule: #catch.

	self 
		parse: 'catCH  ' "result should be 'catCH' "
		rule: #catch.