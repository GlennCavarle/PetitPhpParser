as yet unclassified
testInstanceVariableProtectedStatic
	self
		parse: 'protected static $valid'
		rule: #classProperty.
	self
		parse: 'static protected $valid'
		rule: #classProperty.