grammar-array
testArrayInstantiationExpression
	"non empty instantiation"
	self
		parse: 'array(new SimpleDebugger(), new SimpleLogger())'
		rule: #expression.