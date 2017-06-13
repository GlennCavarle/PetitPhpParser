grammar-statements
testClassDeclarationNamespacedWithNamespacedInterface

	self
		parse: 'class Test implements \ArrayAccess { }'
		rule: #classDeclaration.
