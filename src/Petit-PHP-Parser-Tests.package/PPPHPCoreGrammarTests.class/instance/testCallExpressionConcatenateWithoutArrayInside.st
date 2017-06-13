grammar-expressions
testCallExpressionConcatenateWithoutArrayInside
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: '$this->acessesAProperty->withPublicArrayObject->withAcallableObjectMethod()'
		rule: #expression.
