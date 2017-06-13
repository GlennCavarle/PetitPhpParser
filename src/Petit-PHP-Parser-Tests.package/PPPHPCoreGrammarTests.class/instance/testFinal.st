grammar-keywords
testFinal
	self 
		parse: 'final' "result should be 'final' "
		rule: #final.

	self 
		parse: 'FiNaL ' "result should be 'FiNaL' "
		rule: #final.