grammar-keywords
testVar
	self 
		parse: 'var' "result should be 'var' "
		rule: #var.

	self 
		parse: ' vAr ' "result should be ' vAr ' "
		rule: #var.