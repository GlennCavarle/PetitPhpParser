as yet unclassified
testMethodHeaderWithModifiers
	""
	self
		parse: 'public function testFunction()'
		rule: #methodHeader.
	self
		parse: 'protected static function testFunction()'
		rule: #methodHeader.