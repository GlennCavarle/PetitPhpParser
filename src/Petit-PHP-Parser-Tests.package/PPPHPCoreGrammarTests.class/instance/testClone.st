grammar-keywords
testClone
	self 
		parse: 'clone' "result should be 'clone' "
		rule: #clone.

	self 
		parse: 'CLone ' "result should be 'CLone' "
		rule: #clone.