as yet unclassified
testMethodHeaderWithModifiersAndParameters
	""
	self
		parse: 'public function testFunction($one, $param=false)'
		rule: #methodHeader.