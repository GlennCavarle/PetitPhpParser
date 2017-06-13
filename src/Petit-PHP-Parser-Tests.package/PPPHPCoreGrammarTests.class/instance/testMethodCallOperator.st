as yet unclassified
testMethodCallOperator
	self 
		parse: '->'
		rule: #methodCallOperator.
	self
		fail:'-->'
		rule: #methodCallOperator.