grammar-expressions
testCallExpressionSimpleWithArray
	"possibilities of calling functions, methods, variables, arrays and combinations"
	self
		parse: '$simpleArrayAccess[functionThatCallsTheIndex()]'
		rule: #expression.