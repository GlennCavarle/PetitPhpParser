grammar-statements
testClassDeclarationFails
	self
		fail: 'class 4Test {}'
		rule: #classDeclaration.
	self
		fail: 'class \ '
		rule: #classDeclaration.