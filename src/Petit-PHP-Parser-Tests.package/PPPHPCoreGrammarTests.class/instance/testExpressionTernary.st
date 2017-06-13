grammar-expressions
testExpressionTernary
	"Test a ternary operator."
	self
		parse: '($variable == 3) ? true : false'
		rule: #expression .