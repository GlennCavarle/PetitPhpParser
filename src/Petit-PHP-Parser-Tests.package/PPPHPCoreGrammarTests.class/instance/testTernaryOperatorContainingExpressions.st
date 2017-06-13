doctrine2
testTernaryOperatorContainingExpressions
	self
		parse: '(null === $value) ? null : (double) $value'
		rule: #expression.