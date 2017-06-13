grammar-statements
testClassDeclarationWithNamespacedInterface

	self
		parse: 'class Test implements \Serializable { }'
		rule: #classDeclaration