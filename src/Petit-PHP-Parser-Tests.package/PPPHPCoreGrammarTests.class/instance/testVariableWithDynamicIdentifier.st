as yet unclassified
testVariableWithDynamicIdentifier
	self
		parse: '${"valid"}'
		rule: #variable.
	self
		parse: '${$valid}'
		rule: #variable.