grammar-statements
testClassDeclarationWithSuperclass
	self
		parse: 'class Test extends Supertest { }'
		rule: #classDeclaration.
