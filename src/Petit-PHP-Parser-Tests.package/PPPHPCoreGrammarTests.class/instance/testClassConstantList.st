grammar-keywords
testClassConstantList
	self
		parse: 'const ALPHANUM = "/[a-zA-Z0-9]*/", EMAIL = 1, SOMESTUFF = 3'
		rule: #classConstant.