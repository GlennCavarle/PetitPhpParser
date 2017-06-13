as yet unclassified
testMethodDefinitionAbstractProtected
	super testMethodDefinitionAbstractProtected.
	
	self assert: (result isMemberOf: PPPHPMethodNode).
	self assert: (result nodeName  = 'testFunction').
	self assert: (result isAbstract).
	self assert: (result scope isMemberOf: PPPHPScopeNode).
	self assert: (result scope scope = 'protected').	