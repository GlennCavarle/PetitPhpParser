grammar-statements
testClassDeclarationComplex
	super testClassDeclarationComplex.
	
	self assert: (result isMemberOf: PPPHPClassNode).
	self assert: result nodeName equals: 'Role'.