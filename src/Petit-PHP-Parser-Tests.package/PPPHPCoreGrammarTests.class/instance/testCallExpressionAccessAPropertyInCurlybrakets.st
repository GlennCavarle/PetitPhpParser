grammar-expressions
testCallExpressionAccessAPropertyInCurlybrakets
	"possibilities of calling functions, methods, variables, arrays and combinations"

	self
		parse: '$obj->{"propertyName"}'
		rule: #expression.
	