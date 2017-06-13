as yet unclassified
testMethodHeaderWithSimpleReferencedParameterAndDefault
	""
	self
		parse: 'public function testFunction(&$value = '''')'
		rule: #methodHeader.