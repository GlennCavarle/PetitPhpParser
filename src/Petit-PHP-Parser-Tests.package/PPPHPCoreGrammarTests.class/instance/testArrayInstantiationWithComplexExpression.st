grammar-array
testArrayInstantiationWithComplexExpression
	self
		parse: 'array(function(){})'
		rule: #arrayInstantiation.
	self
		parse: 'array("one"=>function(){})'
		rule: #arrayInstantiation.