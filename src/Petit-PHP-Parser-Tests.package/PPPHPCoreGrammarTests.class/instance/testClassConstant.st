grammar-keywords
testClassConstant
	self 
		parse: 'const ONE = 1'
		rule: #classConstant.
		
	self 
		parse: 'const TWO = "deux"'
		rule: #classConstant.
	
	self 
		parse: 'const _TWO = "deux"'
		rule: #classConstant.