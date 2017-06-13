as yet unclassified
testAccessibilityPublic
	super testAccessibilityPublic.
	
	self assert: (result isMemberOf: PPPHPScopeNode).
	self assert: result scope equals: 'public'.