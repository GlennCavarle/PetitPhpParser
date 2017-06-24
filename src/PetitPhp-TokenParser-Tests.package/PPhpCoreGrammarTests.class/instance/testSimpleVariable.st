tests
testSimpleVariable
	self parse: '$myVar' rule: #simple_variable.
	self parse: '$$myVar' rule: #simple_variable