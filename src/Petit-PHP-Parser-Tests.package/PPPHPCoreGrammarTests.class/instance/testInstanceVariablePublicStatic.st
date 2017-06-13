as yet unclassified
testInstanceVariablePublicStatic
	self
		parse: 'public static $valid'
		rule: #classProperty.
	self
		parse: 'static public $valid'
		rule: #classProperty.