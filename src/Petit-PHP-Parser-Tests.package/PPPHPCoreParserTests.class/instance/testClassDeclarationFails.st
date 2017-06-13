grammar-statements
testClassDeclarationFails
	super testClassDeclarationFails.
	
	self assert: (result isMemberOf: PPFailure).