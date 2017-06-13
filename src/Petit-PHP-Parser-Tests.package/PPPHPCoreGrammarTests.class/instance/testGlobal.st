grammar-keywords
testGlobal
	self 
		parse: 'global' "result should be 'global' "
		rule: #global.

	self 
		parse: 'GlobaL ' "result should be 'GlobaL' "
		rule: #global.