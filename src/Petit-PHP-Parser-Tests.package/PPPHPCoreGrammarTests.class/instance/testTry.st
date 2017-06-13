grammar-keywords
testTry
	self 
		parse: 'try' "result should be 'try' "
		rule: #try.

	self 
		parse: 'TRY ' "result should be 'TRY' "
		rule: #try.