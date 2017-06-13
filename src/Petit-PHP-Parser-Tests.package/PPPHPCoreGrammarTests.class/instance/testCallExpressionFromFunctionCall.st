grammar-expressions
testCallExpressionFromFunctionCall
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: 'aFunction()->callFunc()'
		rule: #expression.
