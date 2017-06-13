as yet unclassified
testMethodHeaderWithModifiersAndParametersWithTypeHints
	""
	self
		parse: 'public function testFunction(some\logger $one, $param=false)'
		rule: #methodHeader.