grammar-statements
testClassDeclarationWithSuperclassAndInterfacesComplex

	self
		parse: 'class Test 
					extends \ArrayObject 
					implements InterfaceOne, \RootInterface, relative\namespaced\Interfacerel 
					{ }'
		rule: #classDeclaration.