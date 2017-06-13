as yet unclassified
testAccessibilityProtected
	super testAccessibilityProtected.
	
	self assert: (result isMemberOf: PPPHPScopeNode).
	self assert: result scope equals: 'protected'.