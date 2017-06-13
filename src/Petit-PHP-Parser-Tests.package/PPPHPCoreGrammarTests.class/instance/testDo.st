grammar-keywords
testDo
	self 
		parse: 'do' "result should be 'do' "
		rule: #do.

	self 
		parse: 'Do  ' "result should be 'Do' "
		rule: #do.