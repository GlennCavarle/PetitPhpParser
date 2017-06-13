grammar-expressions
testExpressionWithLanguageConstructs
	""
	self
		parse: '$this->_connection OR die()'
		rule: #expression.