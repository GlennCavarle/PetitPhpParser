grammar-statements
testClassDeclarationWithMultipleNamespacesAndSuperclass
	
	self
		parse: 'class Test extends ArrayObject {}'
		rule: #classDeclaration.
