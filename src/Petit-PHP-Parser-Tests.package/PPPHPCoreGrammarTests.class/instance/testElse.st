grammar-keywords
testElse
	self 
		parse: 'else' "result should be 'else' "
		rule: #else.

	self 
		parse: '  ELSe ' "result should be 'ELSe' "
		rule: #else.