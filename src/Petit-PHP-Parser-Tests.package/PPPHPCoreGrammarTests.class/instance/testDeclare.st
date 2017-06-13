grammar-keywords
testDeclare
	self 
		parse: 'declare' "result should be 'declare' "
		rule: #declare.

	self 
		parse: 'deCLare  ' "result should be 'deCLare' "
		rule: #declare.