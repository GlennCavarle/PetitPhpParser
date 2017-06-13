tests-factory-method
testFlattenNamespace
	|testStack res |
	testStack := PPPHPNamespaceStack createFromToken: tokenAbsoluteNamespace.
	res:= testStack flattenNamespace.
	self assert: res equals: '\myspace\myclass'.