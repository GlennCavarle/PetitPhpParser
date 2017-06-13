as yet unclassified
testMethodHeaderWithSimpleReferencedParameter
	""
	self
		parse: 'public function testFunction(&$value)'
		rule: #methodHeader.