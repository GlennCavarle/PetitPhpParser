grammar-expressions
testStaticPropertyAccessFromFullyqualifiedClass
	"possibilities of calling functions, methods, variables, arrays and combinations"

	self 
		parse: 'fully\Qualified\ClassName\Name::aConstant'
		rule: #expression.