grammar-keywords
testThrow
	self 
		parse: 'throw' "result should be 'throw' "
		rule: #throw.

	self 
		parse: 'thrOW ' "result should be 'thrOW' "
		rule: #throw.