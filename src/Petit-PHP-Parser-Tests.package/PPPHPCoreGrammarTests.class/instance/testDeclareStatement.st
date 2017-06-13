grammar-control-structures
testDeclareStatement
	self
		parse: 'declare(ticks=1){ }'
		rule: #declareStatement.