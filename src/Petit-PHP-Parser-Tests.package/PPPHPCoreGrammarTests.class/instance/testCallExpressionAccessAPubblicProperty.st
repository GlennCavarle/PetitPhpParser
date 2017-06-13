grammar-expressions
testCallExpressionAccessAPubblicProperty
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: '$obj->aPublicProperty'
		rule: #expression.
