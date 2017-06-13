as yet unclassified
testAnnotationWithParametersMixed
	| original |
	original := '@Orm\Assert(type="integer", range={"min"=0,"max"=10}, true, {1, 4, 6})'.
	
	super testAnnotationWithParametersMixed.
	
	self assert: result fullyQualifiedTypeName = 'Orm\Assert'.
	self assert: result parameters size = 4.
	self assert: result parameters first nodeName = 'type'.
	self assert: result parameters first attributeValue second = 'integer'.
	self assert: result parameters second nodeName = 'range'.
	self assert: result parameters third nodeName = 3.
	self assert: result parameters third attributeValue equals: 'true'.
	self assert: result parameters fourth nodeName = 4.
	self assert: result parameters fourth attributeValue isArray.