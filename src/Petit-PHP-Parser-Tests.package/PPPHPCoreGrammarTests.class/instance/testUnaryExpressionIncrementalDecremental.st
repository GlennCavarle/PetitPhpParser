as yet unclassified
testUnaryExpressionIncrementalDecremental
	self 
		parse: '++$a'
		rule: #expression.
	self 
		parse: '++ $a'
		rule: #expression.
	self 
		parse: '-- $a'
		rule: #expression.
	self 
		parse: '$a--'
		rule: #expression.