tests
testNewVariable
	self parse: '$myVar[]' rule: #new_variable.
	self parse: '$$myVar[][]' rule: #new_variable