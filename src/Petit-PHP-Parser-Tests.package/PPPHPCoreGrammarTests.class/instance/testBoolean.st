grammar-literals
testBoolean
	""
	self 
		parse: 'true' "result should be true"
		rule: #boolean.
	self 
		parse: 'FALSE' "result should be False"
		rule: #boolean.