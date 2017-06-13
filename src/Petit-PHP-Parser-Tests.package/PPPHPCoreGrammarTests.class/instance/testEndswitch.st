grammar-keywords
testEndswitch
	self 
		parse: 'endswitch' "result should be 'endswitch' "
		rule: #endswitch.

	self 
		parse: 'endSWitch ' "result should be 'endSWitch' "
		rule: #endswitch.