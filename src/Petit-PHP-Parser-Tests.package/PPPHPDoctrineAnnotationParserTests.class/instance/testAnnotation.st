as yet unclassified
testAnnotation
	super testAnnotation.
	
	self assert: result fullyQualifiedTypeName = 'Orm\Assert'.
	self assert: result hasParameters not.