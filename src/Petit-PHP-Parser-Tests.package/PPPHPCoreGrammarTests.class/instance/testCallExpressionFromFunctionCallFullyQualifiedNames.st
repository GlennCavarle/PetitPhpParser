grammar-expressions
testCallExpressionFromFunctionCallFullyQualifiedNames
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: 'vendor\Component\functionName()->aProperty'
		rule: #expression.