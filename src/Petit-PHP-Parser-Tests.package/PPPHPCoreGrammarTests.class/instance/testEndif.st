grammar-keywords
testEndif
	self 
		parse: 'endif' "result should be 'endif' "
		rule: #endif.

	self 
		parse: 'ENDif ' "result should be 'ENDif' "
		rule: #endif.