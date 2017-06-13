grammar-statements
testClassDeclarationWithSuperclassAndInterfaces
	self
		parse: 'class Test extends Supertest implements Superinterface { }'
		rule: #classDeclaration.
