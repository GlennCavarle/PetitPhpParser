grammar-expressions
testCallExpressionFromArray
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: '$anarray[2]->callFunc()'
		rule: #expression.
