grammar-expressions
testExpressionComparisonEqualsNotStrict
	"This is gonna be huge!!!"
	self
		parse: '$boolean !== true'
		rule: #expression.