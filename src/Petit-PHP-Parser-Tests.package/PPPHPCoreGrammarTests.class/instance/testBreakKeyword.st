grammar-keywords
testBreakKeyword
	self 
		parse: 'break' "result should be 'break' "
		rule: #breakKeyword.

	self 
		parse: 'bREAK ' "result should be 'bREAK' "
		rule: #breakKeyword.