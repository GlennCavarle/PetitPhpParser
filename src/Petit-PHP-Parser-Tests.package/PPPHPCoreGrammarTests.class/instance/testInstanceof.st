grammar-keywords
testInstanceof
	self 
		parse: 'instanceof' "result should be 'instanceof' "
		rule: #instanceof.

	self 
		parse: 'InstanceOf ' "result should be 'InstanceOf' "
		rule: #instanceof.