as yet unclassified
testInstanceVariableWithDefaultArray
	self
		parse: 'static public $valid = array(
			"one"=>1,
			"two=>2"
		)'
		rule: #classProperty.