grammar-keywords
testDefault
	self 
		parse: 'default' "result should be 'default' "
		rule: #default.

	self 
		parse: 'DEFaUlt  ' "result should be 'DEFaUlt' "
		rule: #default.