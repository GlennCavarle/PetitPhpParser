grammar-statements
testClassDeclaration
	super testClassDeclaration.
	
	self assert: (result isMemberOf: PPPHPClassNode).
	self assert: result nodeName equals: 'Test'.