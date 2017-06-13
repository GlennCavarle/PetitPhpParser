grammar-keywords
testWhile
	self 
		parse: 'while' "result should be 'while' "
		rule: #while.

	self 
		parse: ' wHIle ' "result should be ' wHIle ' "
		rule: #while.