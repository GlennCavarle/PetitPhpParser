tests
testVariable
	self parse: '$myVar' rule: #variable.
	self parse: '$myVar->baz' rule: #variable.
	self parse: '$myVar->bar->foo' rule: #variable.
	self parse: 'MyClass::$myVar' rule: #variable.
	self parse: 'MyClass::$myVar->bar->foo' rule: #variable.
	self fail: '$myClass::$myVar' rule: #variable.
	