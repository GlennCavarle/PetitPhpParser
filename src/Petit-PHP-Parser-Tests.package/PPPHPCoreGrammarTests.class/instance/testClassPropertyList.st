grammar-model-examples
testClassPropertyList
	self 
		parse: 'public $john, $prop = true, $something = 2'
		rule: #classProperty.