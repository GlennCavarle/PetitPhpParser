as yet unclassified
testMethodCallFlatWithParameters
	self 
		parse: 'someMethod($varit, "string", true)'
		rule: #methodCall.
