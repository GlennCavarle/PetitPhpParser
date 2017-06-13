as yet unclassified
testAccessibilityPrivate
	super testAccessibilityPrivate.
	
	self assert: (result isMemberOf: PPPHPScopeNode).
	self assert: result scope equals: 'private'.