grammar-keywords
testConst
	self 
		parse: 'const' "result should be 'const' "
		rule: #const.

	self 
		parse: 'coNSt ' "result should be 'coNSt' "
		rule: #const.