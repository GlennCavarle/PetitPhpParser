grammar-expressions
testExpression
	"This is gonna be huge!!!"
	self
		parse: '$name = "john"'
		rule: #expression.
	self
		parse: '$name = new SomeClass'
		rule: #expression.
	self
		parse: '"john"=> name'
		rule: #expression.