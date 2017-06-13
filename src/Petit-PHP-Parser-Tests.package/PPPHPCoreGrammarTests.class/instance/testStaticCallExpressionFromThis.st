grammar-expressions
testStaticCallExpressionFromThis
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: '$this::staticMethod()'
		rule: #expression.