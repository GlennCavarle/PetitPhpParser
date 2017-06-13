as yet unclassified
testVariableFailures
	self
		fail: '$1valid'
		rule: #variable.
	self
		fail: 'valid'
		rule: #variable.
	self
		fail: 'v$validalid'
		rule: #variable.