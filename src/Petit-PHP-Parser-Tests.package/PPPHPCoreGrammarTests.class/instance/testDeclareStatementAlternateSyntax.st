grammar-control-structures
testDeclareStatementAlternateSyntax
	self
		parse: 'declare(ticks=1):
			doStuff();
		enddeclare;'
		rule: #declareStatement.