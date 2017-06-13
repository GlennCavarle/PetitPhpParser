grammar-statements
testClassDeclarationWithMultipleInterfaces
	self
		parse: 'class Test implements Testinterface, \ArrayAccess, \vendor\component\subtype\intfa { }'
		rule: #classDeclaration.