grammar-expressions
testCallExpressionMethodFromObjectWithCurlyBraketId
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: '$obj->{"methodName"}()'
		rule: #expression.

	