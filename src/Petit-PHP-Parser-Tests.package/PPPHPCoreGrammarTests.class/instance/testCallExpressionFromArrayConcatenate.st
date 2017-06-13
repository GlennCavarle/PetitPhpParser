grammar-expressions
testCallExpressionFromArrayConcatenate
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: '$anarray[2]->anotherArray[3]->aMethod()'
		rule: #expression.