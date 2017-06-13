grammar-keywords
testGoto
	self 
		parse: 'goto' "result should be 'goto' "
		rule: #goto.

	self 
		parse: 'goTO ' "result should be 'goTO' "
		rule: #goto.