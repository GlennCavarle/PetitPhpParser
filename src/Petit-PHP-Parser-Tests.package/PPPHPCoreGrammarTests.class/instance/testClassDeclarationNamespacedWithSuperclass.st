grammar-statements
testClassDeclarationNamespacedWithSuperclass
	self
		parse: 'class Test extends Supertest { }'
		rule: #classDeclaration.