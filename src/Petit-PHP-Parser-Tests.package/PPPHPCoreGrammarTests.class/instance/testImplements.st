grammar-keywords
testImplements
	self 
		parse: 'implements' "result should be 'implements' "
		rule: #implements.

	self 
		parse: 'IMPLEMENTs' "result should be 'IMPLEMENTs' "
		rule: #implements.