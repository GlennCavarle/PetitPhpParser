grammar-keywords
testSwitch
	self 
		parse: 'switch' "result should be 'switch' "
		rule: #switch.

	self 
		parse: 'sWItch ' "result should be 'sWItch' "
		rule: #switch.