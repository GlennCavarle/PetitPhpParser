as yet unclassified
testMethodCallWithCurlyBrakets

	self
		parse:'{"someMethod"}($someexpression)'
		rule: #methodCall.
