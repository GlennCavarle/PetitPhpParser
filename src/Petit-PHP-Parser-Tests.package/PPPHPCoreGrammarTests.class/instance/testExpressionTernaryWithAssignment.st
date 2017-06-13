grammar-expressions
testExpressionTernaryWithAssignment
	"Test a ternary operator."
	self
		parse: '$biggerThan = ($variable > 3) ? true : false' "classic code smell!"
		rule: #expression .