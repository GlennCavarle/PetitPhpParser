grammar-control-structures
testDeclareStatementWithoutBody
	self
		parse: 'declare(ticks=1);'
		rule: #declareStatement.