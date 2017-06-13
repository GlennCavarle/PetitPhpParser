as yet unclassified
testInstanceVariablePrivateStatic
	self
		parse: 'private static $valid'
		rule: #classProperty.
	self
		parse: 'static private $valid'
		rule: #classProperty.