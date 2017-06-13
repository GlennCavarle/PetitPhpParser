grammar-keywords
testExtends
	self 
		parse: 'extends' "result should be 'extends' "
		rule: #extends.

	self 
		parse: 'EXTends ' "result should be 'EXTends' "
		rule: #extends.