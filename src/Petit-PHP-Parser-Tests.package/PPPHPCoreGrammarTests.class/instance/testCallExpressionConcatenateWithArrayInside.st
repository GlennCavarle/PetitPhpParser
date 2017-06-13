grammar-expressions
testCallExpressionConcatenateWithArrayInside
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: '$this->acessesAProperty->withPublicArrayObject[1]->withAcallableObjectMethod()'
		rule: #expression.
