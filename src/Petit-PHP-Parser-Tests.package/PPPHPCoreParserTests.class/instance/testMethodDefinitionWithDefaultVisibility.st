grammar-statements
testMethodDefinitionWithDefaultVisibility
	| param |
	super testMethodDefinitionWithDefaultVisibility.
	
	self assert: (result isMemberOf: PPPHPMethodNode).
	self assert: result isAbstract not.
	self assert: result isStatic not.
	self assert: result scope isDefault.
	self assert: (result nodeName = 'testMethod').